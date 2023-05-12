<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.center {
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}

.rate {
	background:
		url(https://aldo814.github.io/jobcloud/html/images/user/star_bg02.png)
		no-repeat;
	width: 121px;
	height: 20px;
	position: relative;
}

.rate span {
	position: absolute;
	background:
		url(https://aldo814.github.io/jobcloud/html/images/user/star02.png);
	width: auto;
	height: 20px;
}
</style>

<div class="row">
	<!-- 사이드바 -->
	<nav id="sidebar">
		<div class="p-4 pt-5" style="width: 280px;">
			<h5>Categories</h5>
			<ul class="list-unstyled components mb-5">
				<li><a href="#pageSubmenu1" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">지역</a>
					<ul class="collapse list-unstyled" id="pageSubmenu1">
						<!--	<li><a href="#pageSubmenu6" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">서울특별시</a> -->
						<!-- <ul class="collapse list-unstyled" id="pageSubmenu6"> -->
						<c:forEach var="navListLoca" items="${navListLoca}">
							<li id="loca" onclick="selectLoca()"><a href="hotelListPage.do?hotelLocation1=${navListLoca.hotelLocation1}"> <span
									class="fa fa-chevron-right mr-2"></span>${navListLoca.hotelLocation1}</a></li>
							</c:forEach>
					</ul>
					</li>
				<li><a href="#pageSubmenu2" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">가격</a>
					<ul class="collapse list-unstyled" id="pageSubmenu2">
						<li>
							<div class="form-group d-flex">
								<div class="slidecontainer">
									<input type="range" min="10000" max="900000" value="50"
										class="slider" id="myRange">
								</div>
							</div>
						</li>
						<li><div class="mb-5">
								<form action="#" class="subscribe-form">
									<div class="form-group d-flex">
										<!-- <div class="icon"><span class="icon-paper-plane"></span></div> -->
										<input type="text" placeholder="가격입력">
									</div>
								</form>
							</div></li>
					</ul>
					</li>
				<li>
				<a href="#pageSubmenu3" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">테마(숙소종류)</a>
					<ul class="collapse list-unstyled" id="pageSubmenu3">
					<c:forEach var="navListThema" items="${navListThema}">
							<li id="loca"><a href="hotelListPage.do?hotelThema=${navListThema.hotelThema}"> <span
									class="fa fa-chevron-right mr-2"></span>${navListThema.hotelThema}</a></li>
							</c:forEach>
					</ul>
					</li>
				<li><a href="#pageSubmenu4" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">편의시설</a>
					<ul class="collapse list-unstyled" id="pageSubmenu4">
						<!-- <li><div class="mb-5">
                    <form action="#" class="subscribe-form">
                      <div class="form-group d-flex">
                        <input type="checkbox">편의시설1<br>
                        <input type="checkbox">편의시설2<br>
                        <input type="checkbox">편의시설3<br>
                        <input type="checkbox">편의시설4<br>
                        <input type="checkbox">편의시설5
                        <div class="icon"><span class="icon-paper-plane"></span></div>
                        <input type="text" class="form-control" placeholder="Enter Email Address">
                      </div>
                    </form>
                  </div></li> -->
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">편의시설1</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">주차장</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">wifi</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">애완동물동반</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">조식</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">수영장</li>
					</ul></li>
				<li><a href="#pageSubmenu5" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">최대인원</a>
					<ul class="collapse list-unstyled" id="pageSubmenu5">
						<li>
							<div class="mb-5">
								<form action="#" class="subscribe-form">
									<div class="form-group d-flex">
										<!-- <div class="icon"><span class="icon-paper-plane"></span></div> -->
										<input type="text" placeholder="인원입력">
									</div>
								</form>
							</div>
						</li>
					</ul></li>
			</ul>
			<!-- <div class="mb-5">
              <h5>Tag Cloud</h5>
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">dish</a>
                <a href="#" class="tag-cloud-link">menu</a>
                <a href="#" class="tag-cloud-link">food</a>
                <a href="#" class="tag-cloud-link">sweet</a>
                <a href="#" class="tag-cloud-link">tasty</a>
                <a href="#" class="tag-cloud-link">delicious</a>
                <a href="#" class="tag-cloud-link">desserts</a>
                <a href="#" class="tag-cloud-link">drinks</a>
              </div>
            </div> -->
			<!-- <div class="mb-5">
              <h5>Newsletter</h5>
              <form action="#" class="subscribe-form">
                <div class="form-group d-flex">
                  <div class="icon"><span class="icon-paper-plane"></span></div>
                  <input type="text" class="form-control" placeholder="Enter Email Address">
                </div>
              </form>
            </div>-->
		</div>
	</nav>
	<!-- 사이드바끝 -->

	<!-- list -->
	<div style="justify-content: center;">
		<p align="right">
			<a href="#">높은가격순</a> / <a href="#">낮은가격순</a> / <a href="#">이름순</a> /
			<a href="#">인기순</a>
		</p>
		<hr>
		<c:if test="${empty hotelList}">
			<p>호텔 정보가 없습니다.</p>
		</c:if>
		<c:forEach var="hotelList" items="${hotelList}">
			<div style="width: 800px">
				<table border="1">
					<tr>
						<td rowspan="4">
							<div style="margin: 10px; width: 205px;">
								<img src="cssMainpage/images/${hotelList.hotelImage}"
									alt="hotelImage" width="200">
							</div>
						</td>
						<td>
							<h3>${hotelList.hotelName}</h3>
						</td>
						<td>${hotelList.hotelThema}</td>
						<td rowspan="4"><div style="width: 200px;"></div></td>
						<td>
							<div>후기개수 : ${hotelList.rcount}</div>
						</td>
						<td></td>
					</tr>
					<tr>
						<td>평점 : ${hotelList.avgpoint}
							<div class="rate">
								<span style="width: ${hotelList.avgstar}%;"></span>
							</div>
						</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>${hotelList.hotelLocation1}${hotelList.hotelLocation2}</td>
						<td></td>
						<td><h4>${hotelList.roomPrice}</h4></td>
						<td><button>
								<a href="hotelInfoPage.do?hotelLocation1=${hotelList.hotelLocation1}&hotelId=${hotelList.hotelId}">예약</a>
							</button></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>할인적용가</td>
						<td></td>
					</tr>
				</table>
			</div>
			<hr>
		</c:forEach>
		<!-- 리스트끝 -->

		<!-- 페이징 20*10 -->
		<div class="center">
			<div class="pagination">
				<c:if test="${pageInfo.prev}">
					<a href="noticeList.do?page=${pageInfo.startPage-1}">Previous</a>
				</c:if>
				<c:forEach var="i" begin="${pageInfo.startPage}"
					end="${pageInfo.endPage}">
					<a class="${i==pageInfo.pageNum ? 'active' : ''}"
						href="noticeList.do?page=${i}">${i}</a>
				</c:forEach>
				<c:if test="${pageInfo.next}">
					<a href="noticeList.do?page=${pageInfo.endPage+1}">Next</a>
				</c:if>
			</div>
		</div>
	</div>
</div>



<!-- <script>
	var getHotelListLoca = function() {
		var selectLoca = document.getElementById("loca").innerText
		console.log(selectLoca);
		var url = "hotelListPage.do?hotelLocaion1=" + selectLoca;
		window.location.href = url;
	}
	var locaElement = document.getElementById("loca");
	locaElement.onclick = getHotelListLoca;
</script>

 -->
