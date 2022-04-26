<%@ Page Title="" Language="C#" MasterPageFile="~/headAfood.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="web.main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="middle" runat="server">
     <link rel="stylesheet" href="public/css/main.css" type="text/css"/>
    <style type="text/css"></style>
    <div class="container">
    <div class="body">
                <div class="title">我的账号</div>
                    <div class="right1">
                        <div class="rtitle">个人主页</div>
                        <img src="public/img/我的.png" class="head">
                         <asp:Datalist runat="server" id="username" class="info1" >
                             <ItemTemplate>
                                  <%#Eval("userName") %>
                                 </ItemTemplate>
                             </asp:Datalist>
                        <div class="info2">我的订单</div>
                                <asp:Datalist runat="server" id="orders" >
                                    <ItemTemplate>
                                        <div class="infobig">
                                        <div class="info3">￥ <%#Eval("goodsPrice") %></div>
                                            <div class="foodname"> <%#Eval("goodsName") %></div>
                                            <asp:Button ID="delete" runat="server" Text="删除" CssClass="btnClass" />
                                        </div>
                                    </ItemTemplate>
                                </asp:Datalist>
                    </div>
                </div>
            </div>
</asp:Content>
