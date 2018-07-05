//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Manages_QuanLySanPham : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    string connectionString = @"Server=Nicolaipc;Database=BuildingMaterials1;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        //var d = from i in db.Products
        //        select i;
        //GridView1.DataSource = d;
        //GridView1.DataBind();
    }

  //  private void LoadData()
  //  {
  //      SqlConnection sqlConn = new SqlConnection(connectionString);
  //      sqlConn.Open();
  //      DataTable dataTable = new DataTable();
  //      SqlDataAdapter adapter = new SqlDataAdapter(@"SELECT [ProductID]
  //    ,[ProductCode]
  //    ,[Title]
  //    ,[Number]
  //    ,[SubTitle]
  //    ,[Detail]
  //    ,[SmallProductCategoryID]
  //    ,[Production]
  //    ,[SuppliersID]
  //    ,[Money]
  //    ,[Image]
  //    ,[IsDisplay]
  //    ,[TotalView]
  //    ,[CreateDate]
  //    ,[ModifyDate]
  //    ,[Origin]
  //    ,[Maker]
  //    ,[Goods]
  //    ,[Color]
  //    ,[Features]
  //    ,[Note]
  //FROM [dbo].[Products]", sqlConn);
  //      adapter.Fill(dataTable);
  //      GridView1.DataSource = dataTable;
  //      GridView1.DataBind();
  //  }

  //  private void LoadData(string ten)
  //  {
  //      string text = @"SELECT [ProductID]
  //    ,[ProductCode]
  //    ,[Title]
  //    ,[Number]
  //    ,[SubTitle]
  //    ,[Detail]
  //    ,[SmallProductCategoryID]
  //    ,[Production]
  //    ,[SuppliersID]
  //    ,[Money]
  //    ,[Image]
  //    ,[IsDisplay]
  //    ,[TotalView]
  //    ,[CreateDate]
  //    ,[ModifyDate]
  //    ,[Origin]
  //    ,[Maker]
  //    ,[Goods]
  //    ,[Color]
  //    ,[Features]
  //    ,[Note]
  //     FROM [dbo].[Products] WHERE [Title] LIKE N'%" + ten + "%'";
  //      SqlConnection conn = new SqlConnection(this.connectionString);
  //      SqlCommand command = new SqlCommand(text, conn);
  //      conn.Open();
  //      SqlDataAdapter da = new SqlDataAdapter(command);
  //      DataTable dataTable = new DataTable();
  //      da.Fill(dataTable);
  //      GridView1.DataSource = dataTable;
  //      GridView1.DataBind();
  //      conn.Close();
  //  }

    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        //if (string.IsNullOrEmpty(txtTimKiem.Text))
        //{
        //    lbthongbao.ForeColor = System.Drawing.Color.Red;
        //    lbthongbao.Text = "Nhập [Mã sản phẩm] cần tìm";
        //}
        //else
        //{
        //    lbthongbao.Text = "";
        //    LoadData(txtTimKiem.Text.Trim());
        //}
    }
}