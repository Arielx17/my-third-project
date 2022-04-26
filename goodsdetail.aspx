<%@ Page Title="" Language="C#" MasterPageFile="~/headAfood.Master" AutoEventWireup="true" CodeBehind="goodsdetail.aspx.cs" Inherits="web.goods1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="middle" runat="server">
    <script>
        $(document).ready(function ()
        {
            var n = $("#middle_num");
            $('#reduce').attr('disabled',true);//初始值为1 减号失效
            $("#add").click(function(){ 
                n.val(Math.abs(parseInt(n.val()))+1);//parseInt解析字符串，转化为整数
                if (parseInt(n.val())!=1){
                    $('#reduce').attr('disabled',false);
                };
            }) 
            $("#reduce").click(function(){
                n.val(Math.abs(parseInt(n.val()))-1);
                if (parseInt(n.val())==1){
                    $('#reduce').attr('disabled',true);
                };
            })
        })

    </script>
    <img class="products" src="public\img\products.png">
    <p class="all">商品主页</p>
    <div class="line"></div>
    <div class="detail1">
        <img style="height:600px" src=<% = Goods.GImage %> />
        <div class="fdetail">
            <p class="tdetail"><% = Goods.GName %></p>
            <p class="tdetail">￥<% = Goods.GPrice %></p>
            <div class="gray">数量
                <div class="ar"><input id="reduce" type="button" value="-" /><asp:TextBox ID="num" type="text" runat="server">1</asp:TextBox><input id="add" type="button" value="+" /></div>
            <asp:Button ID="btnAdd" runat="server" Text="加入购物车" Class="cart1" OnClick="btnAdd_Click"/>
            </div>
            <div class="gray1"><% = Goods.GInfo %></div>
        </div>
    </div>
    <img class="products" src="public/img/products.png">
    <p class="all">商品详情</p>
    <div class="line"></div>
</asp:Content>
