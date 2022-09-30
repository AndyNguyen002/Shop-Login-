using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Cỏngat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void bThem_Click(object sender, EventArgs e)
        {
            
            SqlDataSource1.Insert();
            tbID.Text = "";
            tbTenDt.Text = "";
            tbGiaBan.Text = "";
            tbGiaNhap.Text = "";

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            tbID.Text = GridView1.SelectedRow.Cells[0].Text;
            tbTenDt.Text = GridView1.SelectedRow.Cells[1].Text;
            tbGiaNhap.Text = GridView1.SelectedRow.Cells[2].Text;
            tbGiaBan.Text = GridView1.SelectedRow.Cells[3].Text;

        }

        protected void bHuy_Click(object sender, EventArgs e)
        {
            tbID.Text = "";
            tbTenDt.Text = "";
            tbGiaBan.Text = "";
            tbGiaNhap.Text = "";
        }
        bool Validate()
        {
            if (tbID.Text == "")
            {
                return false;
            }
            else return true;
        }
    }
}