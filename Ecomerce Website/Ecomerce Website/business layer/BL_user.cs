using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ecomerce_Website
{
    public static class BL_user
    {
        public static int add_user(string name,string email,string user_name,DateTime birth_date,string password,string phone,string address,string photo)
        {
            string query = @"INSERT INTO [dbo].[Users]
           ([email]
           ,[User_name]
           ,[Name]
           ,[birth_date]
           ,[Password]
           ,[phone]
           ,[address]
           ,[photo])
             VALUES(@email,@uname,@name,@bdate,@pwd,@phone,@address,@photo)";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Parameters.AddWithValue("@email",email);
            cmd.Parameters.AddWithValue("@uname",user_name);
            cmd.Parameters.AddWithValue("@name",name);
            cmd.Parameters.AddWithValue("@pwd",password);
            cmd.Parameters.AddWithValue("@phone",phone);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@photo", photo);
            cmd.Parameters.AddWithValue("@bdate", birth_date);
            return DBlayer.DML(cmd);
        }
  
        public static void update_user()
        {
        }
        public static void delete_user(int id)
        {
        }
        public static bool check_login(string user_name, string pwd)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select id from Users where User_name=@uname and Password=@pwd;";
            cmd.Parameters.AddWithValue("@uname", user_name);
            cmd.Parameters.AddWithValue("@pwd", pwd);
            DataTable dt;
            dt = DBlayer.select_query(cmd);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}