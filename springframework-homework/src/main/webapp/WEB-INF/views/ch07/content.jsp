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
	
		<!-- ch07/content 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🚀 Data Delivery - ch07/content</h2>
		    </div>
			<hr class="my-3">

				<h4>1. 객체(데이터) 사용 범위</h4>
				<div class="my-3">
					<a href="saveData" class="btn btn-dark">데이터 저장</a>
					<a href="readData" class="btn btn-dark">데이터 읽기</a>
				</div>
				
				<h4 class="mt-4">2. EL(Expressions Language)</h4>
				<div class="my-3">
					<a href="objectSaveAndRead1" class="btn btn-dark">Http Servelet Request</a>
					<a href="objectSaveAndRead2" class="btn btn-dark">Model</a>
				</div>

				<h4 class="mt-4">3. JSTL(Java Standard Tag Library): 조건처리, 반복처리</h4>			
				<div class="my-3">
					<a href="useJstl1" class="btn btn-dark">JSTL 사용1</a>
					<a href="useJstl2" class="btn btn-dark">JSTL 사용2</a>
				</div>

				<h4 class="mt-4">4. @ModelAttribute를 이용해서 데이터 전달</h4>
				<div class="my-3">
					<a href="useModelAttribute" class="btn btn-dark">데이터 전달</a>
				</div>

				<h4 class="mt-4">5. @ModelAttribute를 이용해서 매개변수값 전달</h4>
				<div class="my-3">
					<a href="argumentSaveAndRead?kind=👗Dress&sex=👩Female" class="btn btn-dark">매개변수값 전달</a>
					<a href="argumentSaveAndRead?kind=🥼Shirt&sex=👨Male" class="btn btn-dark">매개변수값 전달</a>
				</div>
			</div>

			


	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>