<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.content{
	margin-top: 20px;
    margin-bottom: 20px;
}
.sellEnrollForm {
	width: 60%;
	margin: 0 auto;
	padding: 10px;
	border: 1px solid gainsboro;
	
}

.btn-area {
	text-align: center;
	padding: 10px;
	margin: 10px;
}

.pImg {
	width: 300px;
	margin: 0 auto;
	display: block;
}
</style>
</head>
<body>
	<%@ include file="../../common/menubar.jsp"%>

	<div class="content">
		<form class="sellEnrollForm" action="" method="post">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">작성자</label>
				<input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="<%= loginUser.getUserId()%>"
					aria-label="Disabled input example" disabled>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">제목</label>
				<input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="3"></textarea>
			</div>
			<div class="mb-3">
				<label for="formFile" class="form-label">이미지 첨부</label> <input
					class="form-control" type="file" id="formFile"
					onchange="loadImg(this)">
			</div>
			<div class="pfImgWrap">
				<img class="pImg" id="pImg"
					src="https://ilsangtrip.com/common/img/default_profile.png">
			</div>

			<div class="btn-area">
				<button type="submit" class="btn btn-secondary btn-sm">등록하기</button>
				<button type="button" class="btn btn-primary btn-sm"
					onclick="history.back();">뒤로가기</button>
			</div>
		</form>

	</div>



	<script>
        function loadImg(input) {
 
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('pImg').src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            } else {
                document.getElementById('pImg').src = "https://ilsangtrip.com/common/img/default_profile.png";
            }
 
        }
 
     </script>


	<jsp:include page="../../common/footer.jsp" />

</body>
</html>