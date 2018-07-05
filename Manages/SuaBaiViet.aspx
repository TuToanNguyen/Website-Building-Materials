<%@ Page Language="C#" MasterPageFile="~/Manages/MasterPageM.master" AutoEventWireup="true" validateRequest="false"
    CodeFile="SuaBaiViet.aspx.cs" Inherits="Manages_SuaBaiViet" Title="Untitled Page" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: right;
            margin-right: 5px;
        }
        .style2
        {
            padding: 3px;
        }
        .auto-style7 {
            height: 324px;
        }
        .auto-style8 {
            width: 1205px;
            height: 295px;
        }
        .auto-style10 {
            width: 462px;
            height: 34px;
        }
        .auto-style11 {
            width: 462px;
            height: 18px;
        }
        .auto-style12 {
            width: 462px;
            height: 19px;
        }
    </style>
    <script type="text/javascript" src="https://cdn.ckeditor.com/4.9.1/standard/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMasterPageManages" runat="Server">
    <div>
        <div style="margin-top:10px">
            <center>
                <h2>SỬA BÀI VIẾT</h2>
            </center>
        </div>
        <div>
            <fieldset>
                <legend>Thông tin nhập</legend>
                <div style="float: left; width: 100%">
                    <table style="float: left">
                        <tr>
                            <td class="style1">
                                <b>Nhập tiêu đề của tin</b>
                            </td>
                            <td class="style2">
                                <input type="type" name="tieuDe" value="<% =Session["TieuDe"].ToString() %>" class="auto-style12" />
                                <%--<asp:TextBox ID="txtTieuDea" runat="server" Width="461px"></asp:TextBox>--%>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtTieuDe"
                                    runat="server" ErrorMessage="Bạn chưa nhập tiêu đề tin"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Mô tả ngắn gọn</b>
                            </td>
                            <td class="style2">
                                <input type="tex" name="Mota" value="<% =Session["MoTa"].ToString() %>" class="auto-style10" />

                                <%--<asp:TextBox ID="txtMoTa" runat="server" Width="462px" Height="132px" Style="text-align: left;
                                    vertical-align: text-top; font-weight: 700;" TextMode="MultiLine"></asp:TextBox>--%>
                                <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtMoTa"
                                    runat="server" ErrorMessage="Bạn chưa nhập mô tả tin"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Người đăng: </b>
                            </td>
                            <td class="style2">
                                <asp:Label ID="lbNguoiDang" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Từ khóa</b>
                            </td>
                            <td class="style2">
                                <input type="type" name="TuKhoa" value="<% =Session["TuKhoa"].ToString() %>" class="auto-style11" />

                                <%--<asp:TextBox ID="txtTuKhoa" runat="server" Width="462px"></asp:TextBox>--%>
                                <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtNguon"
                                    runat="server" ErrorMessage="Bạn chưa nhập nguồn tin"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Tác giả / Nguồn</b>
                            </td>
                            <td class="style2">
                                <input type="type" name="Nguon" value="<% =Session["Nguon"].ToString() %>" class="auto-style12" />

                                <%--<asp:TextBox ID="txtNguon" runat="server" Width="463px"></asp:TextBox>--%>
                                <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtNguon"
                                    runat="server" ErrorMessage="Bạn chưa nhập nguồn tin"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Hình ảnh</b>
                            </td>
                            <td class="style2">
                                <asp:FileUpload ID="fuAnh" runat="server" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fuAnh"
                                    ErrorMessage="Không phải file ảnh" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"> 
                                </asp:RegularExpressionValidator>
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnUpLoad" runat="server" OnClick="btnUpLoad_Click" Text="Upload ảnh"
                                    Width="102px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <div style="float: right; width: 230px; margin-top: 20px; margin-right: 100px; height: 180px">
                        <asp:Image ID="imAnh" Width="100%" Height="100%" runat="server" />
                    </div>
                </div>
                <asp:Label ID="id" runat="server"></asp:Label>
            </fieldset>
        </div>
        &nbsp;</div>
    <div>
        <fieldset class="auto-style7">
            <legend>Nội dung</legend>
            <div style="height:100%">
                <textarea id="editor1" name="fckNoiDung" class="auto-style8"> <% =Session["fckNoiDung"].ToString() %>  </textarea>
            </div>
        </fieldset>
    </div>
    <div style="text-align: center">
        <asp:Button ID="btnThem" runat="server" Text="Cập nhật" OnClick="btnThem_Click"
            Height="40px" Width="129px" />
        &nbsp;&nbsp;
        <asp:Button ID="Thoát" runat="server" Text="Thoát" Width="111px" Height="40px" OnClick="Thoát_Click" />
    </div>
    <script type="text/javascript">
	    CKEDITOR.replace('editor1' );
    </script>
    </div>
</asp:Content>
