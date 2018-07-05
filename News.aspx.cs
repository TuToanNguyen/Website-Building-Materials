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

public partial class News : System.Web.UI.Page
{
    static int CurrentPage;
    DataClassesDataContext db = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        //DataClassesDataContext db = new DataClassesDataContext();
        //var v = from d in db.News
        //        select d;
        //rptNews.DataSource = v.Take(6);
        //rptNews.DataBind();

        PagedDataSource objPage = new PagedDataSource();
        try
        {

            DataTable dt = new DataTable();
            //    SqlConnection connect = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Tong hop LTWEB DEMO\\Gio_Hang\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
            string select = "select * from News where IsPost = '"+true+ "' order by NewID desc";
            SqlDataAdapter adapter = new SqlDataAdapter(select, DBConnect.DatabaseConnectionString);
            adapter.Fill(dt);
            objPage.DataSource = dt.DefaultView;
            objPage.AllowPaging = true;
            objPage.PageSize = 5;
            objPage.CurrentPageIndex = CurrentPage;
            btnSau.Enabled = !objPage.IsLastPage;
            btnTruoc.Enabled = !objPage.IsFirstPage;

            lbtrang.Text = (CurrentPage + 1) + " / " + objPage.PageCount;

            rptNews.DataSource = objPage;
            rptNews.DataBind();
        }
        catch (Exception)
        {
        }
        finally
        {
            objPage = null;
        }
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
