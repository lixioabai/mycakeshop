<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a href="${pageContext.request.contextPath}">蛋糕店</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="${pageContext.request.contextPath}" class="active">首页</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle " data-toggle="dropdown">商品分类<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-2">
								<li>
									<div class="row">
										<div class="col-sm-12">
											<h4>商品分类</h4>
											<ul class="multi-column-dropdown">
											
													<li><a class="list" href="${pageContext.request.contextPath}/goods_list">全部系列</a></li>
													
												    <c:forEach items="${ typelist}" var="t">
													<li><a class="list" href="${pageContext.request.contextPath}/goods_list?id=${t.id}">${t.name}</a></li>		
													</c:forEach>					
											</ul>
										</div>	
									</div>
								</li>
							</ul>
						</li>
						<li><a href="top.action?typeid=2" >热销</a></li>
						<li><a href="top.action?typeid=3" >新品</a></li>
						
							<li><a href="register.action?flag=-1" >注册</a></li>
							<li><a href="login.action?flag=-1" >登录</a></li>
						
						
						<li><a href="../admin.jsp" target="_blank">后台管理</a></li>
					</ul> 
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form" action="search.action">
							<input type="text" class="form-control" name="name">
							<button type="submit" class="btn btn-default" aria-label="Left Align">搜索</button>
						</form>
					</div>	
				</div>
				
				<div class="header-right cart">
					<a href="cart.action">
						<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"><span class="card_num">0</span></span>
					</a>
				</div>
				<div class="header-right login">
					<a href="my.action"><span class="glyphicon" aria-hidden="true"></span></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->