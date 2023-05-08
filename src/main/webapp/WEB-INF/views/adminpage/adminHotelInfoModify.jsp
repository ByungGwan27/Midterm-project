<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
	<main id="main" class="main">
<h3>hotelinfomodify</h3>
<h5>숙소정보수정</h5>
<form action="adminHotelInfoModifyPage.do" method="POST">
	<table class="table">
		<tr>
			<th>메인이미지</th>
			<td><img width="200px" src="cssMainpage/images/${adminHotelInfo.hotelImage }"></td>
		</tr>
			<tr>
			<th>hotelId</th>
			<td><input type="text" name="hotelId" value="${adminHotelInfo.hotelId}" readonly></td>
		</tr>
		<tr>
			<th>상호명</th>
			<td><input type="text" name="hotelName" value="${adminHotelInfo.hotelName}"></td>
		</tr>
		<tr>
			<th>위치1(시도)</th>
			<td><input type="text" name="hotelLocation1"	value="${adminHotelInfo.hotelLocation1}"></td>
		</tr>
		<tr>
			<th>위치2(시군구)</th>
			<td><input type="text" name="hotelLocation2"	value="${adminHotelInfo.hotelLocation2}"></td>
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
	</table>

<h5>숙소상세정보수정 * 객실전체조회해서보이게</h5>

<c:forEach var="adminRoomList" items="${adminRoomList}">
	<table class="table">
	<tr>
			<th>상세이미지</th>
			<td><img width="200px" src="cssMainpage/images/${adminRoomList.image}" alt="roomImage"></td>
		</tr>
		<tr>
			<th>객실명</th>
			<td><input type="text" name="nid" value="${adminRoomList.roomName}"></td>
		</tr>
		<tr>
			<th>가격</th>
			<td><input type="text" name="nid" value="${adminRoomList.roomPrice}"></td>
		</tr>
		<tr>
			<th>세부설명</th>
			<td>
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">더블룸
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">트윈룸
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">주차장
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">wifi
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">애완동물동반가능여부
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">조식
			<span class="fa fa-chevron-right mr-2"></span><input type="checkbox">수영장
			</td>
		</tr>
</c:forEach>
		<td colspan="2" align="center">
			<button type="submit">저장</button>
			<button type="button">취소</button>
		</td>
	</table>
</form>
</main>

