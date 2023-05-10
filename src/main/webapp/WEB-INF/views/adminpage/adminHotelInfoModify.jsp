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
				<td><img width="200px" src="cssMainpage/images/${adminHotelInfo.hotelImage}"></td>
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
				<td><input type="text" name="hotelLocation1" value="${adminHotelInfo.hotelLocation1}"></td>
			</tr>
			<tr>
				<th>위치2(시군구)</th>
				<td><input type="text" name="hotelLocation2" value="${adminHotelInfo.hotelLocation2}"></td>
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
				<td colspan="2">
					<h5>객실정보확인</h5>
				</td>
			</tr>
			<c:if test="${empty adminRoomList}">
				<tr>
					<td colspan="2">
						<p>객실 정보가 없습니다.</p>
					</td>
				</tr>
			</c:if>
			<c:forEach var="adminRoomList" items="${adminRoomList}">
				<tr>
					<th>객실사진</th>
					<td><img width="200px" src="cssMainpage/images/hero-slider-1.jpg"></td>
				</tr>
				<tr>
					<th>roomId</th>
					<td><input type="text" name="roomId" value="${adminRoomList.roomId}"></td>
				</tr>
				<tr>
					<th>방이름</th>
					<td><input type="text" name="roomName" value="${adminRoomList.roomName}"></td>
				</tr>
				<tr>
					<th>방설명</th>
					<td><input type="text" name="roomExpain" value="${adminRoomList.roomExpain}"></td>
				</tr>
				<tr>
					<th>방등급</th>
					<td><input type="text" name="roomGrade" value="${adminRoomList.roomGrade}"></td>
				</tr>
				<tr>
					<th>객실가격</th>
					<td><input type="text" name="roomPrice" value="${adminRoomList.roomPrice}"></td>
				</tr>
				<tr>
					<th>최소인원</th>
					<td><input type="text" name="roomMin" value="${adminRoomList.roomMin}"></td>
				</tr>
				<tr>
					<th>최대인원</th>
					<td><input type="text" name="roomMax" value="${adminRoomList.roomMax}"></td>
				</tr>
				<tr>
					<th>인원추가시발생금액</th>
					<td><input type="text" name="addPrice" value="${adminRoomList.addPrice}"></td>
				</tr>
			
			</c:forEach>
				<tr>
					<td colspan="2" align="center">
						<button type="submit">수정</button>
						<button type="button">취소</button>
					</td>
				</tr>
		</table>
	</form>
</main>