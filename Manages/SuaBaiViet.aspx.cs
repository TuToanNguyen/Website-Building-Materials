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

public partial class Manages_SuaBaiViet : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var f = from d in db.News
                where d.NewID ==long.Parse(Request.QueryString["Newid"].ToString())
                select d; 
        foreach (var item in f)
        {
            //txtTieuDea.Text = item.Title;
            //txtMoTa.Text = item.SubTitle;
            lbNguoiDang.Text = Request.Cookies["Login"]["TaiKhoan"].ToString();
            //txtTuKhoa.Text=item.KeyWord;
            //txtNguon.Text = item.Author;
            imAnh.ImageUrl = "../"+item.Image;
            Session["fckNoiDung"] = item.Detail;
            Session["TieuDe"] = item.Title;
            Session["MoTa"] = item.SubTitle;
            Session["TuKhoa"] = item.KeyWord;
            Session["Nguon"] = item.Author;
            break;
        }
    }
    protected void btnUpLoad_Click(object sender, EventArgs e)
    {
        if (fuAnh.HasFile)
        {
            fuAnh.SaveAs(Server.MapPath("~/Images/Products/" + fuAnh.PostedFile.FileName.ToString()));
            string str = "../Images/Products/" + fuAnh.PostedFile.FileName.ToString();
            anh = str;
            imAnh.ImageUrl = str;

        }
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {

        New n = db.News.SingleOrDefault(s => s.NewID == long.Parse(Request.QueryString["Newid"].ToString()));
        //n.Title = txtTieuDea.Text;
        //n.SubTitle = txtMoTa.Text;
        n.Image = anh;
        //n.KeyWord = txtTuKhoa.Text;
        n.CreateDate = DateTime.Now;
        n.TotalView = 0;
        n.IsPost = false;
        n.PostDate = DateTime.Now;
        n.Author = lbNguoiDang.Text;
        n.Title = Request.Form["TieuDe"].ToString();
        n.SubTitle = Request.Form["MoTa"].ToString();
        n.KeyWord = Request.Form["TuKhoa"].ToString();
        n.Detail = Request.Form["fckNoiDung"].ToString();
        //db.News.InsertOnSubmit(n);
        db.SubmitChanges();
        Response.Redirect("~/Manages/QuanLyBaiViet.aspx");

        //long id = long.Parse(Request.QueryString["Newid"].ToString());
        //string ten = txtTieuDe.Text;
        //string mota = txtMoTa.Text;
        //string img = anh;
        //string tukhoa = txtTuKhoa.Text;
        //DateTime ngaytao = DateTime.Now;
        //int luocxem = 0;
        //bool trangthai = false;
        //DateTime ngayup = DateTime.Now;
        //string tacgia = lbNguoiDang.Text;
        //string noidung = Request.Form["fckNoiDung"].ToString();

        //string qr = @"update News set Title ='"+ten+ "', SubTitle ='" + mota + "', Image ='" + anh + "', KeyWord ='" + tukhoa + "', CreateDate ='" + ngaytao + "'" +
        //    ", TotalView ='" + luocxem + "', IsPost ='" + trangthai + "', PostDate ='" + ngayup + "', Author ='" + tacgia + "', Detail ='" + noidung + "' where NewID = '"+ long.Parse(Request.QueryString["Newid"].ToString()) + "' ";
        //DBConnect.SqlExecute(qr);
        //Response.Redirect("~/Manages/QuanLyBaiViet.aspx");

    }
    static string anh = "";
    protected void Thoát_Click(object sender, EventArgs e)
    {

    }
}
