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

public partial class Manages_ThemTaiKhoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["Login"] == null)
            {
                Response.Redirect("~/Manages/DangNhap.aspx");
            }
        }
    }

    DataClassesDataContext db = new DataClassesDataContext();
    protected void btnRegister_Click(object sender, EventArgs e)
    {

        if (txtPersonPostNewCode.Text == "" || txtPassWord.Text == "" || txtPassWord.Text == "" || txtRePassWord.Text =="" || txtEmail.Text ==  ""|| txtReEmail.Text=="" || txtName.Text==""|| txtHomeTown.Text==""|| txtPhoneNumber.Text=="" || txtBirthDay.Text=="")
        {
            Response.Write("<script>alert('Vui lòng kiểm tra lại thông tin!')</script>");
        }
        if(txtPassWord.Text != txtRePassWord.Text)
        {
            lblRePassWord.Text = "Mật khẩu không trùng khớp!";
        }
        if(txtEmail.Text != txtReEmail.Text)
        {
            lblReEmail.Text = "Email không trùng khớp!";
        }
        else
        {
            try
            {
                //var v = from d in db.Manages
                //        select d.AccountID;
                string qr = @"SELECT [AccountID] FROM[dbo].[Manages]";
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert(qr);", true);
                if (qr == txtName.Text)
                {
                    lblPersonPostNewCode.Text = "Tài khoản đã tồn tại!";
                }
                else
                {

                    Manage sc = new Manage();
                    sc.AccountID = txtPersonPostNewCode.Text;
                    sc.AccountPass = txtPassWord.Text;
                    sc.Email = txtEmail.Text;
                    sc.FullName = txtName.Text;
                    sc.BirthDay = DateTime.Parse(txtBirthDay.Text);
                    if (rdMale.Checked == true)
                    {
                        sc.Gender = "Nam";
                    }
                    else
                        sc.Gender = "Nữ";
                    sc.PhoneNumber = txtPhoneNumber.Text;
                    sc.Address = txtHomeTown.Text;

                    db.Manages.InsertOnSubmit(sc);
                    db.SubmitChanges();

                    Response.Redirect(@"/Manages/QuanLyTaiKhoan.aspx");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Thêm thất bại!')</script>");
                //Page_Load(sender, e);
            }
        }
            
    }
}
