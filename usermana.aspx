<%@ Page Title="" Language="C#" MasterPageFile="~/mana_list.Master" AutoEventWireup="true" CodeBehind="usermana.aspx.cs" Inherits="web.usermana" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mana" runat="server">
    <div class="layup">
                    <div id="find">
                        <input type="search" class="finds" id="findd" placeholder="搜索用户名">
                        <button class="findimg"></button>
                    </div>
                    <%--<button id="tjbtn" class="tjia">添加</button>--%>
                </div>
    <div class="grid">
    <asp:GridView ID="gvUserMana" runat="server" AutoGenerateColumns="False" CellPadding="15" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="gvUserMana_PageIndexChanging" OnRowDataBound="gvUserMana_RowDataBound" OnRowDeleting="gvUserMana_RowDeleting" Width="1200px" CellSpacing="1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="userName" HeaderText="用户名" />
            <asp:BoundField DataField="password" HeaderText="密码" />
            <asp:BoundField DataField="type" HeaderText="角色" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <a href="update.aspx?userId=<%# Eval("userId") %>">修改</a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"  />
        <HeaderStyle BackColor="#bb1d39" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#bb1d39" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        </div>
</asp:Content>
