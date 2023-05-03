<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Traveller - 위시리스트</title>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">위시리스트</h1>
<p class="mb-4">
	~~님의 위시리트입니다!
</p>

<!-- 본문  -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">위시리스트입니다.</h6>
	</div>

	<!-- 한 단위 -->
	<div class="row gx-4 gx-lg-5 align-items-center my-5">
		<div class="col-lg-7 gwan-checkbox">
			<!-- id와 for의 값이 같아야 체크가 됨 -->
			<input type="checkbox" name="2" value="2"
				class="gwan-button-size gwan-button-type" id="2"><label
				for="2" class="px-4"></label> <img
				class="img-fluid rounded mb-4 mb-lg-0"
				src="https://dummyimage.com/500x200/dee2e6/6c757d.jpg" alt="..." />
		</div>
		<div class="col-lg-5">
			<h5 class="font-weight-light">미방문 상호명</h5>
			<p>테마</p>
			<p>숙소 위치 : 대구광역시 중구 중앙대로 403 5층</p>
			<p>최저가 : 30,000원</p>
			<a class="btn btn-primary" href="#!">삭제</a> <a
				class="btn btn-primary" href="#!">예약</a>
		</div>
	</div>
</div>


