<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ThongTinTaiKhoan.aspx.cs" Inherits="ThongTinTaiKhoan" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div style="background:#b6ebe0">
        <br />
        <center>
            <h2 style="color: #0026ff;">THÔNG TIN TÀI KHOẢN
            </h2>
        </center>
        <div style="margin-left: 230px">
            <div>
                <label>Tài khoản:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="taikhoan" runat="server">tài khoản</asp:Label>
            </div>
            <br />
            <div>
                <label>Mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
                &nbsp;<asp:TextBox ID="matkhau" runat="server" Width="264px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div>
                <label>Nhập lại mật khẩu:&nbsp;&nbsp; </label>
                &nbsp;<asp:TextBox ID="xacnhanmk" runat="server" Width="263px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div>
                <label>Giới tính:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                <asp:RadioButton Width="10%" runat="server" ID="rdMale"  GroupName="rdGender" Text="Nam" />
                <asp:RadioButton Width="10%" runat="server" ID="rdFemale" GroupName="rdGender" Text="Nữ" />
            </div>
            <br />
            <div>
                <label>Ngày sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                <asp:Label ID="ngaysinh" runat="server">ngày sinh</asp:Label>
                <%--<asp:DropDownList Width="55px" ID="droNgay" runat="server">
            </asp:DropDownList>
            <asp:DropDownList Width="55px" ID="droThang" runat="server">
            </asp:DropDownList>
            <asp:DropDownList Width="100px" ID="DropNam" runat="server">
            </asp:DropDownList>--%>
            </div>
            <br />
            <div>
                <label>Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                &nbsp;<asp:TextBox ID="diachi" runat="server" Width="263px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
                &nbsp;<asp:TextBox ID="email" runat="server" Width="263px"></asp:TextBox>
            </div>
            <br />
            <div style="margin-left: 300px;">
                <asp:ImageButton ID="btnDangKy" runat="server" ImageUrl="~/Images/Design/xacnhan.png"
                    OnClick="btnDangKy_Click" />
            </div>
            <br />
        </div>
    </div>
</asp:Content>
