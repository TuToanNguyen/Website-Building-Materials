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

public partial class Manages_QuanLyBaiViet : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    string connectionString = @"Server=Nicolaipc;Database=BuildingMaterials1;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] != null)
        {
            var d = from i in db.News
                    orderby i.NewID descending
                    select i;
            grvTin.DataSource = d;
            grvTin.DataBind();

            if (Request.Cookies["Login"] != null && Request.Cookies["Login"]["Quyen"].ToLower() == "admin")
            {
                trangthai.Visible = true;
            }
            else
            {
                trangthai.Visible = false;
            }
        }

    }

    private void LoadData()
    {
        SqlConnection sqlConn = new SqlConnection(connectionString);
        sqlConn.Open();
        DataTable dataTable = new DataTable();
        SqlDataAdapter adapter = new SqlDataAdapter(@"SELECT [NewID]
      ,[NewCode]
      ,[Title]
      ,[SubTitle]
      ,[Detail]
      ,[Image]
      ,[KeyWord]
      ,[CreateDate]
      ,[TotalView]
      ,[IsPost]
      ,[PostDate]
      ,[Author]
      ,[Account]
  FROM [dbo].[News]", sqlConn);
        adapter.Fill(dataTable);
        grvTin.DataSource = dataTable;
        grvTin.DataBind();
    }

    private void LoadData(string ten)
    {
        string text = @"SELECT [NewID]
      ,[NewCode]
      ,[Title]
      ,[SubTitle]
      ,[Detail]
      ,[Image]
      ,[KeyWord]
      ,[CreateDate]
      ,[TotalView]
      ,[IsPost]
      ,[PostDate]
      ,[Author]
      ,[Account]
  FROM[dbo].[News] WHERE [Title] LIKE N'%" + ten + "%'";
        SqlConnection conn = new SqlConnection(this.connectionString);
        SqlCommand command = new SqlCommand(text, conn);
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(command);
        DataTable dataTable = new DataTable();
        da.Fill(dataTable);
        grvTin.DataSource = dataTable;
        grvTin.DataBind();
        conn.Close();
    }
    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtTimKiem.Text))
        {
            lbthongbao.ForeColor = System.Drawing.Color.Red;
            lbthongbao.Text = "Nhập [Tên bài viết] cần tìm";
        }
        else
        {
            lbthongbao.Text = "";
            LoadData(txtTimKiem.Text.Trim());
        }
    }
    protected void grvTin_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "btnSua")
        {
            Response.Redirect(@"SuaBaiViet.aspx?Newid=" + grvTin.Rows[int.Parse(e.CommandArgument.ToString())].Cells[2].Text + "");
        }
        if (e.CommandName == "btnXoa")
        {
            New n = db.News.SingleOrDefault(s => s.NewID == long.Parse(grvTin.Rows[int.Parse(e.CommandArgument.ToString())].Cells[2].Text.ToString()));
            db.News.DeleteOnSubmit(n);
            db.SubmitChanges();
            Response.Redirect(@"QuanLyBaiViet.aspx");

        }
    }

    protected void grvTin_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvTin.PageIndex = e.NewPageIndex;
        grvTin.DataBind();
    }
}
