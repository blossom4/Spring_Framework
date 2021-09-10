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
	
		<!-- ch02/boardList 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>📌게시물 목록 - ch02/boardList</h2>
		    </div>
   			<hr>
   			<div class="d-flex justify-content-between mb-3">
				<h3>Board Index</h3>
				<div class="col-4">
					<div class="input-group">
						<input type="text" class="form-control" aria-describedby="button-addon2">
						<button class="btn btn-dark text-light" type="button" id="button-addon2">Search</button>
					</div>
				</div>
   			</div>
			
			<div class="my-2">
				<table class="table">
					<thead>
				    	<tr>
				      		<th scope="col">번호</th>
				      		<th scope="col">제목</th>
				      		<th scope="col">내용</th>
				      		<th scope="col">글쓴이</th>
				   	 	</tr>
				  	</thead>
				  	<tbody>
				  		<%for(int i = 1; i < 6; i++) {%> <!-- JSP 용어 -->
				    	<tr>
				      	<th scope="row"><%=i%></th>
				     	<td>Title <%=i%></td>
				      	<td>Content <%=i%></td>
				      	<td>User <%=i%></td>
				    	</tr>
				    	<%}%>
				  	</tbody>
				</table>
			</div>
			
			<div class="d-flex my-3 justify-content-end">
				<a class="btn btn-dark col-2" href="${pageContext.request.contextPath}/ch02/boardWriteForm">Write</a>
			</div>
		</div>
			

	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>