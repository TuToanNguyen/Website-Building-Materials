<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="NewDetail.aspx.cs" Inherits="NewDetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style8 {
            list-style: none;
            width: 107%;
            overflow: hidden;
            height: 100%;
            padding: 0;
            margin: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Styles/Other.css" rel="stylesheet" type="text/css" />
    <div class="TieuDeTin">
        <h1>
            <center>
                <asp:Label ID="lbTieuDeTin" runat="server" Text="Label" Style="color: blue;"></asp:Label>
            </center>
        </h1>
    </div>

    <div style="margin: 20px;">
        <div class="MoTa">
            <h3>
                <br />
                <asp:Label ID="lbMoTa" runat="server" Text="Label"></asp:Label></h3>
        </div>

        <div style="margin-top: 10px;">
            <center>
                <asp:Image ID="img" runat="server" Height="250px" Width="300px" />
                <h5 style="margin: 0">(ảnh minh họa)</h5>
            </center>
        </div>

        <div class="ChiTiet">
            <h3>
                <asp:Label ID="lbChiTiet" runat="server" Text="Label"></asp:Label></h3>
        </div>
        <div class="TrichDan">
            <h3>
                <asp:Label ID="lbTrichDan" runat="server" Text="Label"></asp:Label></h3>
        </div>
    </div>

    <div class="TinCu">
        <h3>Các tin gần nhất</h3>
        <ul>
            <%--<li><a href="http://localhost:53086/NewDetail.aspx?idNew=65"><span>Chọn gạch ốp lát làm đẹp cho ngôi nhà</span></a></li>
            <li><a href="http://localhost:53086/NewDetail.aspx?idNew=66"><span>Chọn gương cho phòng tắm</span></a></li>
            <li><a href="http://localhost:53086/NewDetail.aspx?idNew=67"><span>Nhật Bản tư vấn dự án điện hạt nhân Ninh Thuận</span></a></li>
            <li><a href="http://localhost:53086/NewDetail.aspx?idNew=68"><span>Bí quyết chọn đồ phù hợp cho nhà bếp</span></a></li>
            <li><a href="http://localhost:53086/NewDetail.aspx?idNew=70"><span>Viglacera ra mắt sản phẩm Bê tông khí cấp cường độ 6</span></a></li>--%>
            <%--<div class="event">
                <ul class="auto-style8">--%>
                    <asp:Repeater ID="rptNews" runat="server">
                        <ItemTemplate>
                            <li><a href="NewDetail.aspx?idNew=<%#Eval("NewID")%>"><span>
                                <%#Eval("Title")%></span></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
              <%--  </ul>
            </div>--%>
        </ul>
    </div>
</asp:Content>
