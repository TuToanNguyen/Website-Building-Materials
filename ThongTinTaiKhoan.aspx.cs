using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThongTinTaiKhoan : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

        var v = (from d in db.Accounts1s
                 where d.AcountName == Session["TaiKhoan"].ToString()
                 select d).Take(1);

        foreach (var item in v)
        {
            taikhoan.Text = item.AcountName;
            if (item.Gender == "Nam")
            {
                rdMale.Checked = true;
            }
            else
                rdFemale.Checked = true;
            ngaysinh.Text = item.BirthDay.ToString();
            diachi.Text = item.HomeTown;
            email.Text = item.Email;
        }
    }
    private void LoadNgay()
    {
        //for (int i = 1; i < 32; i++)
        //{
        //    droNgay.Items.Add(i.ToString());
        //}
        //for (int i = 1; i < 13; i++)
        //{
        //    droThang.Items.Add(i.ToString());
        //}

        //for (int i = DateTime.Now.Year - 18; i > 1910; i--)
        //{
        //    DropNam.Items.Add(i.ToString());
        //}

    }

    protected void btnDangKy_Click(object sender, ImageClickEventArgs e)
    {
        Accounts1 sc = db.Accounts1s.SingleOrDefault(s => s.AcountName == Session["TaiKhoan"].ToString());



        if (matkhau.Text == xacnhanmk.Text)
        {
            sc.Pass = xacnhanmk.Text;
        }
        else
        {
            Response.Write("<script language='JavaScript'> alert('Mật khẩu không trùng khớp!'); </script>");
        }


        if (rdMale.Checked == true)
        {
            sc.Gender = "Nam";
        }
        if (rdFemale.Checked == true)
        {
            sc.Gender = "Nữ";
        }

        sc.HomeTown = diachi.Text;

        sc.Email = email.Text;

        db.SubmitChanges();
        Response.Redirect(@"/ThongTinTaiKhoan.aspx");

    }
}