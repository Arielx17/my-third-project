<%@ Page Title="" Language="C#" MasterPageFile="~/headAfood.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="web.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="middle" runat="server">
    <div class="container" >
        <link rel="stylesheet" href="public/css/register.css" type="text/css"/>
    <style type="text/css"></style>
    <div class="body"  style="background-image: url('public/img/登录背景.png');background-repeat: no-repeat;width:1300px;height:60%;">
        <div class="info2">
        <a class="title">用户名</a>
         <asp:TextBox ID="name" runat="server" class="signin"></asp:TextBox>  <br />
        <a class="title">密码</a>
        <asp:TextBox ID="pwd" runat="server" class="signin"></asp:TextBox><br />
        <a class="title">电话</a>
        <asp:TextBox ID="phone" runat="server" class="signin"></asp:TextBox><br />
        <a class="title">邮箱</a>
        <asp:TextBox ID="email" runat="server" class="signin"></asp:TextBox><br />   
        <a class="title">收货人</a>
        <asp:TextBox ID="rName" runat="server" class="signin"></asp:TextBox><br />
        <a class="title">收货地址</a>
        <asp:TextBox ID="rAdd" runat="server" class="signin"></asp:TextBox><br />
            <asp:Button ID="submit" runat="server" Text="注册" class="submit" OnClick="submit_Click"/>
        </div> 
    </div>
    </div>
</asp:Content>
