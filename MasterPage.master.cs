using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.IO;
public partial class MasterPage : System.Web.UI.MasterPage
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        //dem so luong nguoi truy cap
        StreamReader sr = new StreamReader(Server.MapPath("count_visit.txt"));
        string[] s = sr.ReadLine().Split('#');
        string s1 = s[0].ToString();
        string s2 = s[1].ToString();
        lbDa.Text = s1.ToString();
        lbDang.Text = s2.ToString(); ;
        sr.Close();

        //danh muc san pham
        var v = from d in db.Categories
                select d;

        rptDanhMuc1.DataSource = v.Take(12);
        rptDanhMuc1.DataBind();

        //danh muc tin tuc
        var v1 = from d in db.News
                 orderby d.NewID descending
                 select d;
        rptNews.DataSource = v1.Take(11);
        rptNews.DataBind();

        //kiem tra dang nhap
        if(Session["TaiKhoan"] == null)
        {
            NotIdDangNhap();
        }
        else
        {
            idDangNhap();
        }


        //trang thai gio hang
        var gioHang = from j in db.AccountProducts
                where j.AcountName == Session["TaiKhoan"].ToString()
                select new { j.ProductID, j.Product.Title, j.Product.Money, j.Number };

        try
        {
            btnGioHang.Text = "Giỏ hàng (" + gioHang.Count().ToString() + " sản phẩm)";
        }
        catch
        {
            btnGioHang.Text = "Giỏ hàng";
        }
    }


    private void idDangNhap()
    {
        btnDangKy.Visible = false;
        btnDangNhap.Visible = false;
        btnGioHang.Visible = true;
        btnTaiKhoan.Visible = true;
        btnThoat.Visible = true;
        btnTaiKhoan.Text = "Xin chào: " + Session["TaiKhoan"].ToString();
    }
    private void NotIdDangNhap()
    {
        btnDangKy.Visible = true;
        btnDangNhap.Visible = true;
        btnGioHang.Visible = false;
        btnTaiKhoan.Visible = false;
        btnThoat.Visible = false;
    }

    protected void rptDanhMuc1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //Label lb1 = (Label)e.Item.FindControl("lbma");
        //Repeater rp = (Repeater)e.Item.FindControl("rptDanhMuc2");

        //var v = from d in db.ProductCategories
        //        where d.CategoryID == int.Parse(lb1.Text.ToString())
        //        select d;
        //rp.DataSource = v;
        //rp.DataBind();

        Label lb1 = (Label)e.Item.FindControl("lbma");
        Repeater rp = (Repeater)e.Item.FindControl("rptDanhMuc2");

        var v = from d in db.ProductCategories
                where d.CategoryID == int.Parse(lb1.Text.ToString())
                select d;
        rp.DataSource = v;
        rp.DataBind();
    }

    protected void btnThoat_Click(object sender, EventArgs e)
    {
        if (Session["TaiKhoan"] != null)
        {
            Session["TaiKhoan"] = null;
            Response.Redirect("Default.aspx");
        }
    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        Response.Redirect("DangNhap.aspx");
    }

    protected void btnTaiKhoan_Click(object sender, EventArgs e)
    {
        Response.Redirect("ThongTinTaiKhoan.aspx");
    }
}
