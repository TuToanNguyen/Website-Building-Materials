using System;
using System.Collections;
using System.Configuration;
using System.Data;
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
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
                string query = Request.QueryString["id"].ToString();
                //Label1.Text = query;

                var v = from d in db.Products
                        where d.SmallProductCategoryID == int.Parse(query.ToString())
                        select d;
                dtlProducts.DataSource = v.Take(12);
                dtlProducts.DataBind();
        }
        catch
        { }
   
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
        //if (Request.Cookies["TaiKhoan"] != null)
        //{
        //    Response.Redirect("/MuaHang.aspx?MaHang=" + Request.QueryString["idp"].ToString());

        //    ImageButton imb = (ImageButton)e.Item.FindControl("btnMuaHang");
        //    Label lb = (Label)e.Item.FindControl("lbMa");
        //    imb.PostBackUrl = "~/MuaHang.aspx?MaHang=" + lb + "";
        //}
        //else
        //{
        //    Response.Redirect("/DangNhap.aspx");
        //}
    }
}
