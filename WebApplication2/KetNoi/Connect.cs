using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication2.KetNoi
{
    public class Connect
    {
        public class SqlConnect
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-QBL4OR3;Initial Catalog=Shop;User ID=sa;Password=123456; ");
        }


    }
}