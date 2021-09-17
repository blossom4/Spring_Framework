<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 해당 uri에서 제공해주는 태그를 쓸 때 앞에 "c"를 붙이겠다는 의미 -->
<!-- perfix 는 관례적으로 c 를 많이 쓰지만 Core 를 쓰면 Core 가된다 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
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
	
		<!-- ch07/useJstl2 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🚀 Data Delivery - ch07/useJstl2</h2>
		    </div>
			<hr class="my-3">
				<h4>JSTL을 이용한 반복 처리2</h4>
		<h6 class="my-3">[게시물 목록]</h6>

		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">No.</th>
					<th scope="col">Title</th>
					<th scope="col">Content</th>
					<th scope="col">Writer</th>
					<th scope="col">Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${boardList}">
					<tr>
						<td scope="row">${board.no}</td>
						<td>${board.title}</td>
						<td>${board.content}</td>
						<td>${board.writer}</td>
						<td><fmt:formatDate value="${board.date}" pattern="yyyy-MM-dd" /></td>
					</tr>
					<!--mm 하면 분이된다.  -->
				</c:forEach>
			</tbody>
		</table>

			
	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>