using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manages_Taikhoankhachhang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //try
        //{
        //    string qr = @"SELECT [AcountName]
        //FROM[dbo].[AccountProduct]";
        //    string qr1 = @"SELECT [AcountName]
        //FROM [dbo].[Accounts1]";

        //    if (qr == qr1)
        //    {
        //        Response.Write("<script>alert('Tồn tại đơn hàng!')</script>");
        //    }
        //    else
        //    {
        //        //e.DeleteCommand = "DELETE FROM [Accounts1] WHERE [AcountName] = @AcountName ";
        //    }
        //}
        //catch (Exception)
        //{

        //}
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        


    }
}