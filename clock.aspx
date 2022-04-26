<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clock.aspx.cs" Inherits="web.clock" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Eat Fit！食得健康！</title>
        <!--下方什么viewport wid啥的一定要添加-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
        <!--引入bootstrap-->
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%--  引入ueditor--%>
        <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
        <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
        <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
  <%--  引入css样式表--%>
        <link rel="stylesheet" type="text/css" href="/public/css/clock.css"></link>
</head>
<body style="background:#f7f7f7">
     <!--导航条-->
        <nav class="navbar navbar-fault header"  id="homepagenav" role="navigation">
            <!--container-fluid可以随窗口变化-->
        <div class="container-fluid">     
              <ul class="nav navbar-nav  nav-pills"><!--navbar设置nav元素为导航条组件-->
                <!--navbar-brand——设置导航条组件内的品牌图标 图片太大 位置会走到下面去 所以不添加-->
                    <li ><a href="homepage.html" class="logo"><img src="../public/img/logo.png"></a></li>
                    <li><a href="allgoods.aspx" class="info">全部商品</a></li>
                    <!--下拉导航栏-->
                    <li class="dropdown">
                        <a href="/zixun" class="dropdown-toggle info " data-toggle="dropdown"><!--datatoggle为了表明下拉下面的下拉菜单为了dropdown服务-->
                           咨询频道
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li ><a href="ifmpage.html">知识科普</a></li>
                            <li class="divider"></li> <!--下拉菜单分割线-->
                            <li><a href="clock.aspx">一起来讨论</a></li>
                        </ul>
                    </li>
                          <li><a href="aboutus.html" class="info">关于我们</a></li>
                    <!--搜索框-->
                    <li>
                        <form  class="navbar-form navbar-right info" style="margin-top:25px;margin-left:80px;" role="search">
                     <div class="form-group">
                    <input type="text" placeholder="Search"  class="form-control"/>
                     <!--button按钮样式-->
                      <button type="button" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-search"></span> 
                      </button>
                       </form>
                    </div>
                    </li>
                  <!--搜索框-->
                  <li class="tixing" ><a href="homepage.html" ><img src="../public/img/homeregis.png"></a></li>
                  <li  class="tixing" ><a href="homepage.html" style="margin-left: 0px;"><img src="../public/img/homecart.png"></a></li>
                </ul>
        </div>
        <div>   
            </div>
        </nav>
  <!--导航条-->    
       <div class="row headerpic" >
           <div class="col-12 "><img src="../public/img/wall.png"></div>
       </div>

  



    <form id="form1"  style="display:block" runat="server">
        
        <asp:LinkButton ID="gotopub" class="btnGotopub" runat="server" OnClick="gotopub_Click"><img src="../public/img/pubbtn.png"></asp:LinkButton>

    <%--    显示打卡列表--%>
        
      <asp:DataList ID="pub_datalist" class="containboxbox" runat="server"  RepeatColumns="1"  Width="800px" RepeatDirection="Vertical">
<ItemTemplate>
    <a href="clockdetail.aspx?pb_id=<%# Eval("pb_id") %>">
    <div class="listbox ></div>
        
             <p class="authortxt" style="font-size: 22px;
    color: #a39075;">@<%#  Eval("pb_author") %></p>
         <p class="titletxt"><%#  Eval("pb_title") %></p>
         <p class="timetxt" ><%#  Eval("pb_time") %></p>
         <p class="timetxt" >连续打卡:<%#  Eval("pb_days") %> days</p>
           
    </div>
     </a>
</ItemTemplate>

        </asp:DataList>


      
<%--        <div class="editbox">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="输入标题"></asp:TextBox>
         <script id="editor" type="text/plain"></script>
                    <script type="text/javascript">
                //实例化编辑器
                //建议使用工厂方法getEditor创建和引用编辑器实例
                UE.getEditor('editor');
            </script>
        <asp:Button ID="Button1" runat="server" Text="发布" />
        </div>--%>
       





    </form>








    <!--回到顶部-->
    <a class="btn btn-default " href="#" role="button" style="position:fixed;right:0;bottom:0;background: rgb(187,29,57)">
        <!--BOOTSTRAP自带样式-->
        <span class="glyphicon glyphicon-chevron-up" style="color:#fff;"></span>
            </a>
    <footer>
            <img src="../public/img/footer1.png"></div>
    </footer>
</body>
</html>
