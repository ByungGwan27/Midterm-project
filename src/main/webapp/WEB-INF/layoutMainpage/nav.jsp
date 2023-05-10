<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="site-nav">
	<div class="container">
		<div class="site-navigation">
			<a href="mainPage.do" class="logo m-0">Traveller <span
				class="text-primary">.</span></a>

			<ul
				class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
				<li class="active"><a href="hotelListPage.do">숙소</a></li>
				<li><a href="postList.do">여행포스트</a></li>
				<c:choose>
					<c:when test="${id == null }">
						<li><a href="loginPage.do">로그인</a></li>
					</c:when>
					<c:otherwise>
						<!-- 5.10 강병관. 로그아웃시 알림 기능 -->
						<li><a href="#" onclick='logOut()' id='gwanLogout'>로그아웃</a></li>
						<!-- <li><a href="logout.do">로그아웃</a></li> -->
					</c:otherwise>
				</c:choose>
				<c:if test="${id != null }">
					<c:if test="${grade == 5 }">
						<li><a href="adminPage.do">관리자페이지</a></li>
					</c:if>
					
						<li class="has-children"><a href="myPageHome.do">마이페이지</a>
							<ul class="dropdown">
								<li><a href="myPageWishList.do">위시리스트</a></li>
								<li><a href="myPageCoupon.do">쿠폰함</a></li>
								<li><a href="myPageMessage.do">메세지함</a></li>
								<li><a href="myPageQna.do">QnA</a></li>
								<!-- <li class="has-children"><a href="#">Menu Two</a>
							<ul class="dropdown">
								<li><a href="#">Sub Menu One</a></li>
								<li><a href="#">Sub Menu Two</a></li>
								<li><a href="#">Sub Menu Three</a></li>
							</ul></li> -->
							</ul></li>
					
				</c:if>
				<li><a href="noticeList.do">공지사항</a></li>
			</ul>

			<a href="#"
				class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light"
				data-toggle="collapse" data-target="#main-navbar"> <span></span>
			</a>

		</div>
	</div>
</nav>

<div class="hero">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-7">
				<div class="intro-wrap">
					<h1 class="mb-5">
						<span class="d-block">Let's Enjoy Your</span> Trip In <span
							class="typed-words"></span>
					</h1>

					<div class="row">
						<div class="col-12">
							<form class="form">
								<div class="row mb-2">
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
										<select name="" id="" class="form-control custom-select">
											<option value="">서울특별시</option>
											<option value="">부산광역시</option>
											<option value="">대구광역시</option>
											<option value="">인천광역시</option>
											<option value="">광주광역시</option>
											<option value="">대전광역시</option>
											<option value="">울산광역시</option>
											<option value="">세종특별자치시</option>
											<option value="">경기도</option>
											<option value="">강원도</option>
											<option value="">충청북도</option>
											<option value="">충청남도</option>
											<option value="">전라북도</option>
											<option value="">전라남도</option>
											<option value="">경상북도</option>
											<option value="">경상남도</option>
											<option value="">제주특별자치도</option>
										</select>
									</div>
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-5">
										<input type="text" class="form-control" name="daterange">
									</div>
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-3">
										<input type="text" class="form-control" placeholder="인원수">
									</div>

								</div>
								<div class="row align-items-center">
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
										<input type="submit" class="btn btn-primary btn-block"
											value="검색">
									</div>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="slides" style="height: 705px;">
					<img src="cssMainpage/images/jeju.jpg" alt="Image"
						class="img-fluid active" style="height: 705px;"> <img
						src="cssMainpage/images/busan.jpg" alt="Image" class="img-fluid"
						style="height: 705px;"> <img
						src="cssMainpage/images/Gyeongju.jpg" alt="Image"
						class="img-fluid" style="height: 705px;"> <img
						src="cssMainpage/images/Seoul.jpg" alt="Image" class="img-fluid"
						style="height: 705px;"> <img
						src="cssMainpage/images/Jeonju.jpg" alt="Image" class="img-fluid"
						style="height: 705px;">
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	//5.10 강병관 로그아웃시 알림 기능
	function logOut() {
		let btnL = document.getElementById('gwanLogout');
			if (confirm("정말 로그아웃 하시겠습니까?")) {
				alert("로그아웃되었습니다");
				location.href = 'logout.do';
			}
	}
</script>