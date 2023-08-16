<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.content {
	padding: 10px;
	width: 80%;
	margin: 0 auto;
}

.titleArea {
	display: flex;
   	margin-top: 20px;
	justify-content: space-between;
	align-items: flex-start;
	align-items: center;
	flex-direction: row;
}

.sell_write_btn {
	text-align: right;
	text-decoration: none;
	padding-left: 650px;
}

.title {
	font-weight: 900;
}

.categoryArea {
	border-top: 2px solid #000;
	background-color: #f5f7f8;
	margin-top: 10px;
}

.categoryArea>ul {
	list-style: none;
	padding: 10px 60px 10px 16px;
}

.categoryArea>ul li {
	display: inline-block;
}

.categoryBtn {
	overflow: hidden;
	position: absolute;
	top: 0;
	left: 0;
	clip: rect(0, 0, 0, 0);
	width: 1px;
	height: 1px;
	margin: -1px;
	padding: 0;
	border: 0;
}

.categoryBtnLabel {
	cursor: pointer;
	padding: 0 14px;
	border: 1px solid #e1e1e1;
	border-radius: 17px;
	background-color: #fff;
	font-size: 13px;
	line-height: 32px;
	color: #333;
	letter-spacing: -0.5px;
	vertical-align: top;
}

.categoryBtn:checked+.categoryBtnLabel {
	cursor: pointer;
	padding: 0 14px;
	border: 1px solid rgb(83, 193, 243);
	border-radius: 17px;
	background: #fff;
	font-size: 13px;
	line-height: 32px;
	color: rgb(83, 193, 243);
	letter-spacing: -0.5px;
	vertical-align: top;
}

.noList {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin: 0 auto;
}
</style>
</head>
<body>

	<%@ include file="../../common/menubar.jsp"%>

	<div class="content">
		<div class="titleArea">
			<h4 class="title">전체 목록</h4>
			<div class="sell_write_btn">
				<a class="btn btn-outline-warning" href="<%=request.getContextPath()%>/insertSell">등록하기</a>
			</div>
		</div>
		<div class="categoryArea">
			<ul class="categoryList">
				<li class="category"><input type="checkbox" id="freeDeliver"
					class="categoryBtn"> <label for="freeDeliver"
					class="categoryBtnLabel">무료배송</label></li>
				<li class="category"><input type="checkbox" id="todayDeliver"
					class="categoryBtn"> <label for="todayDeliver"
					class="categoryBtnLabel">오늘출발</label></li>
				<li class="category"><input type="checkbox" id="saleItem"
					class="categoryBtn"> <label for="saleItem"
					class="categoryBtnLabel">할인상품</label></li>
				<li class="category"><input type="checkbox" id="bestItem"
					class="categoryBtn"> <label for="bestItem"
					class="categoryBtnLabel">인기상품</label></li>
			</ul>
		</div>
		<div class="row row-cols-1 row-cols-md-5 g-4">
			<div class="col">
				<div class="card">
					<img
						src="https://shop-phinf.pstatic.net/20230802_250/1690947373303vaexm_JPEG/4413367585113612_1587980781.jpg?type=f296_296"
						class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">상품명</h5>
						<p class="card-text">상품소개글</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<img
						src="https://shop-phinf.pstatic.net/20230802_250/1690947373303vaexm_JPEG/4413367585113612_1587980781.jpg?type=f296_296"
						class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">상품명</h5>
						<p class="card-text">상품소개글</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<img
						src="https://shop-phinf.pstatic.net/20230802_250/1690947373303vaexm_JPEG/4413367585113612_1587980781.jpg?type=f296_296"
						class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">상품명</h5>
						<p class="card-text">상품소개글</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<img
						src="https://shop-phinf.pstatic.net/20230802_250/1690947373303vaexm_JPEG/4413367585113612_1587980781.jpg?type=f296_296"
						class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">상품명</h5>
						<p class="card-text">상품소개글</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<img
						src="https://shop-phinf.pstatic.net/20230802_250/1690947373303vaexm_JPEG/4413367585113612_1587980781.jpg?type=f296_296"
						class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">상품명</h5>
						<p class="card-text">상품소개글</p>
					</div>
				</div>
			</div>
		</div>

		<div class="noList">
			<img src="https://ifh.cc/g/Dj92MS.png" width="40px" height="40px"
				style="margin: 10px;">
			<p>현재 조회된 상품이 없습니다.</p>
		</div>

	</div>



	<jsp:include page="../../common/footer.jsp"/>

</body>
</html>