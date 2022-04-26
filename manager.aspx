<%@ Page Title="" Language="C#" MasterPageFile="~/mana_list.Master" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="web.manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mana" runat="server">
            <div id="dlkuang" >
            <div class="glyimg"><img src="/public/img/gly.png"></div><br><br> 
            <div class="glydl">管理员登录</div>
            <div class="text">账号&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="username" placeholder="请输入用户名"></div><br>
            <div class="text">密码&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" id="userpwd" placeholder="请输入密码"></div><br>
            <button id="sign">登录</button>
        </div> 
</asp:Content>
