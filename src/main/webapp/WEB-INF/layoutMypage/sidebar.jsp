<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="URI" value="${pageContext.request.requestURI}" />


<ul
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a
		class="sidebar-brand d-flex align-items-center justify-content-center"
		href="mainPage.do">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">Traveller</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Heading -->
	<div class="sidebar-heading">보관함</div>

	<!-- Nav Item - 예약내역 -->
	<li class="nav-item active"><a class="nav-link"
		href="myPageHome.do"> <i class="fas fa-fw fa-table"></i> <span>예약내역</span>
	</a></li>

	<!-- Nav Item - 위시리스트 -->
	<li class="nav-item"><a class="nav-link" href="myPageWishList.do">
			<i class="fas fa-fw fa-tachometer-alt"></i> <span>위시리스트</span>
	</a></li>
	<!-- fas fa-fw fa-chart-area -->

	<!-- Nav Item - 보유쿠폰 -->

	<li class="nav-item"><a class="nav-link" href="myPageCoupon.do">
			<i class="fas fa-fw fa-folder"></i> <span>보유쿠폰</span>
	</a></li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">설정</div>

	<!-- Nav Item - 회원정보수정 -->
	<li class="nav-item"><a class="nav-link"
		href="myPageUserInfoChange.do"> <i class="fas fa-fw fa-wrench"></i>
			<span>회원정보수정</span></a></li>

	<!-- Nav Item - Q&A -->
	<li class="nav-item"><a class="nav-link" href="myPageQna.do">
			<i class="fas fa-fw fa-cog"></i> <span>Q&A</span>
	</a></li>

	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

	<!-- Sidebar Message -->
	<div class="sidebar-card d-none d-lg-flex">
		<img class="sidebar-card-illustration mb-2"
			src="cssMypage/img/undraw_rocket.svg" alt="...">
		<p class="text-center mb-2">
			<strong>냠냠</strong> is packed with premium features, components, and
			more!
		</p>
		<a class="btn btn-success btn-sm"
			href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to
			Pro!</a>
	</div>

</ul>

<!-- 기본 세팅 -->
<!-- Bootstrap core JavaScript-->
<script src="cssMypage/vendor/jquery/jquery.min.js"></script>
<script src="cssMypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="cssMypage/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="cssMypage/js/sb-admin-2.min.js"></script>