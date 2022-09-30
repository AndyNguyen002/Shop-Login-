using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Model;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bDangNhap_Click(object sender, EventArgs e)
        {
            if (validate())
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-QBL4OR3;Initial Catalog=Shop;Persist Security Info=True;User ID=sa;Password=123456");
                SqlCommand sqlCmd = new SqlCommand("select TaiKhoan, MatKhau From NguoiDung where TaiKhoan = @taikhoan and MatKhau = @matkhau", conn);
                sqlCmd.Parameters.AddWithValue("@taikhoan", tbTaiKhoan.Text);
                sqlCmd.Parameters.AddWithValue("@matkhau", tbMatKhau.Text);

                conn.Open();

                SqlDataReader dr = sqlCmd.ExecuteReader();

                if (dr.HasRows)
                {
                    Response.Redirect("congrat.aspx");
                }
                else
                {
                    check.Text = "Tài khoản hoặc mật khẩu không đúng!";
                }

                conn.Close();
            }
        }

        bool validate()
        {
            bool result = false;


            if (tbTaiKhoan.Text== "" || tbMatKhau.Text == "")
            {
               result = false;
                check.Text = "Tài khoản và mật khẩu không được để trống!";
    
            } else
            {
                check.Text = "";
                result = true;
            }
            return result;
        }
    }
}