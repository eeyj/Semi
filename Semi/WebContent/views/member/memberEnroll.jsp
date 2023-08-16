<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
input:focus {outline: none;} /* outline 테두리 없애기 */
.enrollWrap {
	max-width: 1500px;
	height: 100%;
	margin: 0 auto;
	margin-top:30px;
}

.inside {
	max-width: 500px;
	margin: 0 auto;
	position: relative;
	padding-left: 0px;
	padding-right: 0px;
}

#profileUplod {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}

.profile_img {
	width: 80px;
	height: 80px;
	margin: 0 auto;
	margin-bottom: 15px;
	position: relative;
	text-align: center;
}

#profile_img {
	margin: 0 auto;
	width: 100%;
	height: 100%;
	border-radius: 50%;
}

#file {
	display: none;
}

.btn-upload {
	color: whitesmoke;
	width: 100px;
	height: 30px;
	background: #53c1f3;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 12px;
	border-radius: 10px;
	vertical-align: middle;
}

.form-group {
	padding-top: 0;
	margin-top: 25px;
	margin-bottom: 25px;
	border-width: 0;
	border-style: solid;
	border-color: #e5e7eb;
	width: 500px;
}

.input_form {
	border: 1px solid #e0e0e0;
	background: #fff;
	border-top: 1px solid #e0e0e0;
	box-sizing: border-box;
	position: relative;
}

.input_block input {
	color: #000;
	border: none;
	box-shadow: none;
	padding: 15px 13px;
	width: 90%;
	line-height: 1.2;
	margin: 0;
	font-size: 15px;
}

.alert-block {
	display: none;
	color: #F84A71;
	font-size: 12px;
	padding: 7px 0 10px 16px;
	position: relative;
}

.icon-required {
	background: #1A6Dff;
	display: inline-block;
	width: 5px;
	height: 5px;
	border-radius: 50%;
	margin-left: 5px;
	vertical-align: 2px;
}

input[type="radio"] {
	display: none;
}

input[type="radio"]+label {
	color: #857e7e;
	font-size: 15px;
}

input[type="radio"]+label span {
	display: inline-block;
	width: 19px;
	height: 19px;
	margin: -2px 10px 0 0;
	vertical-align: middle;
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		-38px top no-repeat;
	cursor: pointer;
}

input[type="radio"]:checked+label span {
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		-57px top no-repeat;
}

.joinBtn {
	background-color: #ffffff;
	border-color: #222222;
	border-width: 1px;
	color: #222222;
	font-weight: normal;
	font-style: normal;
	padding: 10px 25px;
	width: 100% !important;
	height: 45px !important;
	cursor: pointer;
	border-radius: 50px;
}

#sample6_postcode {
	width: 66%;
	margin: 0.2em 0;
	font-size: 1em;
	padding: 0.5em;
	border: 1px solid #ccc;
	border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
	vertical-align: middle;
	line-height: 1.25em;
	outline: 0;
}

.d_btn {
	display: inline-block;
	padding: 0.5em 2em;
	margin: 0.4em 0.15em;
	border: 1px solid #ccc;
	border-color: #dbdbdb #d2d2d2 #b2b2b2 #d2d2d3;
	cursor: pointer;
	color: #464646;
	border-radius: 0.2em;
	vertical-align: middle;
	font-size: 1em;
	line-height: 1.25em;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#fff),
		to(#f2f2f2));
}

#sample6_address {
	width: 99%;
	margin: 0.2em 0;
	font-size: 1em;
	padding: 0.5em;
	border: 1px solid #ccc;
	border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
	vertical-align: middle;
	line-height: 1.25em;
	outline: 0;
}

#sample6_detailAddress {
	margin: 0.2em 0;
	font-size: 1em;
	padding: 0.5em;
	border: 1px solid #ccc;
	border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
	vertical-align: middle;
	line-height: 1.25em;
	outline: 0;
	width: 66%;
}

#sample6_extraAddress {
	margin: 0.2em 0;
	font-size: 1em;
	padding: 0.5em;
	border: 1px solid #ccc;
	border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
	vertical-align: middle;
	line-height: 1.25em;
	outline: 0;
	width: 32%;
}

