<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="site-nav">
	<div class="container">
		<div class="site-navigation">
			<a href="mainPage.do" class="logo m-0">Traveller<span class="text-primary">.</span></a>
			<ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
				<!--<li class="active"><a href="index.html">숙소</a></li>-->
				<li><a href="hotelListPage.do">숙소</a></li>
				<li><a href="postList.do">여행포스트</a></li>
				<c:choose>
					<c:when test="${id == null }">
						<li><a href="loginPage.do">로그인</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="logout.do">로그아웃</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="adminPage.do">관리자페이지</a></li>
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
				<li><a href="noticeList.do">공지사항</a></li>
			</ul>
		</div>
	</div>
</nav>


<div class="hero hero-inner">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6 mx-auto text-center">
				<div class="intro-wrap">
					<h1 class="mb-0">결제 페이지</h1>
					<p class="text-white">결제 페이지 만드는 중~~! </p>
				</div>
			</div>
		</div>
	</div>
</div>