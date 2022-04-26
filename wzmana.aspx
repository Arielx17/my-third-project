<%@ Page Title="" Language="C#" MasterPageFile="~/mana_list.Master" AutoEventWireup="true" CodeBehind="wzmana.aspx.cs" Inherits="web.wzmana" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mana" runat="server">
    <div class="layup">
          <div id="find">
                <input type="search" class="finds" id="findd" placeholder="搜索用户名">
                <button class="findimg"></button>
          </div>
          <div><button id="tjbtn" class="tjia" style="text-decoration:none;color:white;"><a href="wzinsert.aspx" style="text-decoration:none;color:white;">添加</a></button></div>
    </div>
    <div class="grid">
        <asp:GridView ID="gvWenzhang" runat="server" AutoGenerateColumns="False" CellPadding="15" ForeColor="#333333" GridLines="None" AllowPaging="True" CellSpacing="1" OnPageIndexChanging="gvWenzhang_PageIndexChanging" OnRowDataBound="gvWenzhang_RowDataBound" OnRowDeleting="gvWenzhang_RowDeleting" Width="1200px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="wztitle" HeaderText="文章题目" />
                <asp:BoundField DataField="wzauthor" HeaderText="作者" />
                <asp:BoundField DataField="wztime" HeaderText="发布时间" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField>
                    <ItemTemplate>
                    <a href="wzupdate.aspx?wzId=<%# Eval("wzId") %>">修改</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
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
