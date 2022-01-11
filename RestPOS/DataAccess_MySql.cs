using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.Common;

using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using Npgsql;

namespace RestPOS
{
    class DataAccess
    {
        private static string Host = "localhost";
        private static string User = "postgres";
        private static string DBname = "restpos";
        private static string Password = "123456fd";
        private static string Port = "5432";
        ////// Use for// Use for RestPOS.exe.config file file  -- you can change Database server info after compile/Debug 
        // static string _ConnectionString =  RestPOS.Properties.Settings.Default.RestPOSMysqlConnectionString;

        //This is Mysql Database Access  class -- leave empty if your Mysal does not has PASSWORD
        static string _ConnectionString = "server=localhost;database=restpos;userid=root";//password=1234";

     /* static  string _connString =
                String.Format(
                    "Server={0};Username={1};Database={2};Port={3};Password={4};SSLMode=Prefer",
                    Host,
                    User,
                    DBname,
                    Port,
                    Password);*/

     // static string _ConnectionString = "server=169.254.87.27; database=restpos; uid=zonalink; PASSWORD=z0n4l1nk"; // PASSWORD=1234
    ////////static string _ConnectionString = "server=localhost;userid=root;database=restpos;userid=root;password=1234";
   //////////MySqlConnection con = new MySqlConnection(@"server=localhost;userid=root;database=gestockbd; "); ALTERADO HOJE DIA 


        // Connection String for  SQlite Edition
        //static string _ConnectionString = @"Data Source=RestPOS.db;Version=3;New=False;Compress=True";
        //Data Source=DemoT.db;Version=3;New=False;Compress=True;


        static MySqlConnection _Connection = null;
        public static MySqlConnection Connection
        {
            get
            {
                if (_Connection == null)
                {
                    _Connection = new MySqlConnection(_ConnectionString);
                    _Connection.Open();

                    return _Connection;
                }
                else if (_Connection.State != System.Data.ConnectionState.Open)
                {
                    _Connection.Open();

                    return _Connection;
                }
                else
                {
                    return _Connection;
                }
            }
        }

        public static DataSet GetDataSet(string sql)
        {
            MySqlCommand cmd = new MySqlCommand(sql, Connection);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            adp.Fill(ds);
            Connection.Close();

            return ds;
        }

        public static DataTable GetDataTable(string sql)
        {
            Console.WriteLine(sql);
            DataSet ds = GetDataSet(sql);

            if (ds.Tables.Count > 0)
                return ds.Tables[0];
            return null;
        }

        public static int ExecuteSQL(string sql)
        {
            MySqlCommand cmd = new MySqlCommand(sql, Connection);
            return cmd.ExecuteNonQuery();
        }
    }

}
