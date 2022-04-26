<%@ Page Title="" Language="C#" MasterPageFile="~/mana_list.Master" AutoEventWireup="true" CodeBehind="wzinsert.aspx.cs" Inherits="web.wzinsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mana" runat="server">
     <div class="title" >
         <asp:TextBox ID="txttitle" runat="server" style="width:30%;margin-top:0%;margin-left:27%;border:0;font-size:30px;text-align:center" placeholder="请在此处输入标题"></asp:TextBox>

     </div>

      <div class="author" style="margin-top:2%;margin-left:70%;">作者：
          <asp:TextBox ID="txtauthor" runat="server" style="border:0;font-size:15px;" placeholder="请在此处输入作者"></asp:TextBox>
    </div>

    <div class="author" style="margin-top:2%;margin-left:70%;">时间：
        <asp:TextBox ID="txttime" runat="server" style="border:0;font-size:15px;" placeholder="请在此处输入发布时间"></asp:TextBox>
    </div>

    <div class="p1" style="margin-top:2%;margin-left:5%;line-height:2px;">
        <asp:TextBox ID="txtp1" runat="server" style="width:80%;border:0;font-size:20px;display:block;" TextMode="multiline" rows="5" placeholder="请在此处输入内容"></asp:TextBox>
    </div>

    <div class="p2" style="margin-top:2%;margin-left:5%;line-height:2px;" >
        <asp:TextBox ID="txtp2" runat="server" style="width:80%;border:0;font-size:20px;" TextMode="multiline" rows="5" placeholder="请在此处输入内容"></asp:TextBox>
    </div>

    <div class="p3" style="margin-top:2%;margin-left:5%;line-height:2px;" >
        <asp:TextBox ID="txtp3" runat="server" style="width:80%;border:0;font-size:20px;" TextMode="multiline" rows="6" placeholder="请在此处输入内容"></asp:TextBox>
   </div>
  
    <div class="btn-update">
        <asp:Button ID="btn_add" runat="server" Text="提交文章" style="margin-top:5%;margin-left:38%;width:10%;height:18%;font-size:23px;color:white;background-color:#bb1d39;border-radius:15px;border:0;" OnClick="btn_add_Click"/>
   </div>
</asp:Content>
