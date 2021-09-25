<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 네이게이션 바 -->
<%@ include file="/WEB-INF/views/common/navbar.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
	
		<!-- ch11/form3 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🔖 String Tag Library - ch11/form3</h2>
		    </div>
			<hr class="my-3">
			<h4 class="my-3">3. DTO 객체의 필드값을 양식의 드롭다운리스트(checkbox 태그)로 세팅</h4>
			
			<!-- ch11/form3 GET방식으로 미리 저장된 배열을 조건에 따라 받아오기 -->
			<form method="get" action="form3">
				<div>
					<c:forEach var="language" items="${languageList}" varStatus="status">
					<span class="mx-2">
						<input type="checkbox" id="lang${status.count}" name="mlanguage" value="${language}"
					  		<c:forEach var="temp" items="${member.mlanguage}">
				  		 		<c:if test="${temp == language}">checked</c:if>
			  		 		</c:forEach>/>
		  		 		<label for="lang${status.count}">${language}</label>
	  		 		</span>
		  		 	</c:forEach>
				</div>
				<button class="btn btn-primary btn-sm">제출</button>
			</form>	
		
			<form:form modelAttribute="member" method="post" action="form3" class="mt-3">
	 			<div class="me-2">
	 				<form:checkboxes items="${languageList}" path="mlanguage" class="mx-2"/>
	 			</div>
	 			<button class="btn btn-primary btn-sm">제출</button>
	 		</form:form>
 
	 		<form:form modelAttribute="member" method="post" action="form3" class="mt-3">
	 			<div class="me-2">
	 				<form:checkboxes items="${skillList}" path="mskill" itemValue="code" itemLabel="label" class="mx-2"/>
	 			</div>
	 			<button class="btn btn-primary btn-sm">제출</button>
	 		</form:form>

	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>