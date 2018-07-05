<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: "Arial" , Times, serif;
        }
        .auto-style7 {
            width: 441px;
            margin-top: 53px;
            height: 252px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 0;
        }
        .auto-style9 {
            margin-left: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="auto-style7">
        <div style="width: 100%; height: 40px;">
            <img src="Images/Design/HE.png" width="100%" height="100%" />
        </div>
        <div style="margin-top: 5px" class="auto-style9">
                <label runat="server" id="lbthongbao" style="color: #FF0000"></label>
        </div>
        <div>
            <hr style="border: solid thin #F0F0F0" />
        </div>
        <div style="width: 100%; height: 28px;" style="margin-top: 5px">
            <div style="float: left; width: 35%; height: 100%">
                <span style="float: left; width: 100%; margin-top: 5px; text-align: right; font-style: normal;
                    font-variant: normal; font-weight: 500; font-size: 12px; line-height: normal;"
                    class="style1">Tên đăng nhập: </span>
            </div>
            <div style="float: right; width: 64%">
                <asp:TextBox ID="txtDangNhap" runat="server" Width="203px"></asp:TextBox>&nbsp;</div>
        </div>
        <div style="width: 100%; height: 28px;">
            <div style="float: left; width: 35%; height: 100%">
                <span style="float: left; width: 100%; margin-top: 5px; text-align: right; font-style: normal;
                    font-variant: normal; font-weight: 500; font-size: 12px; line-height: normal;"
                    class="style1">Mật khẩu: </span>
            </div>
            <div style="float: right; width: 64%">
                <asp:TextBox ID="txtMatKhau" runat="server" Width="203px" TextMode="Password"></asp:TextBox>&nbsp;</div>
        </div>
        <div style="width: 100%; height: 28px;">
            <div style="float: left; width: 35%; height: 100%">
            </div>
            <div style="float: right; width: 64%">
                <asp:ImageButton ID="btnDangNhap" runat="server" ImageUrl="~/Images/Design/DangNhap.png"
                    OnClick="btnDangNhap_Click"  />
                <%--OnClientClick="return confirm('Bạn có thực sự muốn thay đổi không?')"--%>
                <asp:ImageButton ID="btnThoat" runat="server" ImageUrl="~/Images/Design/Thoat.png"
                    OnClick="btnThoat_Click" />
            </div>
        </div>
        <%--<div style="text-align: right; width: 100%; height: 20px">
            <span style="margin-right: 45px; " class="auto-style8">
                <asp:LinkButton ID="btnQuenMatKhau" runat="server" OnClick="btnQuenMatKhau_Click">Bạn quên mật khẩu?</asp:LinkButton>
            </span>
        </div>--%>
        <div>
            <hr style="border: solid thin #F0F0F0" />
        </div>
        <div>
            <h3 style="margin: 8px;">
                Bạn chưa có tài khoản?</h3>
            <asp:ImageButton ID="btnDangKyTaiKhoan" PostBackUrl="~/DangKy.aspx" runat="server"
                ImageUrl="~/Images/Design/DangKyTaiKhoan.png" />
        </div>
    </div>
</asp:Content>
