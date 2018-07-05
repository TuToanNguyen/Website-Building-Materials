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

public partial class _Default : System.Web.UI.Page
{
    static int CurrentPage;
    DataClassesDataContext db = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        //sản phẩm chạy
        var c = from d in db.Products
                select d;
        spchay.DataSource = c.Take(10);
        spchay.DataBind();

        ////danh sách sản phẩm
        //var v = from d in db.Products
        //        select d;
        //DataList1.DataSource = v.Take(12);
        //DataList1.DataBind();

        PagedDataSource objPage = new PagedDataSource();
        try
        {

            DataTable dt = new DataTable();
            //    SqlConnection connect = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Tong hop LTWEB DEMO\\Gio_Hang\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
            string select = "select * from Products order by ProductID desc";
            SqlDataAdapter adapter = new SqlDataAdapter(select, DBConnect.DatabaseConnectionString);
            adapter.Fill(dt);
            objPage.DataSource = dt.DefaultView;
            objPage.AllowPaging = true;
            objPage.PageSize = 12;
            objPage.CurrentPageIndex = CurrentPage;
            btnSau.Enabled = !objPage.IsLastPage;
            btnTruoc.Enabled = !objPage.IsFirstPage;

            lbtrang.Text = (CurrentPage + 1) + " / " + objPage.PageCount;

            DataList1.DataSource = objPage;
            DataList1.DataBind();
        }
        catch (Exception)
        {
        }
        finally
        {
            objPage = null;
        }
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        ImageButton imb = (ImageButton)e.Item.FindControl("btnMuaHang");
        Label lb = (Label)e.Item.FindControl("lbMa");
        imb.PostBackUrl = "~/MuaHang.aspx?MaHang=" + lb.Text + "";
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btntruoc_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        Page_Load(sender, e);
    }

    protected void btnSau_Click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        Page_Load(sender, e);
    }
}
