<%@ Page Title="" Language="C#" MasterPageFile="~/headAfood.Master" AutoEventWireup="true" CodeBehind="allgoods.aspx.cs" Inherits="web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="middle" runat="server">
    <div class="middle">
        <img class="products" src="public/img/products.png">
        <p class="all">商品介绍</p>
        <div class="line"></div>
        <div class="menu">
            <p class="menu1"> 全部商品</p>
            <p class="menu1"> 最新上线</p>
            <p class="menu1"> 人气套餐</p>
            <p class="menu1"> 健康素食</p>
            <p class="menu1"> 低脂零食</p>
        </div>
        <div class="food">
            <asp:DataList ID="dlGoods" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="1550px" OnItemCommand="dlGoods_ItemCommand">
                <ItemTemplate>
                    <div class="food1"><a href="goodsdetail.aspx?GId=<%# Eval("goodsId") %>"><img style="width:100%;" src=<%# Eval("goodsImage") %> ></a>
                    <p class="ftext"><%# Eval("goodsName") %></p>
                    <p class="fmoney"><%# "￥"+Eval("goodsPrice") %></p>
                    <a href="goodsdetail.aspx?GId=<%# Eval("goodsId") %>"><p class="detail">详情了解</p></a>
                    <asp:Button ID="btnAdd" runat="server" Text="加入购物车" Class="cart" CommandName="Edit"/></div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>

