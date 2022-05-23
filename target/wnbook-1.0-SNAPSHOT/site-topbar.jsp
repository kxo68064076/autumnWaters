<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/5/9
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/main.css">
</head>
<body>
<div class="site-topbar">
    <div class="container">
        <!--            表头-->
        <div class="topbar-nav">
            <a href="index.jsp">小米商城</a>
            <span>|</span>
            <a href="login.jsp">MIUI</a>
            <span>|</span>
            <a href="#">IoT</a>
            <span>|</span>
            <a href="#">云服务</a>
            <span>|</span>
            <a href="#">天星数科</a>
            <span>|</span>
            <a href="#">有品</a>
            <span>|</span>
            <a href="#">小爱开放平台</a>
            <span>|</span>
            <a href="#">企业团购</a>
            <span>|</span>
            <a href="#">资质证照</a>
            <span>|</span>
            <a href="#">协议规则</a>
            <span>|</span>
            <a href="#">下载app</a>
            <span>|</span>
            <a href="#">Select Location</a>
        </div>
        <a class="J_miniCartTrigger" href="./cart?op=showAllCart" >
            <i class="iconfont">&#xe73d;</i>
            <span>购物车&nbsp(0)</span>
        </a>
        <div class="J_miniCartMenu">
            <c:if test="${loginName==null}">
                <a href="login.jsp">您好，请登录</a>
                <span>|</span>
                <a href="login.jsp">注册</a>
            </c:if>
            <c:if test="${loginName!=null}">
                <a href="center.jsp">您好，${loginName}</a>
            </c:if>
        </div>
        <!--            导航栏-->
    </div>
</div>
<div class="site-header">
    <div class="container">
        <div class="header-logo">
            <a href="#">
                <i class="iconfont">&#xe613;</i>
            </a>
        </div>
        <div class="header-nav">
            <input type="text" id="search" placeholder="8848钛金手机">
            <a href="javascript:void(0)" onclick="searchName()">
                <i class="iconfont ">
                    &#xe63e;
                </i>
            </a>
            <ul class="nav-list">
                <li class="nav-category">
                    <a href="#"><span>全部商品分类</span></a>
                </li>
                <li class="nav-item">
                    <a href="#"><span>Xiaomi手机</span></a>
                </li>
                <li class="nav-item">
                    <a href="#"><span>Redmi 红米</span></a>
                </li>
                <li class="nav-item">
                    <a href="#"><span>电视</span></a>
                </li>
                <li class="nav-item">
                    <a href="#"><span>笔记本</span></a>
                </li>
                <li class="nav-item">
                    <a href="#"><span>平板</span></a>
                </li>
                <li class="nav-item">
                    <a href="#"><span>家电</span></a>
                </li>
                <li class="nav-item">
                    <a href="#"><span>路由器</span></a>
                </li>
                <li class="nav-item">
                    <a href="#"><span>服务</span></a>
                </li>
                <li class="nav-item">
                    <a href="#"><span>社区</span></a>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
<script>
    function searchName() {
        var search = document.getElementById("search").value
        location.href = "./productlist?op=productSearch&currentPage=1&pageSize=5&search="+search
    }

    function navigateToCart() {
        location.href = "./cart?op=showAllCart"
    }
</script>
</html>
