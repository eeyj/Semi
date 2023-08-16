<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>푸터 영역</title>
<style>
.footer {
	padding: 45px 20px;
	background: rgb(226, 226, 226);
}

.footerWrap {
	align-items: flex-start;
	-webkit-box-pack: justify;
	justify-content: space-between;
	display: flex;
	max-width: 1200px;
	margin: auto;
}

.footer1 {
	display: flex;
	column-gap: 23px;
}

.footer2 {
	font-style: normal;
	font-weight: 400;
	font-size: 15px;
	line-height: 20px;
	color: rgb(186, 186, 195);
	flex: 1 1 0px;
	max-width: 462px;
}

.footer3 {
	display: flex;
	column-gap: 26px;
}

#snsImg {
	width: 33px;
	height: auto;
}
</style>
</head>
<body>


	<div class="footer">
		<div class="footerWrap">
			<div class="footer1">
				<img src="https://ifh.cc/g/dbs9bd.png" width="200px">
			</div>

			<div class="footer2">
				또오개냥 / 주소 :(12234) 서울시 강남구 아무개길 134 <br> 대표전화 02-1111-1111 /
				사업자번호 133-34-555 <br> Copyrightⓒ 2023 ddooganang all rights
				reserved
			</div>

			<div class="footer3">
				<div>
					<a href="">
						<img id="snsImg" src="https://sscampus.kr/images/footer/youtube.png">
					</a> 
					<a href="">
						<img id="snsImg" src="https://sscampus.kr/images/footer/facebook.png">
					</a> 
					<a href="">
						<img id="snsImg" src="https://sscampus.kr/images/footer/instagram.png">
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>