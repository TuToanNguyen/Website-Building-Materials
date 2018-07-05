using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manages_ThemSanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string qr = @"SELECT [SmallProductCategoryID]
      ,[SmallProductCategoryName]
  FROM[dbo].[ProductCategory]";

        LoaiPS.DataTextField = "SmallProductCategoryName";
        LoaiPS.DataValueField = "SmallProductCategoryID";

        LoaiPS.DataSource = DBConnect.SqlDataTable(qr);

        LoaiPS.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string tenSP = TenSanPham.Text;
        string soLuong = SL.Text;
        string donGia = DG.Text;
        string hinhAnh = anh;
        string xuatXu = XuatXu.Text;
        string hangsanxuat = Hangsanxuat.Text;
        string loaihang = Loaihang.Text;
        string mausac = Mausac.Text;
        string DanhGia = Request.Form["S1"].ToString();

        string Qq = @"INSERT INTO [dbo].[Products] (
           [Title]
           ,[Number]
           ,[Money]
           ,[Image]
           ,[SmallProductCategoryID]
		   ,[Origin]
           ,[Maker]
           ,[Goods]
           ,[Color]
           ,[Features]
          )
     VALUES
           ('" + tenSP + "', "+ soLuong + ", "+ donGia + ", '"+ hinhAnh + "', " + LoaiPS.SelectedValue.ToString() + ", '" + xuatXu + "', '" + hangsanxuat + "', '" + loaihang + "', '" + mausac + "', '" + DanhGia + "')";
        DBConnect.SqlExecute(Qq);
        Response.Redirect("~/Manages/QuanLySanPham.aspx");

    }

     static string anh = "";

    //up hinh anh vao thu muc img
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Images/Products/" + FileUpload1.PostedFile.FileName.ToString()));
            string str = "../Images/Products/" + FileUpload1.PostedFile.FileName.ToString();
            anh = str;
            Image1.ImageUrl = str;

        }
    }

    protected void TenSanPham_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Manages/QuanLySanPham.aspx");
    }
}