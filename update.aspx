<%@ Page Title="" Language="C#" MasterPageFile="~/mana_list.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="web.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mana" runat="server">
    <div class="tan_box">
        <div style="text-align:center;color:white;margin-top:3%;font-size:25px;position:absolute;margin-left:12%">修改资料</div>
        <div style="margin-top:29%;width:20%;float:left;font-size:21px;color:white;margin-left:5%;">用户名</div><asp:TextBox ID="txtUserName" runat="server" style="text-align:center;color:white;margin-top:8%;border:0;margin-left:0%;width:20%;height:7%;position:absolute;float:left;color:black;font-size:21px;"></asp:TextBox><br />        
        <div style="margin-top:49%;width:20%;float:left;font-size:21px;color:white;margin-left:-20%;">密&nbsp;&nbsp;&nbsp;码</div><asp:TextBox ID="txtUserPwd" runat="server" style="text-align:center;color:white;margin-top:14%;border:0;margin-left:0%;width:20%;height:7%;position:absolute;float:left;color:black;font-size:21px;"></asp:TextBox><br />       
        <div style="margin-top:69%;width:20%;float:left;font-size:21px;color:white;margin-left:-20%;">角&nbsp;&nbsp;&nbsp;色</div><asp:TextBox ID="txtUserType" runat="server" style="text-align:center;color:white;margin-top:20%;border:0;margin-left:0%;width:20%;height:7%;position:absolute;float:left;color:black;font-size:21px;"></asp:TextBox><br />
        <asp:Button ID="btn_update" runat="server" Text="提交修改" style="margin-top:80%;margin-left:13%;width:30%;height:11%;font-size:23px;color:#bb1d39;background-color:white;border-radius:15px;border:0;" OnClick="btn_update_Click"/>
    </div>
</asp:Content>
