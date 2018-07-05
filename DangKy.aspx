<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DangKy.aspx.cs" Inherits="DangKy" Title="webvatlieuxaydung.com" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
            height: 28px;
        }
        .auto-style8 {
            border: thin solid #F0F0F0;
            margin: 26px auto 0 auto;
            width: 64%;
            height: 308px;
        }
        .auto-style9 {
            float: left;
            width: 519px;
            height: 32px;
            font-size: 24px;
        }
        .auto-style10 {
            width: 100%;
            height: 54px;
            margin-bottom: 15px;
        }
        .auto-style11 {
            text-align: left;
            color: white;
        }
        .auto-style12 {
            width: 425px;
            height: 13px;
            margin-left: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="auto-style8">
        <div style="background: url(Images/Design/hee.png) repeat-x;
            " class="auto-style10">
            <span style="margin-left: 8px; margin-top: 8px; font-style: normal; font-variant: normal; font-weight: 700; line-height: normal; font-family: Arial;" class="auto-style9">
                <div class="auto-style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Đăng ký tài khoản</div>
                <div style="margin-top: 5px" class="auto-style12">
                <label runat="server" id="lbthongbao" style="color: #FF0000"></label>
                </div>
            </span>&nbsp;
            <br />
        </div>
        <div class="auto-style7">
            <div style="float: left; width: 25%; height: 100%">
                <span style="float: left; width: 100%; margin-top: 5px; text-align: right; font-style: normal;
                    font-variant: normal; font-weight: 500; font-size: 12px; line-height: normal;">Tài
                    khoản: </span>
            </div>
            <div style="float: right; width: 74%">
                <asp:TextBox ID="txtTaiKhoan" runat="server" Width="211px"></asp:TextBox>&nbsp;</div>
        </div>
        <div style="width: 100%; height: 25px;">
            <div style="float: left; width: 25%; height: 100%">
                <span style="float: left; width: 100%; margin-top: 5px; text-align: right; font-style: normal;
                    font-variant: normal; font-weight: 500; font-size: 12px; line-height: normal;">Mật
                    khẩu: </span>
            </div>
            <div style="float: right; width: 74%; vertical-align: top;">
                <asp:TextBox ID="txtMatKhau" runat="server" Width="209px" TextMode="Password"></asp:TextBox>
                </div>
        </div>
        <div style="width: 100%; height: 28px;">
            <div style="float: left; width: 25%; height: 100%">
                <span style="float: left; width: 100%; margin-top: 5px; text-align: right; font-style: normal;
                    font-variant: normal; font-weight: 500; font-size: 12px; line-height: normal;">Nhập
                    lại mật khẩu: </span>
            </div>
            <div style="float: right; width: 74%">
                <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" Width="211px" TextMode="Password"></asp:TextBox>&nbsp;</div>
        </div>
        <div style="width: 100%; height: 28px;">
            <div style="float: left; width: 25%; height: 100%">
                <span style="float: left; width: 100%; margin-top: 5px; text-align: right; font-style: normal;
                    font-variant: normal; font-weight: 500; font-size: 12px; line-height: normal;">Nhập
                    Ngày sinh: </span>
            </div>
            <div style="float: right; width: 74%">
                <asp:DropDownList Width="55px" ID="droNgay" runat="server">
                </asp:DropDownList>
                <asp:DropDownList Width="55px" ID="droThang" runat="server">
                </asp:DropDownList>
                <asp:DropDownList Width="100px" ID="DropNam" runat="server">
                </asp:DropDownList>
                </div>
        </div>
        <div style="width: 100%; height: 28px;">
            <div style="float: left; width: 25%; height: 100%">
                <span style="float: left; width: 100%; margin-top: 5px; text-align: right; font-style: normal;
                    font-variant: normal; font-weight: 500; font-size: 12px; line-height: normal;">Nhập
                    Giới tính: </span>
            </div>
            <div style="float: right; width: 74%; padding:0; height: 21px;">
                &nbsp;
                <asp:RadioButtonList ID="rdoGioiTinh" runat="server" Height="16px" 
                    RepeatColumns="2" RepeatDirection="Horizontal" Width="116px" 
                    RepeatLayout="Flow">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
        <div style="width: 100%; height: 28px;">
            <div style="float: left; width: 25%; height: 100%">
                <span style="float: left; width: 100%; margin-top: 5px; text-align: right; font-style: normal;
                    font-variant: normal; font-weight: 500; font-size: 12px; line-height: normal;">Nhập
                    Đại chỉ: </span>
            </div>
            <div style="float: right; width: 74%">
                <asp:TextBox ID="txtDiaChi" runat="server" Width="211px"></asp:TextBox>&nbsp;</div>
        </div>
        <div style="width: 100%; height: 28px;">
            <div style="float: left; width: 25%; height: 100%">
                <span style="float: left; width: 100%; margin-top: 5px; text-align: right; font-style: normal;
                    font-variant: normal; font-weight: 500; font-size: 12px; line-height: normal;">Thư
                    điện tử: </span>
            </div>
            <div style="float: right; width: 74%">
                <asp:TextBox ID="txtEmail" runat="server" Width="130px"></asp:TextBox>&nbsp;<asp:DropDownList
                    Width="76px" ID="groEmail" runat="server">
                    <asp:ListItem>@gmail.com</asp:ListItem>
                    <asp:ListItem>@yahoo.com</asp:ListItem>
                </asp:DropDownList>
                &nbsp;</div>
        </div>
        <div style="width: 100%; height: 28px;">
            <div style="float: left; width: 25%; height: 100%">
            </div>
            <div style="float: right; width: 74%">
                <asp:ImageButton ID="btnDangKy" runat="server" ImageUrl="~/Images/Design/DangKy.png"
                    OnClick="btnDangKy_Click" />
                &nbsp;
                <asp:ImageButton ID="btnThoat" runat="server" ImageUrl="~/Images/Design/Thoat82.png" OnClick="btnThoat_Click" />
            </div>
        </div>
    </div>
</asp:Content>
