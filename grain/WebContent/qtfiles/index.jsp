<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="no-js"> 
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Minimal and Clean Sign up / Login and Forgot Form by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="${ctx }/qtcss/bootstrap.min.css">
	<link rel="stylesheet" href="${ctx }/qtcss/animate.css">
	<link rel="stylesheet" href="${ctx }/qtcss/style1.css">


	<!-- Modernizr JS -->
	<script src="${ctx }/qtjs/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>

		<div class="container">
			
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="#" class="fh5co-form animate-box" data-animate-effect="fadeIn">
						<h2>登录</h2>
						<div class="form-group">
							<label for="username" class="sr-only">用户名</label>
							<input type="text" class="form-control" id="username" placeholder="用户名" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="password" placeholder="密码" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="remember"><input type="checkbox" id="remember"> 记住我</label>
						</div>
						<div class="form-group">
							<p>没有注册? <a href="${ctx }/qtfiles/sign-up.jsp">注册</a> | <a href="${ctx }/qtfiles/forgot.jsp">忘记密码?</a></p>
						</div>
						<div class="form-group">
							<a href='${ctx }/qtfiles/shouye.jsp'>
								<input type='button' value='登录' class="btn btn-primary"/>
							</a>
						</div>
					</form>
					<!-- END Sign In Form -->

				</div>
		
	
	<!-- jQuery -->
	<script src="${ctx }/qtjs/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="${ctx }/qtjs/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="${ctx }/qtjs/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="${ctx }/qtjs/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="${ctx }/qtjs/main.js"></script>


	</body>
</html>

