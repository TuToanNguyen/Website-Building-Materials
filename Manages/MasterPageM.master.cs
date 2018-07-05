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

public partial class Manages_MasterPageM : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        if (Request.Cookies["Login"] != null)
        {
            if (Request.Cookies["Login"] != null && Request.Cookies["Login"]["Quyen"].ToLower() == "admin")
            {
                HienThi();
            }
            else
            {
                HienThi();
                qltaikhoan.Visible = false;
                qlsanpham.Visible = false;
                qldonhang.Visible = false;
            }
        }
        else
        {
            an();
        }



        //}
    }
    public void HienThi()
    {
        try
        {
            hlLogin.Visible = false;
            hlRegister.Visible = false;
            lbSightOut.Visible = true;
            lblPersonPostNewCode.Visible = true;
            hlMyAccountInfo.Visible = true;
            lblPersonPostNewCode.Text = "Xin chào, " + Request.Cookies["Login"]["TaiKhoan"].ToString();

            qltaikhoan.Visible = true;
            qlbaiviet.Visible = true;
            qlsanpham.Visible = true;
            qldonhang.Visible = true;
        }
        catch (Exception)
        { }

    }
    private void an()
    {
        hlLogin.Visible = true;
        hlRegister.Visible = false;
        lbSightOut.Visible = false;
        lblPersonPostNewCode.Visible = false;
        hlMyAccountInfo.Visible = false;

        qltaikhoan.Visible = false;
        qlbaiviet.Visible = false;
        qlsanpham.Visible = false;
        qldonhang.Visible = false;
    }
    protected void lbSightOut_Click(object sender, EventArgs e)
    {
        Response.Cookies["Login"].Expires = DateTime.Now.AddMinutes(-1);
        Response.Redirect("~/Manages/DangNhap.aspx");
    }
}
