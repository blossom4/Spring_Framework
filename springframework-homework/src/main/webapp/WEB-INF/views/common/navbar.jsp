<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Spring Framework</title>
	<!-- 부트스트랩 CSS CDN -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<!-- jquery CDN -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<!-- 폰트 -->
	<style>
    @font-face {
      font-family: 'NanumBarunpen';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumBarunpen.woff') format('woff');
      font-weight: normal;
      font-style: normal;
  	}
  	
  	body {
  	  font-family: 'NanumBarunpen';
  	}
  	
  	.pop {
  		transition: 0.1s;
  		cursor: pointer;
  	}
  	.pop:active {
	  transform: scale(0.1);
	  opacity: 0.5;
  	}
  	
  </style>
</head>
<body>

	<!-- 네비게이션 바 -->
	<nav class="d-flex justify-content-between align-items-center bg-dark py-3 mb-5">
		<div>	
			<img class="ms-5" style="width: 5%;" alt="leaf_logo" src="/resources/images/leaf.png">
			<a class="fs-3 text-light text-decoration-none" href="${pageContext.request.contextPath}/">Spring framework</a>
		</div>
	<div>
		<ul class="d-flex justify-content-between list-inline m-0 fs-4">

				<li class="mx-3"><a class="text-light text-decoration-none" href="${pageContext.request.contextPath}/">Index</a></li>
				<li class="mx-3"><a class="text-light text-decoration-none" href="">Signup</a></li>
				<li class="mx-3 me-5"><a class="text-light text-decoration-none" href="${pageContext.request.contextPath}/ch02/login">Login</a><li>
		</ul>
	</div>
	</nav>

	<!-- 부트스트랩 JS CDN -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>