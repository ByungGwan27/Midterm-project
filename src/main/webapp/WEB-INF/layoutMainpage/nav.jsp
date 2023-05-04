<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="site-nav">
	<div class="container">
		<div class="site-navigation">
			<a href="mainPage.do" class="logo m-0">Traveller <span
				class="text-primary">.</span></a>

			<ul
				class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
				<li class="active"><a href="dormListPage.do">숙소</a></li>
				<li><a href="postList.do">여행포스트</a></li>
				<li><a href="">로그인</a></li>
				<li><a href="">관리자페이지</a></li>
				<li class="has-children"><a href="myPageHome.do">마이페이지</a>
					<ul class="dropdown">
						<li><a href="myPageWishList.do">위시리스트</a></li>
						<li><a href="myPageUserInfoChange.do">회원정보수정</a></li>
						<li><a href="myPageCoupon">쿠폰함</a></li>
						<li><a href="myPageMessage">메세지함</a></li>
						<li><a href="myPageQna.do">QnA</a></li>
						<!-- <li class="has-children"><a href="#">Menu Two</a>
							<ul class="dropdown">
								<li><a href="#">Sub Menu One</a></li>
								<li><a href="#">Sub Menu Two</a></li>
								<li><a href="#">Sub Menu Three</a></li>
							</ul></li> -->
					</ul></li>

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
										<input type="text" class="form-control"
											placeholder="인원수">
									</div>

								</div>
								<div class="row align-items-center">
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
										<input type="submit" class="btn btn-primary btn-block"
											value="검색">
									</div>
									<div class="col-lg-8">
										<label class="control control--checkbox mt-3"> <span
											class="caption">설정 저장</span> <input
											type="checkbox" checked="checked" />
											<div class="control__indicator"></div>
										</label>
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
						src="cssMainpage/images/busan.jpg" alt="Image"
						class="img-fluid" style="height: 705px;"> <img
						src="cssMainpage/images/Gyeongju.jpg" alt="Image"
						class="img-fluid" style="height: 705px;"> <img
						src="cssMainpage/images/Seoul.jpg" alt="Image"
						class="img-fluid" style="height: 705px;"> <img
						src="cssMainpage/images/Jeonju.jpg" alt="Image"
						class="img-fluid" style="height: 705px;">
				</div>
			</div>
		</div>
	</div>
</div>