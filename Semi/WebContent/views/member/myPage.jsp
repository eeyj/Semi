<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
input:focus {outline: none;} /* outline 테두리 없애기 */
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	/* border: 1px solid gray; */
}

.wrap {
	position: relative;
	padding: 0px 0px 40px;
	box-sizing: border-box;
	margin-top: 20px;
}

.profileWrap {
	padding: 0px 60px;
	min-width: 1256px;
}

.profileContent {
	margin: 0px -10px;
	display: flex;
	flex-wrap: wrap;
}

.profileInfo {
	width: 25%;
	padding-left: 10px;
	padding-right: 10px;
}

.sticky-container {
	position: sticky;
	/* top: 80px; */
	transition: top 0.1s ease 0s;
}

.sticky-child {
	position: relative;
}

.pf {
	padding: 30px 25px 18px;
	border-radius: 4px;
	border: 1px solid rgb(218, 220, 224);
	box-shadow: rgba(63, 71, 77, 0.06) 0px 2px 4px 0px;
}

.pfImg {
	padding: 0px;
	margin: 0px 0px 20px;
}

.pfImgWrap {
	position: relative;
	margin: 0px auto 24px;
	width: 120px;
	height: 120px;
	border-radius: 100%;
	overflow: hidden;
	background-color: rgb(237, 237, 237);
}

.pImg {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 100%;
	transform: translate(-50%, -50%);
	border: 0;
}

.pfImfo {
	text-align: center;
}

.pfName {
	margin: 0px 0px 10px;
	font-size: 26px;
}

.updateLink {
	text-align: center;
}

.updateButton {
	padding-left: 16px;
	padding-right: 16px;
	margin-right: 6px;
	font-weight: normal;
	font-size: 12px;
	color: rgb(41, 41, 41);
	background-color: #fff;
	border-color: #dbdbdb;
	padding: 5px 7px 6px;
}

.countInfo {
	padding: 24px 0px 6px;
	text-align: center;
}

.countMenu {
	display: flex;
	color: rgb(41, 41, 41);
	margin: 0;
	padding: 0;
}

.countMenu img {
	width: 28px;
	height: 28px;
}

.countMenu a {
	flex: 1 0 0px;
	display: block;
	min-width: 0px;
	box-sizing: border-box;
	text-align: center;
	transition: opacity 0.1s ease 0s;
}

.profileUpdateForm {
	padding-left: 10px;
	padding-right: 10px;
	width: 67%;
	position: relative;
	padding: 10px 15px;
	border-radius: 4px;
	border: 1px solid rgb(218, 220, 224);
	box-shadow: rgba(63, 71, 77, 0.06) 0px 2px 4px 0px;
	color: #292929;
}

.updateHeader {
	display: flex;
	align-items: center;
	margin-bottom: 20px;
}

.updateTitle {
	font-size: 24px;
	font-weight: 700;
	flex: 1 0 0px;
}

.deletButton {
	font-size: 14px;
	color: #f05656;
	text-decoration: underline;
	cursor: pointer;
	touch-action: manipulation;
}

.deletButton:hover {
	font-size: 14px;
	color: #f05656;
	text-decoration: underline;
	cursor: pointer;
	touch-action: manipulation;
	margin-left: 80%;
}

.formItem {
	display: flex;
	align-items: center;
}

.formItem_title {
	width: 100px;
}

.formItemGroup {
	padding: 20px 0;
	width: 400px;
}

.formItemInput {
	width: 100%;
	max-width: 100%;
}

.formControl {
	transition: border-color .2s, box-shadow .2s, background-color .2s;
	display: block;
	box-sizing: border-box;
	height: 40px;
	width: 100%;
	padding: 0 15px;
	line-height: 40px;
	border-radius: 4px;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	color: #424242;
	font-size: 12px;
}

.inputError {
	margin: 15px 0;
	color: #f77;
	display: none;
}

#sample6_postcode {
	/* width: 20em; */
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
	padding: 0.5em 1.5em;
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
	width: 23.8em;
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
	width: : 15.1em;
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
	width: 9em;
}

.profile_img {
	cursor: pointer;
}
.btn-area{
        text-align: center;
    }
