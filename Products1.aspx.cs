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

public partial class Products : System.Web.UI.Page
{
    static int CurrentPage;
    DataClassesDataContext db = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        PagedDataSource objPage = new PagedDataSource();
        try
        {

            DataTable dt = new DataTable();
            string select = "select * from Products";
            SqlDataAdapter adapter = new SqlDataAdapter(select, DBConnect.DatabaseConnectionString);
            adapter.Fill(dt);
            objPage.DataSource = dt.DefaultView;
            objPage.AllowPaging = true;
            objPage.PageSize = 12;
            objPage.CurrentPageIndex = CurrentPage;
            btnSau.Enabled = !objPage.IsLastPage;
            btnTruoc.Enabled = !objPage.IsFirstPage;

            lbtrang.Text = (CurrentPage + 1) + " / " + objPage.PageCount;

            dtlProducts.DataSource = objPage;
            dtlProducts.DataBind();            
        }
        catch (Exception)
        {
        }
        finally
        {
            objPage = null;
        }

    }

    protected void dtlProducts_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        ImageButton imb = (ImageButton)e.Item.FindControl("btnMuaHang");
        Label lb = (Label)e.Item.FindControl("lbMa");
        imb.PostBackUrl = "~/MuaHang.aspx?MaHang=" + lb.Text + "";

    }

    protected void dtlProducts_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void dtlProducts_ItemCommand(object source, DataListCommandEventArgs e)
    {

    }

    protected void btnDau_Click(object sender, EventArgs e)
    {
        //trang_thu = 0;
        //Page_Load(sender, e);
    }

    protected void btntruoc_Click(object sender, EventArgs e)
    {
        //trang_thu--;
        CurrentPage -= 1;
        Page_Load(sender, e);
    }
    protected void btnSau_Click(object sender, EventArgs e)
    {
        //trang_thu++;
        CurrentPage += 1;
        Page_Load(sender, e);
    }

    protected void btnCuoi_Click(object sender, EventArgs e)
    {
        //trang_thu = p.PageCount - 1;
        //Page_Load(sender, e);
    }
}
