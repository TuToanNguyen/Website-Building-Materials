using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DBConnect
/// </summary>
public class DBConnect
{
   public static string DatabaseConnectionString = @"Data Source=NICOLAIPC;Initial Catalog=BuildingMaterials1;Persist Security Info=True;User ID=sa;Password=system";


    public static void SqlExecute(string sql)
    {
        using (SqlConnection conn = new SqlConnection(DatabaseConnectionString))
        {
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
        }
    }

    public static object SqlReturn(string sql)
    {
        using (SqlConnection conn = new SqlConnection(DatabaseConnectionString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            object result = (object)cmd.ExecuteScalar();
            return result;
        }
    }

    public static DataTable SqlDataTable(string sql)
    {
        using (SqlConnection conn = new SqlConnection(DatabaseConnectionString))
        {
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Connection.Open();
            DataTable TempTable = new DataTable();
            TempTable.Load(cmd.ExecuteReader());
            return TempTable;
        }

    }
}