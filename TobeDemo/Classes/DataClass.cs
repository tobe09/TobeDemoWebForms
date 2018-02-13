using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OracleClient;
using System.Data;
using System.Configuration;

namespace TobeDemo
{
    public class DataClass
    {

        public static DataTable table(string query)
        {
            DataTable dt = new DataTable();
            string dataSource = ConfigurationManager.ConnectionStrings["TobedemoConnectionString"].ConnectionString;
            using (OracleConnection con = new OracleConnection(dataSource))
            {
                con.Open();
                OracleDataAdapter da = new OracleDataAdapter(query, con);
                da.Fill(dt);
            }
            return dt; 
        }
    }
}