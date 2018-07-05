<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ThanhCong.aspx.cs" Inherits="ThanhCong" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 698px;
            height: 256px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin: 0 auto" class="auto-style8">
        <div style="float: left; width: 40%; height: 100%">
        <asp:ImageButton ID="btnDangnhap" runat="server" ImageUrl="~/Images/Design/SuccessIcon.png"
                    OnClick="btnDangNhap_Click" />
        </div>
        <div style="float: right; width: 59%; padding-top: 10px";>
            <center>
               <h2>
                    <p>
                Bạn vừa đăng ký thành công !</p>
               </h2>
            </center>
            <p>
                Bạn hãy trở về trang <a style="text-decoration: none;" href="DangNhap.aspx"><b>Đăng nhập</b></a> để thực hiện việc mua bán.</p>
        </div>
    </div>
</asp:Content>
