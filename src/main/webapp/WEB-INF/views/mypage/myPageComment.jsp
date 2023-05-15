<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>Traveller - 위시리스트</title>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">후기 작성</h1>
<p class="mb-4">
	${nickname }님의 후기작성 화면입니다!
</p>

<!-- 본문  -->
<div class="card shadow mb-4" id = "ajaxwish">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">후기 작성</h6>
	</div>
	<form action="myPageCreateComment.do" method="post">
		<select name="point" class="form-control custom-select">
				<option value="5">5점</option>
				<option value="4">4점</option>
				<option value="3">3점</option>
				<option value="2">2점</option>
				<option value="1">1점</option>
		</select>
		<input type="hidden" name="commenthotelid" value="${commentHotelId }">
		<textarea name="pdesc" cols="100" rows="10"></textarea>
		<input type="submit" value="등록"> <input type="reset"
				value="초기화">
	</form>
</div>

