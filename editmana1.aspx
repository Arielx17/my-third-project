<%@ Page Title="" Language="C#" MasterPageFile="~/mana_list.Master" AutoEventWireup="true" CodeBehind="editmana1.aspx.cs" Inherits="web.editmana1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mana" runat="server">
    <div class="right2">
        商品图片<br/>
        <asp:Image ID="img" runat="server" Height="100px" />
        <asp:FileUpload ID="imgUpload" runat="server" />
        <br />
        <asp:Button ID="btnSave" runat="server" Text="上传" OnClick="btnSave_Click" />
        <br />
        商品名称<br/><asp:TextBox ID="txtName" runat="server" CssClass="edittext"></asp:TextBox><br/>
        价格<br/><asp:TextBox ID="txtPrice" runat="server" CssClass="edittext"></asp:TextBox><br/>
        库存<br/><asp:TextBox ID="txtStock" runat="server" CssClass="edittext"></asp:TextBox><br/>
        商品信息<br/><asp:TextBox ID="txtInfo" runat="server" CssClass="edittext"></asp:TextBox><br />
        <asp:Button ID="btnUpdate" runat="server" Text="发布商品" CssClass="update" OnClick="btnUpdate_Click"/>
    </div>
</asp:Content>