</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp"/>

 <div class="wrap">
        <div class="profileWrap">
            <div class="profileContent">
                <div class="profileInfo">
                    <div class="sticky-container">
                        <div class="sticky-child">
                            <div class="profile">
                                <div class="pf">
                                    <div class="pfImg"> 
                                        <div class="pfImgWrap">
                                            <img class="pImg" id="pImg" src="https://ilsangtrip.com/common/img/default_profile.png">
                                        </div>
                                        <div class="pfImfo">
                                            <div class="pfName">이유진</div>
                                            <!-- <div class="updateLink">
                                                <a class="updateButton" href="">수정</a>
                                            </div> -->
                                        </div>
                                    </div>
                                    <div class="countInfo">
                                        <div class="countMenu">
                                            <a href="">
                                                <img class="chatImg" src="resources/chat-balloon.png">
                                                <div class="chatTitle">산책메이트</div>
                                                <div class="chatCount">3</div>
                                            </a>
                                            <a href="">
                                                <img class="likeImg" src="resources/chat-balloon.png">
                                                <div class="likeTitle">좋아요</div>
                                                <div class="likeCount">3</div>
                                            </a>
                                            <a href="">
                                                <img class="zzimImg" src="resources/chat-balloon.png">
                                                <div class="zzimTitle">찜목록</div>
                                                <div class="zzimCount">3</div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bin">
                    <div class="binA"></div>
                </div>
                <div class="profileUpdateForm">
                    <div class="updateWrap">
                        <div class="updateHeader">
                            <div class="updateTitle">회원정보 수정</div>
                            <a href="" class="deletButton">탈퇴하기</a>
                        </div>
                        <form class="updateForm" action="" method="post" enctype="multipart/form-data">
                           <div class="formItem">
                                <div class="formItem_title">아이디</div>
                                <div class="formItemGroup">
                                     <div class="formItemGroupContent">
                                         <div class="formItemInput">
                                             <input class="formControl" type="text" name="userId" value="아이디">
                                         </div>
                                     </div>
                                </div>
                           </div>
                           <div class="formItem">
                                <div class="formItem_title">이름</div>
                                <div class="formItemGroup">
                                    <div class="formItemGroupContent">
                                        <div class="formItemInput">
                                            <input class="formControl" type="text" name="userName" value="이름">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="formItem">
                                <div class="formItem_title">닉네임</div>
                                <div class="formItemGroup">
                                    <div class="formItemGroupContent">
                                        <div class="formItemInput">
                                            <input class="formControl" type="text" name="suerNickname" value="닉네임">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="formItem">
                                <div class="formItem_title">전화번호</div>
                                <div class="formItemGroup">
                                    <div class="formItemGroupContent">
                                        <div class="formItemInput">
                                            <input class="formControl" type="text" name="phone" value="전화번호">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="formItem">
                                <div class="formItem_title">반려동물</div>
                                <div class="formItemGroup">
                                    <div class="formItemGroupContent">
                                        <div class="formItemInput">
                                            <input type="radio" id="r1" name="pet" value="dog" />
                                            <label for="r1"><span></span>강아지</label>
                                            <input type="radio" id="r2" name="pet" value="cat" />
                                            <label for="r2"><span></span>고양이</label>
                                            <input type="radio" id="r3" name="pet" value="etc" />
                                            <label for="r3"><span></span>기타</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="formItem">
                                <div class="formItem_title">주소</div>
                                <div class="formItemGroup">
                                    <div class="formItemGroupContent">
                                        <div class="formItemInput">
                                            <input type="text" id="sample6_postcode" placeholder="우편번호">
                                            <input class="d_btn" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                                            <input type="text" id="sample6_address" placeholder="주소"><br>
                                            <input type="text" id="sample6_detailAddress" placeholder="상세주소">
                                            <input type="text" id="sample6_extraAddress" placeholder="동">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="formItem">
                                <div class="formItem_title">프로필이미지</div>
                                <div class="formItemGroup">
                                    <div class="formItemGroupContent">
                                        <div class="formItemInput">
                                            <input type="file" name="file" id="file" onchange="loadImg(this)">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
			                <div class="btn-area">
			                    <button type="submit" class="btn btn-primary" id="update_profile">수정하기</button>
			                    <button type="reset" class="btn btn-secondary">취소하기</button>
			                </div>
			                <br>
                        </form>
                    </div>
                </div>
            </div>
        </div>
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
    </script>

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


</body>
</html>