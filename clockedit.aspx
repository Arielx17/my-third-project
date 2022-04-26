<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeBehind="clockedit.aspx.cs" ValidateRequest="false" Inherits="web.clockedit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>一起来分享</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
        <!--引入bootstrap-->
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%--  引入ueditor--%>
        <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
        <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
        <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
     <%--  引入css样式表--%>
        <link rel="stylesheet" type="text/css" href="/public/css/clockedit.css"></link>
</head>
<body style="background:#fff1dc">
   
         <!--导航条-->
        <nav class="navbar navbar-fault header"  id="homepagenav" role="navigation">
            <!--container-fluid可以随窗口变化-->
        <div class="container-fluid">     
              <ul class="nav navbar-nav  nav-pills"><!--navbar设置nav元素为导航条组件-->
                <!--navbar-brand——设置导航条组件内的品牌图标 图片太大 位置会走到下面去 所以不添加-->
                    <li ><a href="/shouye" class="logo"><img src="../public/img/logo.png"></a></li>
                    <li><a href="/all" class="info">全部商品</a></li>
                    <!--下拉导航栏-->
                    <li class="dropdown">
                        <a href="/zixun" class="dropdown-toggle info " data-toggle="dropdown"><!--datatoggle为了表明下拉下面的下拉菜单为了dropdown服务-->
                           咨询频道
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li ><a href="/zixun">知识科普</a></li>
                            <li class="divider"></li> <!--下拉菜单分割线-->
                            <li><a href="clock.aspx">一起来讨论</a></li>
                        </ul>
                    </li>
                          <li><a href="/guanyu" class="info">关于我们</a></li>
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

     <h1 style="color:#bb1d39;margin-left:35px;" >编辑文本</h1>
    <img src="../public/img/food_edit.png"  style="float:right;margin-top:-20px;margin-left:10px;position:relative;top:-20px;"/>
    <form id="form1" runat="server">
        <div>
            <div class="txtbox">
             <asp:TextBox ID="txtTitle" CssClass="titletxt" runat="server" placeholder="点击输入标题"></asp:TextBox>
            作者：<asp:TextBox ID="txtAuthor" CssClass="txtAuthor" runat="server"></asp:TextBox>
           连续发布天数：<asp:TextBox ID="txtDays" CssClass="txtAuthor" runat="server" placeholder="连续打卡蛮一百天可获得精美礼品哦！"></asp:TextBox>
            <asp:Button ID="pub_btn" runat="server" Text="发布" OnClick="pub_btn_Click" />
            </div>

            <script id="editor" type="text/plain"></script>
            <script type="text/javascript">
                //实例化编辑器
                //建议使用工厂方法getEditor创建和引用编辑器实例
                UE.getEditor('editor');
            </script>
            
          
        </div>
    </form>
</body>
</html>
