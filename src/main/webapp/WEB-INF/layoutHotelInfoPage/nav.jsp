<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<nav class="site-nav">
		<div class="container">
			<div class="site-navigation">
				<a href="mainPage.do" class="logo m-0">Traveller<span class="text-primary">.</span></a>

				<ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
					<!--<li class="active"><a href="index.html">숙소</a></li>-->
					
					<li><a href="services.html">숙소,개인</a></li>
					<li><a href="about.html">여행포스트</a></li>
					<c:choose>
						<c:when test="${id == null }">
							<li><a href="loginPage.do">로그인</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="logout.do">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
						<ul class="dropdown">
							<li><a href="myPageUserInfoChange.do">회원정보수정</a></li>
							<li><a href="myPageHome.do">예약정보</a></li>
							<!-- <li class="has-children">
								<a href="#">위시리스트</a>
								<ul class="dropdown">
									<li><a href="#">Sub Menu One</a></li>
									<li><a href="#">Sub Menu Two</a></li>
									<li><a href="#">Sub Menu Three</a></li>
								</ul>
							</li> -->
							<li><a href="myPageWishList.do">위시리스트</a></li>
							<li><a href="myPageQna.do">QnA</a></li>
						</ul>
					</li>
					<li><a href="noticeList.do">공지사항</a></li>
				</ul>

				<a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
					<span></span>
				</a>

			</div>
		</div>
	</nav>
	
	
  <div class="hero hero-inner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
            <h1 class="mb-0">Our Services</h1>
            <p class="text-white">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
          </div>
        </div>
      </div>
    </div>
  </div>