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

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    DataClassesDataContext db = new DataClassesDataContext();
    protected void btnDangNhap_Click(object sender, ImageClickEventArgs e)
    {
        var d = from f in db.Accounts1s
                select f;
        bool kt = false;
        string taikhoan = "";

        if(txtDangNhap.Text=="" || txtMatKhau.Text =="")
        {
            lbthongbao.InnerText = "Thông tin tài khoản không bỏ trống!";
        }
        else
        {
            foreach (var item in d)
            {
                if (item.AcountName == txtDangNhap.Text && item.Pass == txtMatKhau.Text)
                {
                    taikhoan = item.AcountName;
                    kt = true;
                    break;
                }
            }
            if (kt == true)
            {
                Session["TaiKhoan"] = taikhoan;
                Response.Redirect("/Default.aspx");
            }
            else
            {
                lbthongbao.InnerText = "Tài khoản chưa đúng!";

            }
        }
        

        //Response.Write("<script language='JavaScript'> alert('Register sucessfully !!'); </script>");
    }
    protected void btnThoat_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("/Default.aspx");
    }

    protected void btnQuenMatKhau_Click(object sender, EventArgs e)
    {

    }
}
