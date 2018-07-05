﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="GioHang.aspx.cs" Inherits="GioHang" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Styles/MuaHang.css" rel="stylesheet" type="text/css" />
        <center>
                <h1>
                    <b style="color:#009c42">
                        <label>Thông tin giỏ hàng </label>
                        <%--<asp:Label ID="lbsoluong" runat="server" Text="Thông tin giỏ hàng"></asp:Label>--%>
                    </b>
                </h1>
            </center>
    <asp:Repeater ID="rptOrder" runat="server" OnItemCommand="rptOrder_ItemCommand">
        <HeaderTemplate>
            <table class="tableOrder" border="1" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td class="header1" style="width: 25px">STT
                    </td>
                    <td class="header1">Mã sản phẩm
                    </td>
                    <td class="header1">Tên sản phẩm
                    </td>
                    <td class="header1">Đơn giá
                    </td>
                    <td class="header1">Số lượng
                    </td>
                    <td class="header1">Thành tiền
                    </td>
                    <td class="header1" style="border-right: thin solid #ccc"></td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <%--<center>
                <h1>
                    <b style="color:#009c42">
                        <asp:Label ID="lbsoluong" runat="server" Text="Thông tin giỏ hàng"></asp:Label>
                    </b>
                </h1>
            </center>--%>
            <tr>
                <td class="header1" style="border-top: none">
                    <label id="lbSTT">
                        <%#Eval("STT")%>
                    </label>
                </td>
                <td class="header1" style="border-top: none">
                    <asp:Label ID="lbMaSP" runat="server" Text=' <%#Eval("MaHang")%>'></asp:Label>
                </td>
                <td class="header1" style="border-top: none">
                    <label id="lbTenSP">
                        <%#Eval("TenMatHang")%>
                    </label>
                </td>
                <td class="header1" style="border-top: none">
                    <asp:Label ID="lbGiaTien" runat="server" Text='<%#Eval("DonGia")%>'></asp:Label>
                </td>
                <td class="header1" style="border-top: none">
                    <asp:Label ID="txtSoLuong" Width="40px" Text='<%#Eval("SoLuong")%>' runat="server"></asp:Label>
                </td>
                <td class="header1" style="border-top: none">
                    <asp:Label ID="lbThanhTien" runat="server" Text='<%#Eval("ThanhTien")%>'></asp:Label>
                </td>
                <td class="header1" style="border-top: none">
                    <asp:ImageButton ID="btnXoa" runat="server" ImageUrl="~/Images/Design/Actions-edit-delete-icon.png" OnClientClick="javascript: return edit_confirm();" />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
            <div align="right" style="float: left; width: 96%; padding-top: 10px;">
            </div>
        </FooterTemplate>
    </asp:Repeater>
    <div align="right" style="float: left; width: 96%; height: 30px; padding-top: 10px;">
        <b>Tổng số tiền của giỏ hàng:</b>
        <asp:Label ID="lbTongTien" runat="server" Text="Label"></asp:Label>
        <b>VND</b>
    </div>
    <div style="margin-left: 20px;">
        <%--<asp:ImageButton ID="btnThanhToan" ImageUrl="~/Images/Design/thanhtoan.png" runat="server" />--%>
    </div>

    <script type="text/javascript">
        function edit_confirm() {
            var result = confirm("Bạn có thực sự muốn thay đổi không?");
            if (result) {
                return true;
            }
            return false;
        }</script>
</asp:Content>


