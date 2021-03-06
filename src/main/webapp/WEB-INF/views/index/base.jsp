<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%-- <base href="<%=basePath%>"> --%>
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%-- <script type="text/javascript" src="${__static__}/bootstrap3/js/jquery2.1.4.js"></script> 
	<link rel="stylesheet" href="${__static__}/bootstrap3/css/bootstrap.css" type="text/css">
  	<script type="text/javascript" src="${__static__}/bootstrap3/js/bootstrap.js"></script>  --%>
  	<style type="text/css">
  		body a{
  			font-size:14px;
  			font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  		}
  		span{
  			font-size:14px;
  			font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  		}
  	</style>
  </head>
  
  <body style="background: #f4f4f4;"><!-- f4f4f4 -->
    <!--导航条-->
    <nav class="navbar navbar-inverse" style="border-radius: 0px;">
        <div class="container" style="margin-top:0px;">
            <div class="navbar-header">
                <a class="navbar-brand" href="${z:u('index/index')}">
                    Peng
                </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!--<form class="navbar-form navbar-left" role="search">-->
                <!--<div class="form-group">-->
                    <!--<input type="text" class="form-control" placeholder="搜索您感兴趣的内容...">-->
                <!--</div>-->
                <!--<button type="submit" class="btn btn-default">搜索</button>-->
            <!--</form>-->
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li id="home"><a href="${z:u('index/index')}">首页</a></li>
                    <li id="colormobi_generate" class="dropdown">
                        <a id="change_text" href="#" class="dropdown-toggle" data-toggle="dropdown">彩码生成<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="${z:u('maker/goodsdata_entry_page')}">彩码生成</a></li>
                            <li class="divider"></li>
                            <li><a href="${z:u('maker/volumedata_entry_page')}">彩码批量</a></li>
                        </ul>
                    </li>
                    <li id="search_data"><a href="${z:u('maker/search_data_page')}">商品彩码查询</a></li>
                    <li><a href="#">关于彩码</a></li>
                    <li><a href="#">客户端下载</a></li>
                </ul>
                <span class="pull-right">
	                <c:if test="${empty sessionScope.user_info[1].role}"> 
					    <a type="button" class="btn btn-default navbar-btn" href="${z:u('user/login_page')}"><!--Sign in-->登录</a>
                    	<a type="button" class="btn btn-success navbar-btn" href="${z:u('user/register_page')}"><!--sign up-->注册</a>
					</c:if> 
                    <c:if test="${not empty sessionScope.user_info[1].role}">
						<div class="dropdown" style="margin-top:10px;"> 
						  <img src="${sessionScope.user_info[1].picture }" style="width:30px;height:30px;">
						  <button class="btn btn-link dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
						    <span>
						    	${sessionScope.user_info[0].account }
						    </span>
						    <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="${z:u('user/userinfo_page')}"><span class="glyphicon glyphicon-user"></span> 个人中心</a></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="${z:u('operate/operate_center_page')}"><span class="glyphicon glyphicon-th-large"></span> 操作中心</a></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="${z:u('user/modifyinfo_page')}"><span class="glyphicon glyphicon-cog"></span> 设置</a></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="${z:u('user/login_page')}"><span class="glyphicon glyphicon-off"></span> 退出</a></li>
						  </ul>
						</div>
					</c:if> 
                </span>
            </div>
        </div>
    </nav>
   <%--  ${sessionScope.user_info[0].account }
    ${sessionScope.user_info[1].picture } --%>
    <%-- <div class="container" id="content">
   		首页
   		<%@ include file="../maker/goodsdata_entry.jsp" %>
    </div> --%>
  </body>
</html>
