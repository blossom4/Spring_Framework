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
	
		<!-- ch09/content 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>📁 File UpLoad & DownLoad - ch09/content</h2>
		    </div>
			<hr class="my-3">
			<h4 class="my-3">File Upload</h4>
			<form method="post" enctype="multipart/form-data" action="fileupload">
				<div class="form-group">
					<label for="title" class="mb-2">File Title</label> 
					<input type="text" class="form-control" id="title" name="title" placeholder="제목">
				</div>
				<div class="form-group my-3">
					<label for="desc" class="mb-2">File Description</label> 
					<input type="text" class="form-control" id="desc" name="desc" placeholder="설명">
				</div>
				<div class="form-group my-3">
					<label for="attach"></label> 
					<input type="file" class="form-control-file" id="attach" name="attach" multiple>
				</div>
				<button class="btn btn-dark btn-sm">파일 업로드</button>
				<a href="javascript:fileupload()" class="btn btn-dark btn-sm">AJAX 파일 업로드</a>
			</form>
			<div>
			<h4 class="my-3">File Download</h4>
			<a href="filedownload?fileNo=1" class="btn btn-dark btn-sm">파일 다운로드</a>
			</div>
			<div class="d-flex justify-content-center">
				<img src="filedownload?fileNo=1" style="width: 10vw;"/>
			</div>
	    </div>
	    
	    
	    
		<script>
		
			function fileupload() {
				const title = $("#title").val();
				const desc = $("#desc").val();
				const attach = document.querySelector("#attach").files[0];
				console.log(attach);
				
				//Multipart/form-data
				const formData = new FormData();
				formData.append("title", title);
				formData.append("desc", desc);
				formData.append("attach", attach);
				
				//Ajax로 서버로 전송
				$.ajax({
					url: "fileUploadAjax",
					method: "post",
					data: formData,
					cache: false,
					processData: false,
					contentType: false
				}).done((data) => {
					console.log(data);
					if(data.result == "success"){
						window.alert("파일 전송이 성공됨");	
					}
				});
			}
		</script>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>