<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editmana.aspx.cs" Inherits="web.editmana" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
       <link rel="stylesheet" href="public/css/work.css" type="text/css"/>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
        <script>
            $("#triangle").hide();
            $(document).ready(function(){
                //列表点击变化
                var url = location.href.substring(location.href.lastIndexOf("/")+1,location.href.length);
                $("#menu").find("a[href='" + url + "']").parent().css({ "background-color": "rgb(117,22,43)"}).parent().css({"background-color":"rgb(117,22,43)","margin-left":"-10px"});
                $("#triangle").show();                 
            });
        </script>
        <style type="text/css">
        .container
        {
            height: 750px;
            width: auto;
            background-color: rgb(232,232,232);  
            z-index:1;
        }
        .left
        {
            height: 750px;
            width: 10%;
            position:relative;
            background-color: rgb(187,29,57);
            float:left;
        }
        .logo
        {
            height: 100px;
            width: 100px;
            float: left;
            margin-left: 35px;
            margin-top: 20%;
            clear: both;
        }
        #info
        {
            height:10%;
            width:90%;
            margin-top:50%;
            margin-left: -20%;
            float:left;
            line-height:30px;
            letter-spacing:5px;
            text-align:center; 
            cursor:pointer;
            padding:0px 15%;
            background-color: rgb(187,29,57);
            border-radius: 11px;
            list-style:none;
            clear: both;
        }
        #buc
        {
            height:10%;
            width:80%;
            margin-left: -3%;
            float:left;
            line-height:30px;
            letter-spacing:5px;
            text-align:center; 
            cursor:pointer;
            padding:7px 15%;
            background-color:rgb(187,29,57);
            list-style:none;
            clear: both;
        }
                #triangle {
			/* 字后面的三角形 */
            height: 20px;
            width: 20px;
            margin-top: -26%;
            margin-right: -10%;
            float: right;
            background: url("/public/img/triangle.png");
            background-repeat: no-repeat;
            clear: both;
        }
        #info a{
            font-size:17px;
            font-weight: bold;
            color:#fff;
            float: left;
            margin-left: -5%;
            text-decoration:none;
        }
        #dlkuang
        {
            height: 400px;
            width: 400px;
            margin-top: -35%;
            margin-left: 40%;
            border-radius: 50px;
            background-color: white;
            position: relative;
        }
        .glyimg
        {
            height: 48px;
            width: 48px;
            margin-left: 170px;
            margin-top: -93%;
            float: left;
            clear: both;
        }
        .glydl
        {
            font-size:17px;
            font-weight: bold;
            color:black;
            margin-left: 150px;
            margin-top: 10%;
            text-decoration:none;
        }
        .text
        {
            margin-left: 20%;
            margin-top: 5%;
        }
        #sign
        {
            height: 30px;
            width: 130px;
            margin-top: 65px;
            margin-left: 130px;
            text-align: center;
            border: none;
            border-radius: 11px;
            background-color: rgb(187,29,57);
        }
        #sign a
        {
            font-size:17px;
            color:#fff;
            text-decoration:none;
        }
          .right {
                height: 750px;
                width: 90%;
                position: relative;
                background-color: white;
                margin-top: -45%;
                margin-right: 0%;
                float: right;
                clear: both;
            }

            .layup {
                height: 5%;
                width: 80%;
                margin-top: 20px;
                margin-left: 0%;
            }

            #find {
                height: 30px;
                width: 250px;
                float: left;
                border: solid rgb(233,233,233) 2px;
                border-radius: 11px;
                margin-top: 0px;
                margin-left: 0%;
                clear: both;
            }

            .finds {
                height: 30px;
                width: 210px;
                float: left;
                border: 0px;
                margin-top: 0%;
                margin-left: 2%;
                clear: both;
            }

            .findimg {
                height: 30px;
                width: 30px;
                background: url("../../public/img/search.png");
                float: right;
                margin-top: -30px;
                margin-right: 0%;
                border: 0px;
                clear: both;
            }

            .tjia {
                height: 30px;
                width: 55px;
                border-radius: 5px;
                background-color: #bb1d39;
                color: white;
                text-align: center;
                float: right;
                border: 0px;
                margin-top: -31px;
                margin-right: 1%;
                clear: both;
            }
            .content
            {
                height:100%;
                width:100%;
                margin-top:2%;
                margin-left:5%;
            }
            .grid
            {
                margin-top:2%;
            }
            .tan_box
            {
                width:30%;
                height:70%;
                margin-left:30%;
                margin-top:8%;
                border-radius:15px;
                background: rgba(187, 29, 57, 0.91);
                z-index:2;
            }
            .tan_box1
            {
                width:35%;
                height:90%;
                margin-left:30%;
                margin-top:3%;
                border-radius:15px;
                background: rgba(187, 29, 57, 0.91);
                z-index:2;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div id="menu" class="left">
                <a href="homepage.html"><div class="logo"><img src="public/img/logo2.png"></div></a>
                <ul>
                    <li id="info"><div id="buc"><a href="#">用户数据</a><div id="triangle"></div></div></li>
                    <li id="info"><div id="buc"><a href="ordermana.aspx">订单管理</a><div id="triangle"></div></div></li>
                    <li id="info"><div id="buc"><a href="usermana.aspx">用户管理</a><div id="triangle"></div></div></li>
                    <li id="info"><div id="buc"><a href="editmana.aspx">商品管理</a><div id="triangle"></div></div></li>
                    <li id="info"><div id="buc"><a href="wzmana.aspx">资讯发布</a><div id="triangle"></div></div></ li>
                </ul>
            </div>
         
                <asp:DataList ID="dlEdit" runat="server" RepeatColumns="5" Width="90%" CellPadding="35" CellSpacing="10" RepeatDirection="Horizontal" OnItemCommand="dlEdit_ItemCommand">
                <ItemTemplate>
                    <div class="food2">
                        <a href="goodsdetail.aspx?GId=<%# Eval("goodsId") %>"><img style="width:100%" src=<%# Eval("goodsImage") %> /></a>
                        <p class="pmoney"><%# "￥"+Eval("goodsPrice") %></p>
                        <a href="editmana1.aspx?GId=<%# Eval("goodsId") %>"><p class="detail2">编辑商品</p></a>
                        <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete"  class="cart2">删除</asp:LinkButton>

                    </div>
                </ItemTemplate>
            </asp:DataList>
            
            
        </div>
    </form>
</body>
</html>