#inputText {
	margin-top: 10px;
}
</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp"/>

	<!-- <script>
		function enrollCheck(){
			var enrollId = document.getElementById()
			
			if()
		}
	
	</script>
 -->
	<div>
		<main class="enrollWrap">
			<div class="inside">
				<form id="join-form" action="<%=contextPath%>/enroll.me" method="post" enctype="multipart/form-data">
					<div id="profileUplod">
						<div class="profile_img">
							<img name="fileName" id="profile_img" src="https://ilsangtrip.com/common/img/default_profile.png">
						</div>
						<!-- 파일 업로드시 미리보기 기능 구현 함수 실행  -->
						<input type="file" name="file" id="file" onchange="loadImg(this)">
						<label for="file" class="btn-upload">이미지 업로드</label>
					</div>
					<div>
						<div>
							<div class="input_block form-group">
								<div class="input_form">
									<input id="enrollId" type="text" name="userId" placeholder="아이디" required>
									<div class="alert-block msg">아이디를 정확히 입력해주세요.</div>
								</div>
								<div class="input_form">
									<input id="enrollPwd"  type="password" name="userPwd" placeholder="비밀번호" required>
									<div class="alert-block msg">비밀번호를 정확히 입력해주세요.</div>
								</div>
								<div class="input_form">
									<input id="enrollCheckPwd" type="password" name="checkPwd" placeholder="비밀번호 확인" required>
									<div class="alert-block msg">입력하신 비밀번호가 일치하지 않습니다.</div>
								</div>
							</div>
							<div class="input_block form-group">
								<label for="join_name" class="class">이름<i class="icon-required"></i></label>
								<div class="input_form" id="inputText">
									<input id="enrollName" type="text" name="userName" id="join_name" placeholder="이름을(를)입력하세요" required>
								</div>
							</div>
							<div class="input_block form-group">
								<label for="join_nickname" class="class">닉네임<i class="icon-required"></i></label>
								<div class="input_form" id="inputText">
									<input id="enrollNickname" type="text" name="userNickname" id="join_nickname" placeholder="닉네임을(를)입력하세요" required>
								</div>
							</div>
							<div class="input_block form-group">
								<label for="pet" class="class">반려동물<i class="icon-required"></i></label>
								<div id="inputText">
									<input type="radio" id="r1" name="pet" value="dog" /> 
									<label for="r1"><span></span>강아지</label>
									<input type="radio" id="r2" name="pet" value="cat" /> 
									<label for="r2"><span></span>고양이</label>
									<input type="radio" id="r3" name="pet" value="etc" /> 
									<label for="r3"><span></span>기타</label>
									<div class="alert-block msg">반려동물을 선택해주세요.</div>
								</div>
							</div>
							<div class="input_block form-group">
								<label for="join_phone" class="class">전화번호</label>
								<div class="input_form" id="inputText">
									<input type="text" name="phone" id="join_phone"
										placeholder="전화번호를 입력하세요">
								</div>
							</div>
							<div class="">
								<label for="join_address" class="class">주소</label>
								<div class="">
									<input type="text" id="sample6_postcode" placeholder="우편번호">
									<input class="d_btn" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
									<input type="text" id="sample6_address" placeholder="주소" name="ad1"><br>
									<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="ad2"> 
									<input type="text" id="sample6_extraAddress" placeholder="동" name="ad3">
								</div>
							</div>
							<div class="input_block form-group">
								<button type="submit" class="joinBtn" onclick="return enrollCheck();">가입하기</button>
							</div>
						</div>
					</div>
				</form>
			</div>

		</main>

	</div>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
        

		function loadImg(input) {

			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					document.getElementById('profile_img').src = e.target.result;
				};
				reader.readAsDataURL(input.files[0]);
			} else {
				document.getElementById('profile_img').src = "https://ilsangtrip.com/common/img/default_profile.png";
			}

		}
	</script>
    

<jsp:include page="../common/footer.jsp"/>
</body>
</html>