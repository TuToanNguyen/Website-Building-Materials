<%@ Page Language="C#" MasterPageFile="~/Manages/Account.master" AutoEventWireup="true" 
    CodeFile="Taikhoankhachhang.aspx.cs" Inherits="Manages_Taikhoankhachhang" Title="Untitled Page"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceBody" runat="Server">
    <link href="StyleAccount/pageManageNews.css" rel="stylesheet" type="text/css" />
    <div class="bannerManager">
        <div class="menutop" style="width: 85px">
            <div style="background-position: center center; height: 67%; background-image: url('Picture/Icon/Order.png'); background-repeat: no-repeat;">
            </div>
            <asp:HyperLink ID="HyperLink2"
                    NavigateUrl="QuanlyDonHang.aspx" runat="server">Quản lý đơn hàng</asp:HyperLink>
        </div>
        <div class="menutop">
            <div style="background-position: center center; height: 67%; background-image: url('Picture/Icon/Admin-icon.png'); background-repeat: no-repeat;">
            </div>
            <asp:HyperLink ID="HyperLink1"
                    NavigateUrl="Quanlytaikhoan.aspx" runat="server">Tài khoản quản trị</asp:HyperLink>
        </div>
        <div style="margin-bottom: 4px; margin-top:40px; width: 974px; height: 27px;">
            <center>
                <b>
                    <h2>
                       TÀI KHOẢN KHÁCH HÀNG
                    </h2>
                </b>
            </center>
        </div>
    </div>
    <%--<div style="margin-bottom: 4px">
        <center>
            <b>
                <h2>TÀI KHOẢN KHÁCH HÀNG
                </h2>
            </b>
        </center>
    </div>--%>
    <div style="width: 1219px">

        

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AcountName" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="1207px" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>             
                <asp:BoundField DataField="AcountName" HeaderText="Tài khoản" ReadOnly="True" SortExpression="AcountName" />
                <asp:BoundField DataField="Pass" HeaderText="Mật khẩu" SortExpression="Pass" />
                <asp:BoundField DataField="Gender" HeaderText="Giới tính" SortExpression="Gender" />
                <asp:BoundField DataField="BirthDay" HeaderText="Ngày sinh" SortExpression="BirthDay" />
                <asp:BoundField DataField="HomeTown" HeaderText="Địa chỉ" SortExpression="HomeTown" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:ImageButton ImageUrl="~/Images/Design/Ok.png" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" OnClientClick="javascript: return edit_confirm();"></asp:ImageButton>
                        &nbsp;
                        <asp:ImageButton ImageUrl="~/Images/Design/No.png" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:ImageButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/Images/Design/Edit.png" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:ImageButton>
                        &nbsp;
                        <asp:ImageButton ImageUrl="~/Images/Design/Delete.png" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="javascript: return edit_confirm();"></asp:ImageButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center"/>
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuildingMaterialsConnectionString2 %>" DeleteCommand="DELETE FROM [Accounts1] WHERE [AcountName] = @AcountName " InsertCommand="INSERT INTO [Accounts1] ([AcountName], [Pass], [Gender], [BirthDay], [HomeTown], [Email]) VALUES (@AcountName, @Pass, @Gender, @BirthDay, @HomeTown, @Email)" SelectCommand="SELECT [AcountName], [Pass], [Gender], [BirthDay], [HomeTown], [Email] FROM [Accounts1]" UpdateCommand="UPDATE [Accounts1] SET [Pass] = @Pass, [Gender] = @Gender, [BirthDay] = @BirthDay, [HomeTown] = @HomeTown, [Email] = @Email WHERE [AcountName] = @AcountName">
            <DeleteParameters>
                <asp:Parameter Name="AcountName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AcountName" Type="String" />
                <asp:Parameter Name="Pass" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="BirthDay" Type="DateTime" />
                <asp:Parameter Name="HomeTown" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pass" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="BirthDay" Type="DateTime" />
                <asp:Parameter Name="HomeTown" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="AcountName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        

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
