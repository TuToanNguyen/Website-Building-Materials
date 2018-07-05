<%@ Page Language="C#" MasterPageFile="~/Manages/Account.master" AutoEventWireup="true" 
    CodeFile="QuanLySanPham.aspx.cs" Inherits="Manages_QuanLySanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceBody" runat="Server">
    <link href="StyleAccount/pageManageNews.css" rel="stylesheet" type="text/css" />
    <div class="bannerManager">
        <div class="menutop" style="width: 85px">
            <div style="background-position: center center; height: 67%; background-image: url('Picture/Icon/Order.png'); background-repeat: no-repeat;">
            </div>
            <asp:HyperLink ID="HyperLink2"
                    NavigateUrl="QuanlyDonHang.aspx" runat="server">Quản lý đơn hàng</asp:HyperLink>
        </div>
        <div class="menutop" style="width: 102px">
            <asp:Panel ID="Panel1" runat="server" Height="100%">
                <div style="background-position: center center; height: 67%; background-image: url('Icon/add-1-icon.png'); background-repeat: no-repeat;">
                </div>
                <asp:HyperLink ID="btnThemTaiKhoan"
                    NavigateUrl="ThemSanPham.aspx" runat="server">Thêm sản phẩm</asp:HyperLink>
            </asp:Panel>
        </div>
        <div style="margin-bottom: 4px">
        <center>
            <b>
                <h2 style="height: 39px; width: 878px; margin-top:40px">QUẢN LÝ SẢN PHẨM
                </h2>
            </b>
        </center>
    </div>
    </div>
    
    <div style="width: 1235px">

        <%--<div align="left" class="auto-style9">
                    Nhập từ khóa&nbsp;<asp:TextBox ID="txtTimKiem" runat="server" Width="190px" Height="25px"></asp:TextBox>
                    <asp:Button ID="btnTimKiem" runat="server" Text="TimKiem" OnClick="btnTimKiem_Click" />
                    &nbsp
                    <asp:Label id="lbthongbao" runat="server"/>
                </div>--%>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" EnableModelValidation="True" Width="1213px" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" AllowSorting="True">
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
                <asp:BoundField DataField="ProductID" HeaderText="Mã sản phẩm" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />                
                <asp:BoundField DataField="Title" HeaderText="Tên sản phẩm" SortExpression="Title" />
                <asp:BoundField DataField="Money" HeaderText="Giá" SortExpression="Money" />
                <asp:BoundField DataField="Maker" HeaderText="Hãng sản xuất" SortExpression="Maker" />
                <asp:BoundField DataField="Color" HeaderText="Màu sắc" SortExpression="Color" />
                <asp:BoundField DataField="Origin" HeaderText="Xuất xứ" SortExpression="Origin" />
                <asp:BoundField DataField="Features" HeaderText="Tính năng" SortExpression="Features" />

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
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" HorizontalAlign="Center" ForeColor="#003399"/>
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuildingMaterialsConnectionString2 %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([Title], [Money], [Maker], [Goods], [Color], [Features], [Origin]) VALUES (@Title, @Money, @Maker, @Goods, @Color, @Features, @Origin)" SelectCommand="SELECT [Title], [Money], [Maker], [Goods], [Color], [Features], [ProductID], [Origin] FROM [Products]" UpdateCommand="UPDATE [Products] SET [Title] = @Title, [Money] = @Money, [Maker] = @Maker, [Goods] = @Goods, [Color] = @Color, [Features] = @Features, [Origin] = @Origin WHERE [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Money" Type="String" />
                <asp:Parameter Name="Maker" Type="String" />
                <asp:Parameter Name="Goods" Type="String" />
                <asp:Parameter Name="Color" Type="String" />
                <asp:Parameter Name="Features" Type="String" />
                <asp:Parameter Name="Origin" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Money" Type="String" />
                <asp:Parameter Name="Maker" Type="String" />
                <asp:Parameter Name="Goods" Type="String" />
                <asp:Parameter Name="Color" Type="String" />
                <asp:Parameter Name="Features" Type="String" />
                <asp:Parameter Name="Origin" Type="String" />
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


