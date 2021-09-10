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
		
		<!-- ch02/content 기본화면 구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>📢 방식별 메소드 매핑 - ch02/content</h2>
		    </div>
		    <!-- 입력 폼 / 버튼 -->
		    <div class="input-group mt-3 mb-4">
		      <input class="form-control" type="text" placeholder="내용을 추가해주세요.">
		      <button class="btn btn-dark" type="button" id="button-addon2">Add</button>
		    </div>
		    <!-- 목록 -->
			<div class="d-flex justify-content-between my-2" id="getModalBtn">
				<h5>1. 🟢GET - 조회</h5>
				<div class="btn btn-success" onClick="requestGet()">></div>	
			</div>
			<div class="d-flex justify-content-between my-2" id="postModalBtn">
				<h5>2. 🟡POST - 추가</h5>
				<div class="btn btn-warning text-light" onClick="requestPost()">></div>	
			</div>
			<div class="d-flex justify-content-between my-2" onClick="requestPut()" id="putModalBtn">
				<h5>3. 🟡PUT - 수정</h5>
				<div class="btn btn-warning text-light">></div>	
			</div>
			<div class="d-flex justify-content-between my-2" onClick="requestDelete()" id="deleteModalBtn">
				<h5>4. 🔴DELETE - 삭제</h5>
				<div class="btn btn-danger">></div>	
			</div>
			
			<hr class="my-5">
			
			<div class="d-flex my-3 justify-content-between">
				<h3>modelAndView 리턴</h3>
				<a class="btn btn-dark col-2" href="${pageContext.request.contextPath}/ch02/modelAndView">Return</a>
			</div>
			<div class="d-flex my-3 justify-content-between">
				<h3>Login Page 이동</h3>
				<a class="btn btn-dark col-2" href="${pageContext.request.contextPath}/ch02/login">Login</a>
			</div>
			<div class="d-flex my-3 justify-content-between">
				<h3>Notice Board 이동</h3>
				<a class="btn btn-dark col-2" href="${pageContext.request.contextPath}/ch02/boardList">Go</a>
			</div>

	    </div>
	    

		<!-- GET method Modal-->
		<div class="modal fade" id="getModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title fw-bold" id="exampleModalLabel">🔔 알림</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body fw-bold">🟢 GET REQUEST SUCCESS :)</div>
				</div>
			</div>
		</div>
		<!-- POST method Modal-->
		<div class="modal fade" id="postModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title fw-bold" id="exampleModalLabel">🔔 알림</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body fw-bold">🟡 POST REQUEST SUCCESS :)</div>
				</div>
			</div>
		</div>
		<!-- PUT method Modal-->
		<div class="modal fade" id="putModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title fw-bold" id="exampleModalLabel">🔔 알림</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body fw-bold">🟡 PUT REQUEST SUCCESS :)</div>
				</div>
			</div>
		</div>
		<!-- DELETE method Modal-->
		<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title fw-bold" id="exampleModalLabel">🔔 알림</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body fw-bold">🔴 DELETE REQUEST SUCCESS :)</div>
				</div>
			</div>
		</div>
	      
	    <script>
	    
	    	/* getModal 생성스크립트 */
			$('#getModalBtn').click(function(e){
				e.preventDefault();
				$('#getModal').modal("show");
			});
	    	
	    	/* postModal 생성스크립트 */
			$('#postModalBtn').click(function(e){
				e.preventDefault();
				$('#postModal').modal("show");
			});
	    	
	    	/* putModal 생성스크립트 */
			$('#putModalBtn').click(function(e){
				e.preventDefault();
				$('#putModal').modal("show");
			});
	    	
	    	/* deleteModal 생성스크립트 */
			$('#deleteModalBtn').click(function(e){
				e.preventDefault();
				$('#deleteModal').modal("show");
			});
	    
	    	/* ajax GET 요청 */
	    	function requestGet() {
	    		$.ajax({
					url: "${pageContext.request.contextPath}/ch02/getMethod",
					method: "GET",
	    		}) .done(data => {});
	    	}
	    	
	    	/* ajax POST 요청 */
	    	function requestPost() {
	    		$.ajax({
	    			url: "${pageContext.request.contextPath}/ch02/postMethod",
	    			method: "POST",
	    		}) .done(data => {})
	    	}
	    	
	    	/* ajax PUT 요청 */
	    	function requestPut() {
	    		$.ajax({
	    			url: "${pageContext.request.contextPath}/ch02/putMethod",
	    			method: "PUT",
	    		}) .done(data => {})
	    	}
	    	
	    	/* ajax DELETE 요청 */
	    	function requestDelete() {
	    		$.ajax({
	    			url: "${pageContext.request.contextPath}/ch02/deleteMethod",
	    			method: "DELETE",
	    		}) .done(data => {})
	    	}
	    	
	    </script>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>