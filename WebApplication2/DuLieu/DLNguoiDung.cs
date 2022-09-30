using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication2.Model;

namespace WebApplication2.DuLieu
{
    public class DLNguoiDung
    {
        public static List<NguoiDung> getAll()
        {
            List<NguoiDung> lstND = new List<NguoiDung>();
            //ket noi
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //sql truy van
            string sql = "select TaiKhoan, MatKhau from NguoiDung";
            //dinh nghia doi tuong connection
            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                // mo ket noi
                conn.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                NguoiDung objND = null;
                while (sqlDataReader.Read())
                {
                    objND = new NguoiDung();
                    objND.TaiKhoan = Convert.ToString(sqlDataReader["TaiKhoan"]);
                    objND.MatKhau = Convert.ToString(sqlDataReader["MatKhau"]);
                    lstND.Add(objND);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }  
        }
    }
}