<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Traveller - 예약내역</title>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">예약내역</h1>
<p class="mb-4">
	<a class="btn btn-primary" href="#!">미방문</a> 
	<a class="btn btn-primary" href="#!">방문중</a>
	<a class="btn btn-primary" href="#!">방문</a>
</p>

<!-- 본문  -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">${nickname }님의 미방문 예약내역입니다! 즐거운 여행 되세요!| ~~ 님의 방문하신곳입니다.</h6>
	</div>
	
	<!-- 한 단위 -->
	<div class="row gx-4 gx-lg-5 align-items-center my-5">
		<div class="col-lg-7 gwan-checkbox">
			<!-- id와 for의 값이 같아야 체크가 됨 -->
			<input type="checkbox" name="1" value="1"
				class="gwan-button-size gwan-button-type" id="1"><label
				for="1" class="px-4"></label> <img
				class="img-fluid rounded mb-4 mb-lg-0"
				src="https://dummyimage.com/300x200/dee2e6/6c757d.jpg" alt="..." />
		</div>
		<div class="col-lg-5">
			<h5 class="font-weight-light">미방문 상호명</h5>
			<p>예약 날짜 : 2023.02.22 - 2023.08.18</p>
			<p>숙소 위치 : 대구광역시 중구 중앙대로 403 5층</p>
			<a class="btn btn-primary" href="#!">예약 수정</a> <a
				class="btn btn-primary" href="#!">에약 취소</a>
		</div>
	</div>



</div>
	
<script>
	let showWish = ['hotelName', 'hotelLocation1', 'hotelLocation2', 'HotelThema', 'WishlistId', 'RoomPrice'];
	let xhtp = new XMLHttpRequest();
	xhtp.open('get', 'myPageWishListAjax.do?page=${pageInfo.pageNum }');
	xhtp.send();

	
	
	
</script>