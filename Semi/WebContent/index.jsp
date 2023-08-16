<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>또오개냥</title>
<style>
.mainContent {
	flex: 1 1 0px;
}

.main1 {
	text-align: center;
	padding-top: 40px;
	/* width: 1920px; */
	height: 885px;
}

.main1-text {
	font-size: 45px;
	font-family: 'yg-jalnan', verdana, tahoma;
	color: #F7E3A5;
	text-shadow: -2px 0 #4758A8, 0 2px #4758A8, 2px 0 #4758A8, 0 -2px
		#4758A8;
}

.main1_img {
	width: 100%;
	background-image:
		url("https://semiproject.s3.ap-northeast-2.amazonaws.com/%EC%9D%B4%EC%9C%A0%EC%A7%84/%EA%B0%95%EC%95%84%EC%A7%80%EB%93%A4.png");
	height: 500px;
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
}

.main2 {
	padding: 60px 20px;
	background-image: url(resources/back.png);
	background-size: 100%;
	background-repeat: no-repeat;
}

.main2_wrap {
	display: flex;
	max-width: 1200px;
	margin-left: 400px;
	margin-right: auto;
	column-gap: 30px;
}

.main2_title {
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 30px;
	color: rgb(51, 51, 51);
	padding-right: 30px;
	border-right: 1px solid rgb(204, 204, 204);
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	position: relative;
}

.main2_title::before {
	content: "NEWS";
	position: absolute;
	left: 0px;
	top: 0px;
	font-style: normal;
	font-weight: 400;
	font-size: 20px;
	line-height: 15px;
	color: rgb(51, 51, 51);
}

.notice_lists {
	display: flex;
	flex-direction: column;
	row-gap: 20px;
	flex: 1 1 0px;
	list-style: none;
}

.notice_lists li {
	padding: unset;
	margin: unset;
	display: flex;
	column-gap: 20px;
	align-items: center;
}

.noticeTitle {
	font-size: 24px;
	font-weight: bold;
}

.noticeDate {
	font-size: 15px;
}

.main3 {
	padding: 5px 20px;
}

.slideBoard {
	max-width: 1200px;
	margin: auto;
}

.slideTitle {
	margin-bottom: 32px;
	display: flex;
	align-items: center;
	font-weight: 700;
	font-size: 36px;
	line-height: 38px;
	font-family: 'yg-jalnan', verdana, tahoma;
	color: #F7E3A5;
	text-shadow: -2px 0 #4758A8, 0 2px #4758A8, 2px 0 #4758A8, 0 -2px
		#4758A8;
}

.slideTitle::before {
	content: "";
	background-image: url(resources/강아지발바닥.png);
	display: inline-block;
	background-size: cover;
	margin-right: 14px;
	width: 35px;
	height: 35px;
	flex: 0 0 auto;
}

.slideContent {
	/* background-image: url("https://sscampus.kr/images/components/board-frame.png"); */
	background-size: 100% 100%;
	background-repeat: no-repeat;
	padding: 49px 75px 73px;
	position: relative;
	overflow: hidden;
	width: 1050px;
	margin: 0 auto;
	height: 500px;
}

.slides {
	position: absolute;
	left: 0;
	top: 30px;
	padding-left: 10px;
}

.slides>li {
	list-style: none;
}

.slides.animated {
	transition: 0.5s ease-out;
}

.slides li {
	width: 250px;
	background-color: #E6F2FF;
	float: left;
	border-radius: 20px;
	text-align: center;
}

.slides li:not(:last-child) {
	margin-right: 10px;
}

.cardWrap {
	width: 100%;
	position: relative;
	flex-shrink: 0;
	height: 100%;
	position: relative;
	margin-right: 107px;
}

.imgWrap {
	text-align: center;
}

.cardImg {
	width: 90%;
	height: 200px;
	border-radius: 100%;
	overflow: hidden;
}

.cardContent {
	text-align: center;
	margin-top: 10px;
}

.card-title {
	font-size: 16px;
	font-weight: 600;
	white-space: normal;
	overflow: hidden;
}

.main4 {
	padding: 120px 0px 123px;
	background-image: url(resources/back.png);
	background-size: 100%;
	background-repeat: no-repeat;
	/* background-position: right center; */
	position: relative;
}

.main4::after {
	content: "";
	background-image: url(resources/Big.png);
	background-position: right bottom;
	background-size: auto 82.9876%;
	background-repeat: no-repeat;
	width: 1200px;
	left: 50%;
	transform: translate(-50%);
	position: absolute;
	bottom: 0px;
	top: 0px;
	pointer-events: none;
}

.main4Wrap {
	max-width: 1200px;
	margin: auto;
	padding: 0px 20px;
}

.main4Title {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	margin-bottom: 36px;
	font-weight: 700;
	font-size: 36px;
	line-height: 38px;
	font-family: 'yg-jalnan', verdana, tahoma;
	color: #F7E3A5;
	text-shadow: -2px 0 #4758A8, 0 2px #4758A8, 2px 0 #4758A8, 0 -2px
		#4758A8;
}

.main4Title::before {
	content: "";
	background-image: url(resources/강아지발바닥.png);
	display: inline-block;
	background-size: cover;
	margin-right: 14px;
	width: 35px;
	height: 35px;
	flex: 0 0 auto;
}

.main4Content {
	font-style: normal;
	font-weight: 400;
	font-size: 20px;
	line-height: 30px;
	color: F7E3A5;
}

.testGo {
	margin-top: 50px;
	background: rgb(83, 193, 243);
	border: 1px solid rgb(83, 193, 243);
	border-radius: 50px;
	padding: 12px 45px;
	font-style: normal;
	font-weight: 700;
	font-size: 16px;
	line-height: 30px;
	text-align: center;
	color: rgb(255, 255, 255);
	cursor: pointer;
	transition: all 0.3s ease-in-out 0s;
}
</style>
</head>
<body>

