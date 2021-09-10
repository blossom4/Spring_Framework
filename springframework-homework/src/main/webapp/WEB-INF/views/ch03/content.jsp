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
	
		<!-- ch03/content 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🎵 매개변수 요청 - ch03/content</h2>
		    </div>
			<hr class="my-3">
			
			<!-- GET 방식으로 요청 -->
			<h3 class="my-3">GET Method Request</h3>
			<!-- 1. 고정된 매개변수 GET 요청 -->
			<div class="d-flex justify-content-between mt-3">
				<h5>1. Static Parameters</h5>
				<a class="btn btn-dark" href="getMethodRequest?param1=blossom&param2=8&param3=1.618&param4=true&param5=1993-06-02">Request</a>		
			</div>
			<!-- 2. 입력받은 매개변수 GET 요청 -->
			<h5>2. Variable Parameters</h5>
			<div>
			<form method="get" action="getMethodRequest" class="mt-3">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param1</span>
					</div>
					<input type="text" name="param1" class="form-control text-secondary" value="문자열">
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param2</span>
					</div>
					<input type="text" name="param2" class="form-control text-secondary" value="8">
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param3</span>
					</div>
					<input type="text" name="param3" class="form-control text-secondary" value="1.618">
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param4</span>
					</div>
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
						<label class="btn btn-outline-secondary">
							<input type="radio" name="param4" value="true"> true
						</label>
						<label class="btn btn-outline-secondary">
							<input type="radio" name="param4" checked value="false"> false
						</label>
					</div>
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param5</span>
					</div>
					<input type="date" name="param5" class="form-control text-secondary"
						value="1993-06-02">
				</div>
				<div class="d-flex justify-content-end">
					<input class="mt-2 btn btn-dark" type="submit" value="Request"/>				
				</div>
			</form>
			</div>
	    </div>

			<h3 class="my-3">POST Method Request</h3>
			<!-- 1. 고정된 매개변수 POST 요청 -->
			<div class="d-flex justify-content-between mt-3">
				<h5>1. Static Parameters</h5>
				<a class="btn btn-dark" href="getMethodRequest?param1=blossom&param2=8&param3=1.618&param4=true&param5=1993-06-02">Request</a>		
			</div>
			<!-- 2. 입력받은 매개변수 POST 요청 -->
			<h5>2. Variable Parameters</h5>
			<div>
			<form method="get" action="getMethodRequest" class="mt-3">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param1</span>
					</div>
					<input type="text" name="param1" class="form-control text-secondary" value="문자열">
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param2</span>
					</div>
					<input type="text" name="param2" class="form-control text-secondary" value="8">
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param3</span>
					</div>
					<input type="text" name="param3" class="form-control text-secondary" value="1.618">
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param4</span>
					</div>
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
						<label class="btn btn-outline-secondary">
							<input type="radio" name="param4" value="true"> true
						</label>
						<label class="btn btn-outline-secondary">
							<input type="radio" name="param4" checked value="false"> false
						</label>
					</div>
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">param5</span>
					</div>
					<input type="date" name="param5" class="form-control text-secondary"
						value="1993-06-02">
				</div>
				<div class="d-flex justify-content-end">
					<input class="mt-2 btn btn-dark" type="submit" value="Request"/>				
				</div>
			</form>
			</div>
	
	    </div>
		<div class="card m-2">
			<div class="card-header">POST 방식으로 요청</div>
			<div class="card-body">
				<form method="post" action="method2">
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param1</span>
						</div>
						<input type="text" name="param1" class="form-control" value="문자열">
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param2</span>
						</div>
						<input type="text" name="param2" class="form-control" value="5">
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param3</span>
						</div>
						<input type="text" name="param3" class="form-control" value="3.14">
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param4</span>
						</div>
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-secondary active"> <input
								type="radio" name="param4" checked value="true"> true
							</label> <label class="btn btn-secondary"> <input type="radio"
								name="param4" value="false"> false
							</label>
						</div>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param5</span>
						</div>
						<input type="date" name="param5" class="form-control"
							value="2030-12-05">
					</div>
					<input class="mt-2 btn btn-info btn-sm" type="submit" value="요청" />
				</form>
			</div>
		</div>

		<div class="card m-2">
			<div class="card-header">AJAX로 요청</div>
			<div class="card-body">
				<form id="form1" name="form1">
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param1</span>
						</div>
						<input type="text" id="param1" name="param1" class="form-control" value="문자열">
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param2</span>
						</div>
						<input type="text" id="param2" name="param2" class="form-control" value="5">
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param3</span>
						</div>
						<input type="text" id="param3" name="param3" class="form-control" value="3.14">
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param4</span>
						</div>
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-secondary active"> 
								<input type="radio" id="radio1" name="param4" checked value="true"> true
							</label> 
							<label class="btn btn-secondary"> 
								<input type="radio"	id="radio2" name="param4" value="false"> false
							</label>
						</div>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param5</span>
						</div>
						<input type="date" id="param5" name="param5" class="form-control" value="2030-12-05">
					</div>

				</form>
				<div class="mt-2">
					<button class="btn btn-info btn-sm" onclick="requestGet()">GET 방식 요청</button>
					<button class="btn btn-info btn-sm" onclick="requestPost()">POST 방식 요청</button>
				</div>
			</div>
			
			<script>
				function requestGet() {
					const param1 = document.form1.param1.value;
					const param2 = document.querySelector("#param2").value;
					const param3 = $("#param3").val(); 
					//const param4 = $("#form1 input[type=radio]:checked").val();
					const param4 = $("#form1 input[name=param4]:checked").val();
					const param5 = $("#param5").val();
					
					console.log("param1:", param1);
					console.log("param2:", param2);
					console.log("param3:", param3);
					console.log("param4:", param4);
					console.log("param5:", param5);
					
					$.ajax({
						url:"method1",
						method:"get",
						data: {param1:param1, 
							   param2:param2, 
							   param3, 
							   param4, 
							   param5
						}
					})
					.done(() => {}); 
	
				}
				function requestPost() {
					const param1 = document.form1.param1.value;
					const param2 = document.querySelector("#param2").value;
					const param3 = $("#param3").val(); 
					const param4 = $("#form1 input[name=param4]:checked").val();
					const param5 = $("#param5").val();
					
					console.log("param1:", param1);
					console.log("param2:", param2);
					console.log("param3:", param3);
					console.log("param4:", param4);
					console.log("param5:", param5);
					
					$.ajax({
						url:"method2",
						method:"get",
						data: {param1, 
							   param2, 
							   param3, 
							   param4, 
							   param5
						}
					})
					.done(() => {}); 
	
				}
			</script>
		</div>
		
	</div>
</div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>