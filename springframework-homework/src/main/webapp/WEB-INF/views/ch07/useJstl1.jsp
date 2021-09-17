<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 해당 uri에서 제공해주는 태그를 쓸 때 앞에 "c"를 붙이겠다는 의미 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
	
		<!-- ch07/useJstl1 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🚀 Data Delivery - ch07/useJstl1</h2>
		    </div>
			<hr class="my-3">
			<h4>JSTL을 이용한 반복 처리1</h4>
			<h6 class="mt-3">[지정한 횟수만큼 반복]</h6>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">No</th>
						<th scope="col">Title</th>
					</tr>
				</thead>
				<tbody>
					<%-- 아래와 동일 : <%for(int i=1; i<=3; i++) {}%> --%>
					<c:forEach begin="1" end="3" step="1" var="i">
						<tr>
							<th scope="row">${i}</th>
							<td>제목${i}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<h6 class="mt-3">[배열의 항목 수만큼 반복]</h6>
			
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">No</th>
						<th scope="col">Language</th>
					</tr>
				</thead>
				<!-- 
					${status.index}    <!– 0부터의 순서 –>
					${status.count}    <!– 1부터의 순서 –>
					${status.first}   <!– 현재 루프가 처음인지 반환 –>
					${status.last}     <!– 현재 루프가 마지막인지 반환 –> 
				 -->
				<c:forEach var="lang" items="${langs}" varStatus="status">
					<c:if test="${status.first}">
						<tbody>
					</c:if>
	
						<tr>
							<th scope="row">${status.count}</th>
							<td>${lang}</td>
						</tr>
						
					<c:if test="${status.last}">
						</tbody>
					</c:if>
				</c:forEach>
			</table>
	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>