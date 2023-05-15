<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<main id="main" class="main">
	<h3>admingetHotelInfo</h3>
	<h5>객실정보확인</h5>
	<form action="adminRoomInfoModifyPage.do" method="GET">
		<table class="table">
			<tr>
				<th>객실이미지</th>
				<td><img width="200px"
					src="cssMainpage/images/${adminRoomInfo.image}" alt="roomImage"></td>
			</tr>
			<tr>
				<th>hotelId</th>
				<td><input type="text" name="hotelId"
					value="${adminRoomInfo.hotelId}" readonly></td>
			</tr>
			<tr>
				<th>roomId</th>
				<td><input type="text" name="roomId"
					value="${adminRoomInfo.roomId}" readonly></td>
			</tr>
			<tr>
				<th>방이름</th>
				<td><input type="text" name="roomName"
					value="${adminRoomInfo.roomName}" readonly></td>
			</tr>
			<tr>
				<th>방설명</th>
				<td><input type="text" name="roomExpain"
					value="${adminRoomInfo.roomExpain}" readonly></td>
			</tr>
			<tr>
				<th>방등급</th>
				<td><input type="text" name="roomGrade"
					value="${adminRoomInfo.roomGrade}" readonly></td>
			</tr>
			<tr>
				<th>객실가격</th>
				<td><input type="text" name="roomPrice"
					value="${adminRoomInfo.roomPrice}" readonly></td>
			</tr>
			<tr>
				<th>최소인원</th>
				<td><input type="text" name="roomMin"
					value="${adminRoomInfo.roomMin}" readonly></td>
			</tr>
			<tr>
				<th>최대인원</th>
				<td><input type="text" name="roomMax"
					value="${adminRoomInfo.roomMax}" readonly></td>
			</tr>
			<tr>
				<th>인원추가시발생금액</th>
				<td><input type="text" name="addPrice"
					value="${adminRoomInfo.addPrice}" readonly></td>
			</tr>
			<tr>
				<th>시설정보</th>
				<td><span class="fa fa-chevron-right mr-2"> 
					<input type="radio" name="roomType" value="singleRoom" <c:if test="${adminRoomInfo.singleRoom eq 1}">checked</c:if>>싱글룸</span> 
					<span class="fa fa-chevron-right mr-2"> 
					<input type="radio"	name="roomType" value="twinRoom" <c:if test="${adminRoomInfo.twinRoom eq 1}">checked</c:if>>트윈룸</span> 
					<span class="fa fa-chevron-right mr-2"> 
					<input type="radio"	name="roomType" value="doubleRoom" <c:if test="${adminRoomInfo.doubleRoom eq 1}">checked</c:if>>더블룸	</span> 
					<span class="fa fa-chevron-right mr-2"> 
					<input type="radio"	name="roomType" value="tripleRoom" <c:if test="${adminRoomInfo.tripleRoom eq 1}">checked</c:if>>트리플룸</span>
				</td>
			</tr>
			<tr>
				<th>시설정보</th>
				<td><span class="fa fa-chevron-right mr-2"  > <input
						type="checkbox" name="parking" value="2" <c:if test="${adminRoomInfo.parking eq 1}">checked</c:if>>주차장
				</span> <span class="fa fa-chevron-right mr-2"> <input
						type="checkbox" name="wifi" value="2"  <c:if test="${adminRoomInfo.wifi eq 1}">checked</c:if>>wifi
				</span> <span class="fa fa-chevron-right mr-2"> <input
						type="checkbox" name="pet" value="2"  <c:if test="${adminRoomInfo.pet eq 1}">checked</c:if>>애완동물동반가능여부
				</span> <span class="fa fa-chevron-right mr-2"> <input
						type="checkbox" name="breakfast" value="2"  <c:if test="${adminRoomInfo.breakfast eq 1}">checked</c:if>>조식
				</span> <span class="fa fa-chevron-right mr-2"> <input
						type="checkbox" name="pool" value="2" <c:if test="${adminRoomInfo.pool eq 1}">checked</c:if>>수영장
				</span></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">수정</button>
					<button type="button">취소</button>
				</td>
			</tr>

		</table>
	</form>

</main>