<jsp:include page="views/common/menubar.jsp"/>

	<script>
		$(function(){
			$.ajax({
				type:"get",
				async:false,
				url:"<%=request.getContextPath()%>/main.no",
				success:function(result){
					let str = "";
					for(let i = 0; i<result.length; i++){
						str += "<li class='notice_list'>"
							+"<div class='noticeDate'>" + result[i].createDate + "</div>"
							+"<div class='noticeTitle'>" + result[i].boardTitle + "</div>"
							+ "</li>"
					}
					$(".notice_lists").html(str);
				}
			});
		});
	</script>

	<div class="mainContent">
		<div>
			<div class="main1">
				<div class="main1-text" data-aos="fade-up">
					집사들을 위한 <br>반려동물<br> 커뮤니케이션 사이트
				</div>
				<div class="main1_img" data-aos="fade-up"></div>
			</div>
			<div class="main2 my-5" data-aos="fade-up">
				<div class="main2_wrap">
					<div class="main2_title">공지사항</div>
					<div>
						<ul class="notice_lists"></ul>
					</div>
				</div>
			</div>
			<div class="main3" data-aos="fade-up">
				<div class="slideBoard">
					<div class="slideTitle">같이걷개</div>
					<div class="slideContent">
						<ul class="slides">
							<li>
								<div class="cardWrap">
									<div class="cards">
										<div class="imgWrap mt-3">
											<img src="resources/산책.jpg" class="cardImg"> <a
												href="#" class="btn btn-outline-warning btn-sm my-3">같이걷개</a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="cardWrap">
									<div class="cards">
										<div class="imgWrap mt-3">
											<img src="resources/산책.jpg" class="cardImg"> <a
												href="#" class="btn btn-outline-warning btn-sm my-3">같이걷개</a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="cardWrap">
									<div class="cards">
										<div class="imgWrap mt-3">
											<img src="resources/산책.jpg" class="cardImg"> <a
												href="#" class="btn btn-outline-warning btn-sm my-3">같이걷개</a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="cardWrap">
									<div class="cards">
										<div class="imgWrap mt-3">
											<img src="resources/산책.jpg" class="cardImg"> <a
												href="#" class="btn btn-outline-warning btn-sm my-3">같이걷개</a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="cardWrap">
									<div class="cards">
										<div class="imgWrap mt-3">
											<img src="resources/산책.jpg" class="cardImg"> <a
												href="#" class="btn btn-outline-warning btn-sm my-3">같이걷개</a>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="main4" data-aos="fade-up">
				<div class="main4Wrap" data-aos="fade-up">
					<div class="main4Title">
						우리집 뽀삐<br> 대체 뭔 생각을 하는가
					</div>
					<div class="main4Content">DBTI를 통해 강아지 성격을 확인해보세요!</div>
					<a href="<%= request.getContextPath()%>/dbti">
						<button class="testGo">테스트하러가기</button>
					</a>
				</div>

			</div>
		</div>
	</div>

<jsp:include page="views/common/footer.jsp"/>

	<script>
		AOS.init();

		setInterval(function() {
			$('.dog_land').css({
				'background-position' : '-=7'
			});
		}, 80);
	</script>

	
	<script>
		var slides = document.querySelector(".slides"), slide = document
				.querySelectorAll(".slides li"), currentIndx = 0, slideCount = slide.length, slideWidth = 250, slideMargin = 10;

		makeClone();

		function makeClone() {
			for (var i = 0; i < slideCount; i++) {
				//a.cloneNode(), a.cloneNode(true) => a의 자식까지 복사
				var cloneSlide = slide[i].cloneNode(true);
				cloneSlide.classList.add('clone');
				//a.appendChind(b)
				slides.appendChild(cloneSlide);
			}

			for (var i = slideCount - 1; i >= 0; i--) {
				//a.cloneNode(), a.cloneNode(true) => a의 자식까지 복사
				var cloneSlide = slide[i].cloneNode(true);
				cloneSlide.classList.add('clone');
				//a.prepend(b)
				slides.prepend(cloneSlide);
			}
			updateWidth();
			setInitialPos();
			setTimeout(function() {
				slides.classList.add('animated');
			}, 100);

		}

		function updateWidth() {
			var currenSlides = document.querySelectorAll(".slides li");
			var newSlideCount = currenSlides.length;

			var newWidth = (slideWidth + slideMargin) * newSlideCount
					- slideMargin + 'px';
			slides.style.width = newWidth;
		}

		function setInitialPos() {
			var initialTranslateValue = -(slideWidth + slideMargin)
					* slideCount;
			// slides {transform:translateX(-1000px);}
			slides.style.transform = 'translateX(' + initialTranslateValue
					+ 'px)';
		}

		function moveSlide(num) {
			slides.style.left = -num * (slideWidth + slideMargin) + 'px';
			currentIndx = num;

			if (currentIndx == slideCount || currentIndx == -slideCount) {

				setTimeout(function() {
					slides.classList.remove('animated');
					slides.style.left = '0px';
					currentIndx = 0;
				}, 500);
				setTimeout(function() {
					slides.classList.add('animated');
				}, 600);
			}
		};

		var timer = undefined;

		function autoSlide() {
			if (timer == undefined) {
				timer = setInterval(function() {
					moveSlide(currentIndx + 1);
				}, 3000);
			}
		}
		autoSlide();
		function stopSlide() {
			clearInterval(timer);
			timer = undefined;
		}
		slides.addEventListener('mouseenter', function() {
			stopSlide();
		});
		slides.addEventListener('mouseleave', function() {
			autoSlide();
		});
	</script>
</body>
</html>