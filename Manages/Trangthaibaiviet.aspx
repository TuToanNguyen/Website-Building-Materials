<%@ Page Language="C#" MasterPageFile="~/Manages/Account.master" AutoEventWireup="true" 
    CodeFile="Trangthaibaiviet.aspx.cs" Inherits="Manages_Trangthaibaiviet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceBody" runat="Server">
    <link href="StyleAccount/pageManageNews.css" rel="stylesheet" type="text/css" />
    <div class="bannerManager">
        <%--<div class="menutop">
            <div style="background-position: center center; height: 67%; background-image: url('Picture/Icon/people-icon.png'); background-repeat: no-repeat;">
            </div>
            <asp:HyperLink ID="HyperLink1"
                    NavigateUrl="Taikhoankhachhang.aspx" runat="server">Tài khoản khách hàng</asp:HyperLink>
        </div>--%>
        <div class="menutop" style="width: 78px">
            <asp:Panel ID="Panel1" runat="server" Height="100%" Width="77px">
                <div style="background-position: center center; height: 67%; background-image: url('Picture/Icon/posts.png'); background-repeat: no-repeat;">
                </div>
                <asp:HyperLink ID="btnThemTaiKhoan"
                    NavigateUrl="QuanLyBaiViet.aspx" runat="server">Quản lý bài viết</asp:HyperLink>
            </asp:Panel>
        </div>
        <div style="margin-top: 40px">
        <center>
            <b>
                <h2>
                    QUẢN LÝ TRẠNG THÁI BÀI VIẾT
                </h2>
            </b>
        </center>
    </div>
    </div>
    
    <div style="width: 1219px">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NewID" DataSourceID="SqlDataSource1" EnableModelValidation="True" Width="1209px" AllowSorting="True">
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
                <asp:BoundField DataField="NewID" HeaderText="Mã bài viết" InsertVisible="False" ReadOnly="True" SortExpression="NewID" />
                <asp:BoundField DataField="Title" HeaderText="Tiêu đề" SortExpression="Title" ReadOnly="True" />
                <asp:CheckBoxField DataField="IsPost" HeaderText="Trạng thái" SortExpression="IsPost" />
                <asp:BoundField DataField="PostDate" HeaderText="Ngày đăng" SortExpression="PostDate" ReadOnly="True" />

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
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
            <RowStyle ForeColor="#000066" HorizontalAlign="Center"/>
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuildingMaterialsConnectionString2 %>" DeleteCommand="DELETE FROM [News] WHERE [NewID] = @NewID" InsertCommand="INSERT INTO [News] ([Title], [IsPost], [PostDate]) VALUES (@Title, @IsPost, @PostDate)" SelectCommand="SELECT [NewID], [Title], [IsPost], [PostDate] FROM [News]" UpdateCommand="UPDATE [News] SET [IsPost] = @IsPost WHERE [NewID] = @NewID">
            <DeleteParameters>
                <asp:Parameter Name="NewID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="IsPost" Type="Boolean" />
                <asp:Parameter Name="PostDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="IsPost" Type="Boolean" />
                <asp:Parameter Name="PostDate" Type="DateTime" />
                <asp:Parameter Name="NewID" Type="Int64" />
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
