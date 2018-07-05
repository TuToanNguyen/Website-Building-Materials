<%@ Page Language="C#" MasterPageFile="~/Manages/Account.master" AutoEventWireup="true"
    CodeFile="QuanLyTaiKhoan.aspx.cs" Inherits="Manages_QuanLyTaiKhoan" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceBody" runat="Server">
    <link href="StyleAccount/pageManageNews.css" rel="stylesheet" type="text/css" />
    <div class="bannerManager">
        <div class="menutop">
            <div style="background-position: center center; height: 67%; background-image: url('Picture/Icon/people-icon.png'); background-repeat: no-repeat;">
            </div>
            <asp:HyperLink ID="HyperLink1"
                NavigateUrl="Taikhoankhachhang.aspx" runat="server">Tài khoản khách hàng</asp:HyperLink>
        </div>
        <div class="menutop">
            <asp:Panel ID="Panel1" runat="server" Height="100%">
                <div style="background-position: center center; height: 67%; background-image: url('Icon/add-1-icon.png'); background-repeat: no-repeat;">
                </div>
                <asp:HyperLink ID="btnThemTaiKhoan"
                    NavigateUrl="ThemTaiKhoan.aspx" runat="server">Thêm tài khoản</asp:HyperLink>
            </asp:Panel>
        </div>
        <div style="margin-bottom: 4px; margin-top: 40px; width: 974px; height: 27px;">
            <center>
                <b>
                    <h2>TÀI KHOẢN QUẢN TRỊ
                    </h2>
                </b>
            </center>
        </div>
    </div>

    <div style="width: 1219px">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AccountID" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="1198px" AllowPaging="True" Style="margin-left: 7px" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>

                <asp:BoundField DataField="AccountID" HeaderText="Tài khoản" ReadOnly="True" SortExpression="AccountID" />
                <asp:BoundField DataField="AccountPass" HeaderText="Mật khẩu" SortExpression="AccountPass" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="FullName" HeaderText="Họ tên" SortExpression="FullName" />
                <asp:BoundField DataField="Gender" HeaderText="Giới tính" SortExpression="Gender" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Số điện thoại" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="Address" HeaderText="Địa chỉ" SortExpression="Address" />

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
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuildingMaterialsConnectionString2 %>" DeleteCommand="DELETE FROM [Manages] WHERE [AccountID] = @AccountID" InsertCommand="INSERT INTO [Manages] ([AccountID], [AccountPass], [Email], [FullName], [Gender], [PhoneNumber], [Address]) VALUES (@AccountID, @AccountPass, @Email, @FullName, @Gender, @PhoneNumber, @Address)" SelectCommand="SELECT [AccountID], [AccountPass], [Email], [FullName], [Gender], [PhoneNumber], [Address] FROM [Manages] where [AccountID] != 'tutoan' " UpdateCommand="UPDATE [Manages] SET [AccountPass] = @AccountPass, [Email] = @Email, [FullName] = @FullName, [Gender] = @Gender, [PhoneNumber] = @PhoneNumber, [Address] = @Address WHERE [AccountID] = @AccountID">
            <DeleteParameters>
                <asp:Parameter Name="AccountID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AccountID" Type="String" />
                <asp:Parameter Name="AccountPass" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AccountPass" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="AccountID" Type="String" />
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
