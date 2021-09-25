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
	
		<!-- ch11/form2 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🔖 String Tag Library - ch11/form2</h2>
		    </div>
			<hr class="my-3">
			<h4 class="my-3">2. DTO 객체의 필드값을 양식의 드롭다운리스트(select 태그)로 세팅</h4>
			
		<!-- 순수 HTML 태그만 사용하는 방법, dto와 연결X -->
		<form method="post" action="form2">
		  <div class="form-group mb-2">
		    <label for="mtype">Type</label>
		    <select class="form-control" id="mtype" name="mtype">
		      <option value="">---선택하세요---</option>
		      <c:forEach var="type" items="${typeList}">
		      	<option value="${type}"
		      			<c:if test="${member.mtype == type}">selected</c:if>
		      	>${type}</option>
		      </c:forEach>
		    </select>
		  </div>
		  
		  <div class="form-group mb-2">
		    <label for="mjob">Job</label>
		    <select class="form-control" id="mjob" name="mjob">
		      <option value="">---선택하세요---</option>
		      <c:forEach var="job" items="${jobList}">
		      	<option value="${job}"
		      			<c:if test="${member.mjob == job}">selected</c:if>
		      	>${job}</option>
		      </c:forEach>
		    </select>
		  </div>
		  
		  <div class="form-group mb-2">
		    <label for="mcity">City</label>
		    <select class="form-control" id="mcity" name="mcity">
  		      <option value="">---선택하세요---</option>
		      <c:forEach var="city" items="${cityList}">
		      	<option value="${city.code}"
		      		<c:if test="${member.mcity == city.code}">selected</c:if>
		      	>${city.label}</option>
		      </c:forEach>
		    </select>
		  </div>
		  
		  <div class="d-flex justify-content-end mt-2">
		  	<button type="submit" class="btn btn-dark">제출</button>
		  </div>
		</form>
		
				<!-- spring form 태그 사용 -->
		<form:form method="post" action="form2" modelAttribute="member">
		  <div class="form-group">
		    <label for="mtype">Type</label>
		    <form:select path="mtype" items="${typeList}" class="form-control"/>
		  </div>
  		  
  		  <div class="form-group">
		    <label for="mjob">Job</label>
		    <form:select path="mjob" class="form-control">
		    	<option value="">---선택하세요---</option>
		    	<form:options items="${jobList}"/>
		    </form:select>
		  </div>
		  
		  <div class="form-group">
		    <label for="mcity">City</label>
		    <form:select path="mcity" items="${cityList}" itemValue="code" itemLabel="label" class="form-control"/>
		  </div>
		  
  		  <button type="submit" class="btn btn-primary">제출</button>
		</form:form>

	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>