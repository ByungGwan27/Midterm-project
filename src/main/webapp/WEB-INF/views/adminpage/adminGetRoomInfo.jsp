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
					src="cssMainpage/images/${adminRoomInfo.image}" alt = "roomImage"></td>
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
				<td><span class="fa fa-chevron-right mr-2"><input
						type="checkbox">주차장</span> <span class="fa fa-chevron-right mr-2"><input
						type="checkbox">wifi</span> <span
					class="fa fa-chevron-right mr-2"><input type="checkbox">애완동물동반가능여부</span>
					<span class="fa fa-chevron-right mr-2"> <input
						type="checkbox">조식
				</span> <span class="fa fa-chevron-right mr-2"><input
						type="checkbox">수영장</span></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">수정</button>
					<button type="button">취소</button>
				</td>
			</tr>

		</table>
	</form>



	<%-- <tr>
				<td><h5>객실정보확인</h5></td>
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
					<td><img width="200px"
						src="cssMainpage/images/hero-slider-1.jpg"></td>
				</tr>
				<tr>
					<th>roomId</th>
					<td><input type="text" name="roomId"
						value="${adminRoomList.roomId}" readonly></td>
				</tr>
				<tr>
					<th>방이름</th>
					<td><input type="text" name="roomName"
						value="${adminRoomList.roomName}" readonly></td>
				</tr>
				<tr>
					<th>방설명</th>
					<td><input type="text" name="roomExpain"
						value="${adminRoomList.roomExpain}" readonly></td>
				</tr>
				<tr>
					<th>방등급</th>
					<td><input type="text" name="roomGrade"
						value="${adminRoomList.roomGrade}" readonly></td>
				</tr>
				<tr>
					<th>객실가격</th>
					<td><input type="text" name="roomPrice"
						value="${adminRoomList.roomPrice}" readonly></td>
				</tr>
				<tr>
					<th>최소인원</th>
					<td><input type="text" name="roomMin"
						value="${adminRoomList.roomMin}" readonly></td>
				</tr>
				<tr>
					<th>최대인원</th>
					<td><input type="text" name="roomMax"
						value="${adminRoomList.roomMax}" readonly></td>
				</tr>
				<tr>
					<th>인원추가시발생금액</th>
					<td><input type="text" name="addPrice"
						value="${adminRoomList.addPrice}" readonly></td>
				</tr>
				<tr>
					<th>시설정보</th>
					<td><span class="fa fa-chevron-right mr-2"><input
							type="checkbox">주차장</span> <span
						class="fa fa-chevron-right mr-2"><input type="checkbox">wifi</span>
						<span class="fa fa-chevron-right mr-2"><input
							type="checkbox">애완동물동반가능여부</span> <span
						class="fa fa-chevron-right mr-2"> <input type="checkbox">조식
					</span> <span class="fa fa-chevron-right mr-2"><input
							type="checkbox">수영장</span></td>
				</tr>
			</c:forEach> --%>

</main>