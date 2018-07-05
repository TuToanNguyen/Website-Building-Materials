<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="TimKiem.aspx.cs" Inherits="TimKiem" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <fieldset>
        <legend>Thông tin tìm kiếm</legend>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Từ khóa" style="margin-left:60px;"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtTuKhoa" runat="server" Width="256px"></asp:TextBox>&nbsp;
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Design/button-search.png"
                        OnClick="ImageButton1_Click" Height="33px" Width="123px" />
                    </td>
                </tr>
            </table>
        </div>
        <%--<div style="padding-left: 48px; margin-top: 8px">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Design/button-search.png"
                OnClick="ImageButton1_Click" Height="33px" Width="123px" />
        </div>--%>
    </fieldset>
    <fieldset>
        <legend>Kết quả tìm kiếm</legend>
            <div>
                <div style="background: url('Images/Design/nenTieude2.gif') repeat-x; height: 28px">
                    <span style="float: left; width: 100%; height: 100%; background: url('Images/Design/nentieude1.gif' )no-repeat;
                        color: White"><span style="float: left; font-weight: bold; padding-top: 5px; padding-left: 35px">
                            <%#Eval("Title")%>Các sản phẩm</span></span>
                </div>
                <div class="lw50h200New">
                    <asp:DataList ID="dtlProducts" runat="server" RepeatColumns="4" Width="100%" OnItemDataBound="dtlProducts_ItemDataBound" OnSelectedIndexChanged="dtlProducts_SelectedIndexChanged">
                        <ItemTemplate>
                            <div class="sanpham">
                                <div class="imageSP">
                                    <asp:Label runat="server" Visible="false" ID="lbMa" Text='<%#Eval("ProductID")%>'></asp:Label>
                                    <a style="text-decoration: none;" href="ProductDetail.aspx?idp=<%#Eval("ProductID")%>"><span>
                                        <%#Eval("Title")%></span></a>
                                    <img src="<%#Eval("Image")%>" />
                                </div>
                                <div class="giaban">
                                    <p>
                                        Sản xuất: <b><i>
                                            <%#Eval("Production")%></i></b></p>
                                    <p>
                                        Giá bán:<b><i><%#Eval("Money")%></i> VND</b></p>
                                </div>
                                <asp:ImageButton ID="btnMuaHang" ImageUrl="~/Images/Design/Muahang.png" runat="server" />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <hr style="border: solid thin #f0f0f0" />
            <div>
                <div style="background: url('Images/Design/nenTieude2.gif') repeat-x; height: 28px">
                    <span style="float: left; width: 100%; height: 100%; background: url('Images/Design/nentieude1.gif' )no-repeat;
                        color: White"><span style="float: left; font-weight: bold; padding-top: 5px; padding-left: 35px">
                            Tin tức</span></span>
                </div>
                <div class="lw50h200New">
                    <asp:Repeater ID="rptNews" runat="server">
                        <ItemTemplate>
                            <div class="newOne">
                                <a style="text-decoration: none;" href="NewDetail.aspx?idNew=<%#Eval("NewID")%>">
                                    <h4 style="margin: 3px;">
                                        <%#Eval("Title")%></h4>
                                </a>
                                <div style="width: 100%; border-bottom: solid thin #F0F0F0">
                                    <div style="float: right; width: 100%; margin: 5px; margin-left: 0px; margin-top: 10px;
                                        height: 70px">
                                        <p style="height: 80px; text-align: justify; margin: 0">
                                            <%#Eval("SubTitle")%></p>
                                        <p style="text-align: right; padding-right: 10px; color: #0299D2; margin: 0">
                                            <a href="NewDetail.aspx?idNew=<%#Eval("NewID")%>">Chi tiết</a></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
    </fieldset>
</asp:Content>

