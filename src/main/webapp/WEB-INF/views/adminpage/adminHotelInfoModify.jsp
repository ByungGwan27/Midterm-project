<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<main id="main" class="main">
	<h3>hotelinfomodify</h3>
	<h5>숙소정보수정</h5>
	<form action="adminHotelInfoModifyPage.do" method="POST" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>메인이미지</th>
				<td><img width="200px"
					src="images/${adminHotelInfo.hotelImage}"></td>
					<td><input type="file" name="attach"></td>
			</tr>
			<tr>
				<th>hotelId</th>
				<td><input type="text" name="hotelId"
					value="${adminHotelInfo.hotelId}" readonly></td>
			</tr>
			<tr>
				<th>상호명</th>
				<td><input type="text" name="hotelName"
					value="${adminHotelInfo.hotelName}"></td>
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
					value="${adminHotelInfo.hotelLocation1}"></td>
			</tr>
			<tr>
				<th>위치2(시군구)</th>
				<td><input type="text" name="hotelLocation2"
					value="${adminHotelInfo.hotelLocation2}"></td>
			</tr>
				<tr>
				<th>locationDetail</th>
				<td><input type="text" name="locationDetail"
					value="${adminHotelInfo.locationDetail}"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">저장</button> 
					<button type="button">취소</button>
				</td>
			</tr>
		</table>
	</form>
</main>