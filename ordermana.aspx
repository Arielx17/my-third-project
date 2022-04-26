<%@ Page Title="" Language="C#" MasterPageFile="~/mana_list.Master" AutoEventWireup="true" CodeBehind="ordermana.aspx.cs" Inherits="web.ordermana" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mana" runat="server">
    <%-- 搜索框--%>
    <div class="layup">
          <div id="find">
                <input type="search" class="finds" id="findd" placeholder="搜索用户名">
                <button class="findimg"></button>
          </div>
          <%--<button id="tjbtn" class="tjia">添加</button>--%>
    </div>

    <div class="grid">
        <asp:GridView ID="gvOrderMana" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="15" CellSpacing="1" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvOrderMana_PageIndexChanging" OnRowDataBound="gvOrderMana_RowDataBound" OnRowDeleting="gvOrderMana_RowDeleting" Width="1200px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="userName" HeaderText="收货人姓名" />
                <asp:BoundField DataField="userPhone" HeaderText="收货人电话" />
                <asp:BoundField DataField="userAddress" HeaderText="收货人地址" />
                <asp:BoundField DataField="orderGoods" HeaderText="订单内容" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField>
                    <ItemTemplate>
                    <a href="orderupdate.aspx?orderId=<%# Eval("orderId") %>">修改</a>
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
