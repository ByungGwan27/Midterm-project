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
				<td><img width="200px"
					src="cssMainpage/images/${adminHotelInfo.hotelImage}"></td>
			</tr>
			<tr>
				<th>hotelId</th>
				<td><input type="text" name="hotelId"
					value="${adminHotelInfo.hotelId}" readonly></td>
			</tr>
			<tr>
				<th>상호명</th>
				<td><input type="text" name="hotelName"
					value="${adminHotelInfo.hotelName}" readonly></td>
			</tr>
				<tr>
				<th>숙소테마</th>
				<td><select name="hotelThema">
						<option value="">선택</option>
						<option value="호텔">호텔</option>
						<option value="모텔">모텔</option>
						<option value="펜션">펜션</option>
						<option value="게스트하우스">게스트하우스</option>
						<option value="기타">기타</option>
				</select></td>
			</tr>
			<tr>
				<th>위치1(시도)</th>
				<td><input type="text" name="hotelLocation1"
					value="${adminHotelInfo.hotelLocation1}" readonly></td>
			</tr>
			<tr>
				<th>위치2(시군구)</th>
				<td><input type="text" name="hotelLocation2"
					value="${adminHotelInfo.hotelLocation2}" readonly></td>
			</tr>
				<tr>
				<th>locationDetail</th>
				<td><input type="text" name="locationDetail"
					value="${adminHotelInfo.locationDetail}" readonly></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">수정</button>
					<button type="button">취소</button>
				</td>
			</tr>
		</table>
		<hr>
		<h5>객실정보확인</h5>
		<table class="table">
			<c:choose>
				<c:when test="${empty adminRoomList}">
					<tr>
						<td>객실정보없음</td>
					</tr>
					<tr>
						<td><a
							href="admimAddExtraRoomForm.do?hotelId=${adminHotelInfo.hotelId}">
								<button type="button">객실추가</button>
						</a></td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr>
						<th>객실</th>
						<td><select id="adminRoomList">
								<option value="">선택</option>
								<c:forEach var="adminRoomList" items="${adminRoomList}">
									<option value="${adminRoomList.roomId}">${adminRoomList.roomName}</option>
								</c:forEach>
						</select></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<button type="button" onclick="getRoomInfo()">객실정보확인</button> <a
							href="admimAddExtraRoomForm.do?hotelId=${adminHotelInfo.hotelId}">
								<button type="button">객실추가</button>
						</a>
						</td>
					</tr>
					<script>
						var getRoomInfo = function() {
							var selectElement = document
									.getElementById("adminRoomList");
							var selectedValue = selectElement.value;
							var hotelId = "${adminHotelInfo.hotelId}";
							var url = "adminRoomInfoPage.do?hotelId=" + hotelId
									+ "&roomId=" + selectedValue;
							window.location.href = url;
						}
					</script>
				</c:otherwise>
			</c:choose>
		</table>
	</form>
</main>