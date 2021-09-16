<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 네이게이션 바 -->
<%@ include file="/WEB-INF/views/common/navbar.jsp"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
	
		<!-- ch06/content 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>➡ Forward방식과 Redirect방식 - ch06/content</h2>
		    </div>
			<hr class="my-3">
			<h3 class="my-3">Controller</h3>
			<div class="d-flex justify-content-between my-2">
				<h5>1. Forward 방식 - jsp</h5>
				<a href="forward" class="btn btn-info">></a>
			</div>
			<div class="d-flex justify-content-between my-2">
				<h5>2. Redirect 방식 - index</h5>
				<a href="redirect" class="btn btn-info">></a>	
			</div>

			<hr>
			
			<h3 class="my-3">AJAX</h3>
			<div class="d-flex justify-content-center">
				<a href="javascript:ajax1()" class="btn btn-info me-2 col-3">HTML 조각 얻기</a>
				<a href="javascript:ajax2()" class="btn btn-info me-2 col-3">AJAX 요청(JSON)</a>
				<a href="javascript:ajax3()" class="btn btn-info me-2 col-3">AJAX 요청(JSON)</a>
			</div>

			<!-- jquery에서 지정한 id값으로 불러온다. -->
			<div id="content" class="d-flex justify-content-center"></div>
			<div id="fragment" class="d-flex justify-content-center"></div>
			<div id="jsonString" class="d-flex justify-content-center"></div>
			<div id="jsonImage" class="d-flex justify-content-center"></div>
			

		</div>
		<script>
			function ajax1() {
				console.log("ajax1() 실행");
				$.ajax({
					// jsp 파일
					url:"getFragmentHtml"
				})
				.done((data) => {
					$("#content").html(data);
					console.log($("#content").html(data));
				});
			}
			
			function ajax2() {
				console.log("ajax2() 실행");
				$.ajax({
					url:"getJson1"
				})
				.done((data) => {
					$("#content").html("<h1 class=\"text-info mt-5\">" + data.string + "</h1>");
				});
			}
			
			function ajax3() {
				console.log("ajax3() 실행");
				$.ajax({
					url:"getJson2"
				})
				.done((data) => {
					$("#content").html(
						"<img class=\"my-5\" src='${pageContext.request.contextPath}/resources/images/" + 
						data.fileName + " ' width='100vw'/>");
				});
			}

		</script>
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>