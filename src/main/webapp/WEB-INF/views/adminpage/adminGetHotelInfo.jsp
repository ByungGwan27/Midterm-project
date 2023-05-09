<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
	<main id="main" class="main">
<h3>admingetHotelInfo</h3>
<h5>숙소정보확인</h5>
<form action="adminHotelInfoModifyPage.do" method="GET">
	<table class="table">
		<tr>
			<th>메인이미지</th>
			<td><img width="200px" src="cssMainpage/images/${adminHotelInfo.hotelImage}"></td>
		</tr>
		<tr>
			<th>hotelId</th>
			<td><input type="text" name="hotelId" value="${adminHotelInfo.hotelId}" readonly></td>
		</tr>
		<tr>
			<th>상호명</th>
			<td><input type="text" name="hotelName" value="${adminHotelInfo.hotelName}" readonly></td>
		</tr>
		<tr>
			<th>위치1(시도)</th>
			<td><input type="text" name="hotelLocation1"	value="${adminHotelInfo.hotelLocation1}" readonly></td>
		</tr>
		<tr>
			<th>위치2(시군구)</th>
			<td><input type="text" name="hotelLocation2"	value="${adminHotelInfo.hotelLocation2}" readonly></td>
		</tr>
		<tr>
			<th>시설정보</th>
			<td>
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">주차장
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">wifi
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">애완동물동반가능여부
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">조식
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">수영장
			</td>
		</tr>
		<tr>
			<th>유의사항</th>
			<td><textarea rows="3" cols="20" name="subject">${noticeInfo.noticeSubject}</textarea></td>
		</tr>
		<td colspan="2" align="center">
			<button type="submit">수정</button>
			<button type="button">취소</button>
		</td>
	</table>
</form>
</main>

