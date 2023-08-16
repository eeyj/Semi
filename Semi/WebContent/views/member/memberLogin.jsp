<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>로그인 화면</title>
<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}

body {
	/* font-size: 16px; */
	color: #555;
	margin: 0;
	padding: 0;
	position: relative;
	min-width: 1230px;
}

a {
	text-decoration: none;
}

.login-header {
	height: 100px;
	max-width: 360px;
	position: relative;
	margin: 0 auto;
}

.join-link {
	color: #53c1f3;
	position: absolute;
	top: 44px;
	right: 0;
	vertical-align: middle;
}

.join-link i {
	display: inline-block;
	width: 7px;
	height: 17px;
	background-image: url(resources/arrow-right.png);
	background-repeat: no-repeat;
	cursor: pointer;
	vertical-align: middle;
	background-size: 10px 13px;
	margin-left: 10px;
}

.login-container {
	margin-top: 15px;
	max-width: 360px;
	position: relative;
	margin: 0 auto;
	padding-bottom: 70px;
	text-align: center;
}

.login-logo {
	margin: 0;
	line-height: normal;
	text-align: center;
}

.login-logo img {
	display: inline-block;
	vertical-align: middle;
	border: none;
}

.login-container h2 {
	color: #53c1f3;
	font-weight: normal;
	font-size: 20px;
	line-height: 28px;
	margin: 25px 0 20px 0;
	text-align: center;
}

.user-login-input {
	position: relative;
}

.login-form input {
	width: 100%;
	border: none;
	border-bottom: 1px solid #53c1f3;
	font-size: 18px;
	height: 30px;
	margin-bottom: 40px;
}

.btn-blue {
	background-color: #53c1f3;
	color: #fff;
	border: 1px solid #53c1f3;
	box-sizing: border-box;
	display: inline-block;
	vertical-align: middle;
	text-align: center;
	width: 280px;
	border-radius: 25px;
}

.forgetmenot {
	margin-top: 15px;
}

.checkbox {
	margin-right: 10px;
	display: inline-block;
	position: relative;
	color: #555;
	font-size: 16px;
}

.checkbox input[type="checkbox"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
	opacity: 0;
	box-sizing: border-box;
}

.checkbox label {
	display: inline-block;
	position: relative;
	cursor: pointer;
	font-size: 16px;
	user-select: none;
	vertical-align: middle;
}

.check-image {
	display: inline-block;
	width: 16px;
	height: 18px;
	background-image: url(resources/uncheckedbox.png);
	background-repeat: no-repeat;
	cursor: pointer;
	vertical-align: middle;
	background-size: 16px;
	margin-right: 10px;
}

.login-list-type1 {
	margin-top: 80px;
	text-align: center;
}

.login-list-type1 li {
	display: inline-block;
}

.login-list-type1 a {
	color: #53c1f3;
	position: relative;
	padding-right: 17px;
	margin-left: 20px;
	text-decoration: none;
}
</style>
</head>
<body>
	<div id="wrap" class="sub">
		<header class="login-header">
			<a href="<%=contextPath%>/enroll.me" class="join-link">회원가입<i></i></a>
		</header>
		<div class="login-container">
			<div class="login-content">
				<h1 class="login-logo">
					<a href="<%=contextPath%>"> 
						<img src="resources/logo2.png">
					</a>
				</h1>
				<h2>또오개냥에 오신것을 환영합니다!</h2>
				<div class="login-form">
					<form id="login-frm" action="<%= contextPath %>/login.me" method="post">
						<div class="user-login-input">
							<label for="userId"></label> 
							<input type="text" id="userId" placeholder="아이디" name="userId"> 
							<label for="userPwd"></label> 
							<input type="password" id="userPwd" placeholder="비밀번호" name="userPwd">
						</div>
						<div class="btn-center">
							<button type="submit" class="btn btn-large btn-blue size1">로그인</button>
							<div class="forgetmenot">
								<div class="checkbox check-type1">
									<input type="checkbox" id="remember" name="remember" value="1">
									<label for="remember"> 
										<i class="check-image"></i> 
										<span>로그인상태 유지</span>
									</label>
								</div>
								<div class="checkbox check-type1">
									<input type="checkbox" id="remember-id" name="remember-id" value="1"> 
									<label for="remember-id"> 
										<i class="check-image"></i> 
										<span>아이디 저장</span>
									</label>
								</div>
							</div>
						</div>
					</form>
					<ul class="login-list-type1" style="margin-top: 20px;padding-left: 20px;">
						<li><a href="">아이디/비밀번호 찾기</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>


</body>
</html>