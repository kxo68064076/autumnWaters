<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!DOCTYPE html>--%>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/asserts/js/jQuery-1.12.4.js"></script>
		<script src="${pageContext.request.contextPath}/asserts/js/bootstrap.min.js"></script>
	</head>
	<style>
		html, body {
			height: 100%;
		}
		.h100 {
			height: 100%;
		}
		.h90 {
			height: 90%;
		}
		
		.navbar-default {
			background-color: #999999;
		}
		.no-padding {
			padding: 0;
		}
		.activeUser{
			position: absolute;
			right: 0;
			bottom: 12px;
		}
		.activeUser a{
			margin: 12px;
		}
	</style>
	<body>
		<div class="container-fluid h100 yellow">
			<!-- 导航 -->
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						
						<img alt="Brand" src="https://game.gtimg.cn/images/lol/v3/logo-public.png">
						<span class="activeUser">${userInfo.username}<a href="./loginOut">退出登录</a></span>
					</div>
				</div>
			</nav>
			<!-- 下面的部份，应该分左右两块 -->
			<!-- 左边的操作项 -->
			<div class="col-xs-2 left">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
				  		<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne">
									图书管理
				  		</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
							aria-labelledby="headingOne">
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/productList.html" class="btn btn-primary btn-block" target="showAll">显示所有产品</a>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									用户管理
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
							aria-labelledby="headingTwo">
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/userList.html" class="btn btn-primary btn-block" target="showAll">显示所有用户</a>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
				 		<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
									订单管理
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse" role="tabpanel"
							aria-labelledby="headingFour">
							<div class="panel-body">
								<a href="${pageContext.request.contextPath}/ordertList.html" class="btn btn-primary btn-block" target="showAll">查看订单</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-10 right h100 no-padding">
				<!-- iframe -->
				<iframe name="showAll" src="${pageContext.request.contextPath}/server/welcome" width="100%" height="100%" frameborder="0">
				</iframe>
			</div>

		</div>
	</body>
	<script>

	</script>
</html>
