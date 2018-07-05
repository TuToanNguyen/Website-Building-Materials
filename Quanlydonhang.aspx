<%@ Page Language="C#" MasterPageFile="~/Manages/Account.master" AutoEventWireup="true"
    CodeFile="Quanlydonhang.aspx.cs" Inherits="Manages_Quanlydonhang" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceBody" runat="Server">
    <link shref="StyleAccount/pageManageNews.css" rel="stylesheet" type="text/css" />
    <div class="bannerManager">
        <div class="menutop">
            <div style="background-position: center center; height: 67%; background-image: url('Picture/Icon/people-icon.png'); background-repeat: no-repeat;">
            </div>
            <asp:HyperLink ID="HyperLink1"
                    NavigateUrl="Taikhoankhachhang.aspx" runat="server">Tài khoản khách hàng</asp:HyperLink>
        </div>
        <div class="menutop" style="width: 78px">
            <asp:Panel ID="Panel1" runat="server" Height="100%" Width="77px">
                <div style="background-position: center center; height: 67%; background-image: url('Picture/Icon/sanpham.png'); background-repeat: no-repeat;">
                </div>
                <asp:HyperLink ID="btnThemTaiKhoan"
                    NavigateUrl="QuanLySanPham.aspx" runat="server">Quản lý sản phẩm</asp:HyperLink>
            </asp:Panel>
        </div>
        <div style="margin-top: 40px">
        <center>
            <b>
                <h2>
                    QUẢN LÝ ĐƠN HÀNG
                </h2>
            </b>
        </center>
    </div>
    </div>
    
    <div style="width: 1219px">

        

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AcountName,ProductID" DataSourceID="SqlDataSource1" 
            EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="1211px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <%--<asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:BoundField DataField="AcountName" HeaderText="Tài khoản" ReadOnly="True" SortExpression="AcountName" />
                <asp:BoundField DataField="ProductID" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Date" HeaderText="Ngày đặt hàng" SortExpression="Date" />
                <asp:CheckBoxField DataField="Status" HeaderText="Trạng thái" SortExpression="Status" />
                <asp:BoundField DataField="Number" HeaderText="Số lượng" SortExpression="Number" />

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuildingMaterialsConnectionString2 %>" DeleteCommand="DELETE FROM [AccountProduct] WHERE [AcountName] = @AcountName AND [ProductID] = @ProductID" InsertCommand="INSERT INTO [AccountProduct] ([AcountName], [ProductID], [Date], [Status], [Number]) VALUES (@AcountName, @ProductID, @Date, @Status, @Number)" SelectCommand="SELECT * FROM [AccountProduct]" UpdateCommand="UPDATE [AccountProduct] SET [Date] = @Date, [Status] = @Status, [Number] = @Number WHERE [AcountName] = @AcountName AND [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="AcountName" Type="String" />
                <asp:Parameter Name="ProductID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AcountName" Type="String" />
                <asp:Parameter Name="ProductID" Type="Int64" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="Number" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="Number" Type="Int32" />
                <asp:Parameter Name="AcountName" Type="String" />
                <asp:Parameter Name="ProductID" Type="Int64" />
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

