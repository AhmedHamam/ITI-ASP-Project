using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Ecomerce_Website
{
    public static class BDlayer
    {
        public static DataTable select(SqlCommand query)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iticon"].ConnectionString);
            SqlCommand cmd = query;
            cmd.Connection = con;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
        }

        public static int DML(SqlCommand command)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iticon"].ConnectionString);
            SqlCommand cmd = command;
            cmd.Connection = con;
            con.Open();
            int roweffect = cmd.ExecuteNonQuery();
            con.Close();
            return roweffect;
        }
    }
}