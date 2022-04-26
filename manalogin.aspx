<%@ Page Title="" Language="C#" MasterPageFile="~/mana_list.Master" AutoEventWireup="true" CodeBehind="manalogin.aspx.cs" Inherits="web.manalogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mana" runat="server">
    <div class="tan_box">
        <div style="text-align:center;color:white;margin-top:3%;font-size:25px;position:absolute;margin-left:12%">修改资料</div>  

        <div style="margin-top:29%;width:20%;float:left;font-size:21px;color:white;margin-left:5%;">用户名</div><asp:TextBox ID="txtManaName" runat="server" style="text-align:center;color:white;margin-top:8%;border:0;margin-left:0%;width:20%;height:7%;position:absolute;float:left;color:black;font-size:21px;"></asp:TextBox><br />  
        <div style="margin-top:49%;width:20%;float:left;font-size:21px;color:white;margin-left:-20%;">密&nbsp;&nbsp;&nbsp;码</div><asp:TextBox ID="txtManaPwd" runat="server" style="text-align:center;color:white;margin-top:14%;border:0;margin-left:0%;width:20%;height:7%;position:absolute;float:left;color:black;font-size:21px;"></asp:TextBox><br />
        <div><asp:CheckBox ID="check" runat="server" style="margin-top:65%;width:20%;float:left;font-size:21px;color:white;margin-left:10%;"/><div style="margin-top:66%;width:30%;float:left;font-size:18px;color:white;margin-left:-15%;">是否记住我</div></div><br />
        <asp:Button ID="btnRem" runat="server" Text="登录" style="margin-top:10%;margin-left:35%;width:30%;height:11%;font-size:23px;color:#bb1d39;background-color:white;border-radius:15px;border:0;" OnClick="btnRem_Click"/>
        
    </div>
</asp:Content>
