<%@ Page Language="C#" MasterPageFile="~/Manages/MasterPageM.master" AutoEventWireup="true"
    CodeFile="ThemSanPham.aspx.cs" Inherits="Manages_ThemSanPham" Title="Untitled Page" ValidateRequest="false" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphMasterPageManages">
    <style type="text/css">
        input {
            height: 12px;
            width: 60%;
            font-size: 14px;
            padding: 5px;
            margin-bottom: 5px;
        }

        p {
            padding-bottom: 5px;
        }

        .auto-style7 {
            width: 324px;
        }

        .auto-style8 {
            width: 323px;
        }

        .auto-style9 {
            width: 322px;
        }

        .auto-style10 {
            width: 320px;
        }

        .auto-style11 {
            width: 874px;
            margin-left: 100px;
        }
    </style>

    <div style="width: 98%;">
        <center>
            <b>
                <h1 style="padding-bottom: 10px; padding-top: 15px;">Thêm sản phẩm</h1>
            </b>
        </center>

        <fieldset style="margin-left: 20px">
            <legend>Thông tin sản phẩm</legend>
            <table border="0" class="auto-style11">
                <tr>
                    <td>
                        <p class="auto-style7">Tên sản phẩm</p>
                        <asp:TextBox ID="TenSanPham" runat="server" OnTextChanged="TenSanPham_TextChanged" Width="313px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <p>Xuất xứ</p>
                        <p>
                            <asp:TextBox ID="XuatXu" runat="server" Width="308px"></asp:TextBox>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p class="auto-style8">Số lượng</p>
                        <asp:TextBox ID="SL" runat="server" Width="311px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <p>Hãng sản xuất</p>
                        <p>
                            <asp:TextBox ID="Hangsanxuat" runat="server" Width="307px"></asp:TextBox>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p class="auto-style8">Đơn giá</p>
                        <asp:TextBox ID="DG" runat="server" Width="311px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <p>Loại hàng</p>
                        <p>
                            <asp:TextBox ID="Loaihang" runat="server" Width="305px"></asp:TextBox>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p class="auto-style9">Hình ảnh</p>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="322px" Height="33px" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUpload1"
                            ErrorMessage="Không phải file ảnh" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"> 
                        </asp:RegularExpressionValidator>
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />

                        <div>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Upload file" Width="183px" Height="32px" />
                        </div>
                    </td>
                    <td class="auto-style10">
                        <p>Màu sắc</p>
                        <p>
                            <asp:TextBox ID="Mausac" runat="server" Width="304px"></asp:TextBox>
                        </p>
                        <p></p>
                        <p>Loại sản phẩm</p>
                        <asp:DropDownList ID="LoaiPS" runat="server" Height="35px" Width="190px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </fieldset>
        <div style="margin-left: 20px">
            &nbsp;<p>Tính năng sản phẩm:</p>
            <textarea id="editor1" name="S1" rows="2" cols="5"></textarea>
            <center>
                <asp:Button ID="Button1" runat="server" Text="Thêm sản phẩm" OnClick="Button1_Click" Height="34px" Width="145px" />
                &nbsp
                <asp:Button ID="Button3" runat="server" Text="Thoát" OnClick="Button3_Click" Height="34px" Width="145px" />
            </center>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">

    <script type="text/javascript" src="../Js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.ckeditor.com/4.9.2/standard/ckeditor.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            CKEDITOR.replace('editor1');
        });
    </script>
</asp:Content>

