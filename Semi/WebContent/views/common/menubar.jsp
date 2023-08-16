<%@ page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
	Member loginUser = (Member) session.getAttribute("loginUser");
	String alertMsg = (String) session.getAttribute("alertMsg");
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
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<title>메뉴바</title>
<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
a:hover {text-decoration: none;}

* {
	font-family: 'Noto Sans KR', sans-serif;
	box-sizing: border-box;
}

.main {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.mainNavi {
	position: relative;
	background: rgb(255, 255, 255);
	box-shadow: rgba(4, 129, 200, 0.1) 0px 4px 4px;
	padding: 16px;
	height: 75px;
	z-index: 999;
}

.dNVOw {
	width: fit-content;
	margin: auto;
}

.mainLogo {
	color: inherit;
	text-decoration: none;
}

.logImg {
	width: 150px;
	height: auto;
	overflow: clip;
}

.Log {
	position: absolute;
	right: 200px;
	top: 25px;
}

.LoguserImg {
	height: 35px;
	width: 35px;
	overflow: clip;
}

.alarmNV {
	position: absolute;
	right: 50px;
	top: 28px;
	display: flex;
	column-gap: 11px;
}

.loginLink {
	font-style: normal;
	font-weight: 700;
	opacity: 1;
	font-size: 15px;
	line-height: 20px;
	color: rgb(83, 193, 243);
	border-bottom: 1px solid #53c1f3;
	cursor: pointer;
}

.joinLink {
	font-style: normal;
	font-weight: 700;
	opacity: 1;
	font-size: 15px;
	line-height: 20px;
	color: rgb(83, 193, 243);
	border-bottom: 1px solid rgb(83, 193, 243);
	cursor: pointer;
}

.menuNV {
	position: relative;
	background-color: rgb(83, 193, 243);
	box-shadow: rgba(4, 129, 200, 0.2) 0px 2px 5px;
	z-index: 999;
}

.menuWrap {
	max-width: 1200px;
	margin: auto;
	display: flex;
}

.menuM {
	position: relative;
	display: block;
	width: 100%;
	flex: 1 1 0px;
}

.Mm {
	position: relative;
	display: flex;
	cursor: pointer;
	-webkit-box-pack: center;
	justify-content: center;
	flex-direction: column;
	-webkit-box-align: center;
	align-items: center;
	height: 120px;
	padding: 25px 0px;
	box-sizing: border-box;
	z-index: 2;
}

.mImgWrap {
	margin-top: 3px;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	flex: 1 1 0px;
}

.mImg {
	/* height: 19px; */
	/* width: auto; */
	max-width: unset;
	max-height: 35px;
}

.mName {
	font-style: normal;
	font-weight: 700;
	font-size: 25px;
	line-height: 25px;
	text-align: center;
	color: rgb(255, 255, 255);
}
</style>
</head>
<body>

	<div class="mainNavi">
		<div class="dNVOw">
			<a class="mainLogo" href="<%= contextPath %>">
				<img class="logImg" src="https://ifh.cc/g/dbs9bd.png">
			</a>
		</div>
		<%if(loginUser != null) {%>
			<div class="Log">
				<!-- 로그인시 프로필 사진 / 마이페이지로 이동(관리자는 관리자페이지) -->
				<a href="">
					<img class="LoguserImg" src="https://sscampus.kr/images/appbar/user.png">
				</a>
			</div>
			<div class="alarmNV">
				<a href="<%= contextPath %>/mypage"><span class="loginLink">마이페이지</span></a> 
				<a href="<%= contextPath %>/logout.me"><span class="joinLink">로그아웃</span></a>
			</div>
		<% } else { %>
			<div class="alarmNV">
				<a href="<%=contextPath%>/login.me"><span class="loginLink">로그인</span></a> 
				<a href="<%=contextPath%>/enroll.me"><span class="joinLink">회원가입</span></a>
			</div>
		<% } %>
	</div>
	<div class="menuNV">
		<div class="menuWrap">
			<div class="menuM">
				<!-- 같이걷개 -->
				<a href="">
					<div class="Mm">
						<div class="mImgWrap">
							<img class="mImg" src="https://ifh.cc/g/Qc7gBa.png">
						</div>
						<div class="mName">같이걷개</div>
					</div>
				</a>
			</div>
			<div class="menuM">
				<!-- 멍냥수다 -->
				<a href="">
					<div class="Mm">
						<div class="mImgWrap">
							<img class="mImg" src="https://ifh.cc/g/oMqXr4.png">
						</div>
						<div class="mName">멍냥수다</div>
					</div>
				</a>
			</div>
			<div class="menuM">
				<!-- 나눔&거래 -->
				<a href="">
					<div class="Mm">
						<div class="mImgWrap">
							<img class="mImg" src="https://ifh.cc/g/V6mL1Y.png">
						</div>
						<div class="mName">나눔&거래</div>
					</div>
				</a>
			</div>
			<div class="menuM">
				<!-- DBTI -->
				<a href="<%=contextPath%>/dbti">
					<div class="Mm">
						<div class="mImgWrap">
							<img class="mImg" src="https://ifh.cc/g/XXn1l5.png">
						</div>
						<div class="mName">DBTI</div>
					</div>
				</a>
			</div>
			<div class="menuM">
				<!-- 공지사항 -->
				<a href="<%=contextPath%>/list.no">
					<div class="Mm">
						<div class="mImgWrap">
							<img class="mImg" src="https://ifh.cc/g/dOjQr8.png">
						</div>
						<div class="mName">공지사항</div>
					</div>
				</a>
			</div>
		</div>
	</div>

</body>
</html>