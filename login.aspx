<%@ Page Title="" Language="C#" MasterPageFile="~/headAfood.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="web.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="middle" runat="server">
   <link rel="stylesheet" href="public/css/login.css" type="text/css"/>
    <style type="text/css"></style>
     <div class="container">
          <div class="body" style=" background-image: url('public/img/登录背景.png');">
                <div class="food"><img src="public/img/食物.png"></div>
                <div class="signinbox">
                    <a class="title" >用户名</a>
                    <asp:TextBox ID="name" runat="server" CssClass="signin"></asp:TextBox><br/>
                    <a class="title" >密码</a>
                    <asp:TextBox ID="pwd" runat="server" CssClass="signin"></asp:TextBox><br/>
                    <asp:Button ID="RemUser" runat="server" Text="登录" OnClick="RemUser_Click" class="submit"/>
                    <a href="register.aspx" style="float:left;margin-top:10%;margin-left:50%;color:gray;font-size:15px">没有账号？请先注册</a>
                </div>
          </div>
      </div>
</asp:Content>
