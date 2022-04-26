<%@ Page Title="" Language="C#" MasterPageFile="~/mana_list.Master" AutoEventWireup="true" CodeBehind="orderupdate.aspx.cs" Inherits="web.orderupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mana" runat="server">
    <div class="tan_box1">
        <div style="text-align:center;color:white;margin-top:3%;font-size:25px;position:absolute;margin-left:12%">修改订单</div>
        <div style="margin-top:25%;width:20%;float:left;font-size:21px;color:white;margin-left:5%;">收货人姓名</div><asp:TextBox ID="txtGetName" runat="server" style="text-align:center;color:white;margin-top:8%;border:0;margin-left:3%;width:20%;height:7%;position:absolute;float:left;color:black;font-size:21px;"></asp:TextBox><br />  
        <div style="margin-top:42%;width:20%;float:left;font-size:21px;color:white;margin-left:-20%;">收货人电话</div><asp:TextBox ID="txtGetNum" runat="server" style="text-align:center;color:white;margin-top:14%;border:0;margin-left:3%;width:20%;height:7%;position:absolute;float:left;color:black;font-size:21px;"></asp:TextBox><br /> 
        <div style="margin-top:60%;width:20%;float:left;font-size:21px;color:white;margin-left:-20%;">收货人地址</div><asp:TextBox ID="txtGetAdr" runat="server" style="text-align:center;color:white;margin-top:20%;border:0;margin-left:3%;width:20%;height:7%;position:absolute;float:left;color:black;font-size:21px;"></asp:TextBox><br />
        <div style="margin-top:77%;width:20%;float:left;font-size:21px;color:white;margin-left:-20%;">订单内容&nbsp;&nbsp;&nbsp;</div><asp:TextBox ID="txtOrder" runat="server" style="text-align:center;color:white;margin-top:26%;border:0;margin-left:3%;width:20%;height:7%;position:absolute;float:left;color:black;font-size:21px;"></asp:TextBox><br />
        <asp:Button ID="btn_update" runat="server" Text="提交修改" style="margin-top:89%;margin-left:13%;width:30%;height:11%;font-size:23px;color:#bb1d39;background-color:white;border-radius:15px;border:0;" OnClick="btn_update_Click"/>
    </div>
</asp:Content>
