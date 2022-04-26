<%@ Page Title="" Language="C#" MasterPageFile="~/headAfood.Master" AutoEventWireup="true" CodeBehind="car.aspx.cs" Inherits="web.car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="middle" runat="server">
     <link rel="stylesheet" href="public/css/car.css" type="text/css"/>
    <style type="text/css">
        .add{
            width:20px;
            height:22px;
            text-align:center;
        }
        .reduce{
            width:20px;
            height:22px;
            text-align:center;
        }
        
    </style>
    <script>
         $(document).ready(function ()
        {
            var n = $("#num");
            $('.reduce').attr('disabled',true);//初始值为1 减号失效
            $(".add").click(function(){ 
                n.val(Math.abs(parseInt(n.val()))+1);//parseInt解析字符串，转化为整数
                if (parseInt(n.val())!=1){
                    $('.reduce').attr('disabled',false);
                };
            }) 
            $(".reduce").click(function(){
                n.val(Math.abs(parseInt(n.val()))-1);
                if (parseInt(n.val())==1){
                    $('.reduce').attr('disabled',true);
                };
            })
        })
    </script>
    <div class="container">
    <div class="body">
    <div class="shopping"><img src="public/img/shopping.png"></div>
    <div class="shopping"><h1>购 物 车</h1>
        <%--<input type="checkbox" name="add" value="广东省 珠海市 香洲区 唐家湾镇 金凤路18号北京师范大学珠海分校 
            13531234567 小杨 (收)">广东省 珠海市 香洲区 唐家湾镇 金凤路18号北京师范大学珠海分校<br>
             13531234567 小杨 (收)--%>
        <div class="proc">
            <asp:CheckBox ID="address" runat="server" />
            <asp:DataList ID="user" runat="server">
             <ItemTemplate> 
                 <div style="width:1600px">
                <%#Eval("rAddress") %><br /><%#Eval("phoneNum") %> <%#Eval("rName") %>（收）
                 </div>
                 </ItemTemplate>
          </asp:DataList>
            <asp:Button ID="ok" runat="server" Text="确认" class="btnok" OnClick="ok_Click"  />
        </div>
        
    </div>
    <div class="goods">
        <div class="goodstitle">
            <div class="gname1">商品名称</div>
            <div class ="gname2">单价 </div>
            <div class ="gname2">数量</div>
            <div class ="gname2">总价</div>
            <div class ="gname3"></div>
        </div>
        <asp:DataList ID="shoppingcar" runat="server" class="infobox">
            <ItemTemplate>
                <div class="ginfo1"><%#Eval("goodsName") %></div>
                <div class="ginfo2">￥ <%#Eval("goodsPrice") %></div>
                <div class="ginfo3"><input class="reduce" type="button" value="-" />
                    <input id="num" type="text" value=<%# Eval("goodsNum") %> style="width:30px;height:18px;text-align:center;margin-left:-4px" /><input class="add" type="button" value="+" /></div>
                <div class="ginfo3">￥ <%#Eval("goodsPrice") %></div>
                <div style="margin:20px">
                    <asp:Button ID="delete" runat="server" Text="删除" class="btnok"/>
                </div>              
             </ItemTemplate>
        </asp:DataList>
    </div>
    <div class="payment">
        <div class="pricefont">实付款：</div>
        <div class="price">￥322.00 </div>
        <asp:Label ID="a" runat="server" Text="" CssClass="address"></asp:Label><br/>
        <asp:Label ID="n" runat="server" Text="" CssClass="address1"></asp:Label>
        <asp:Label ID="p" runat="server" Text="" CssClass="address1"></asp:Label>
    </div>
        <asp:Button ID="submit1" class="submit1" runat="server" Text="提交订单" OnClick="submit1_Click" />
    </div>
</div>
</asp:Content>
