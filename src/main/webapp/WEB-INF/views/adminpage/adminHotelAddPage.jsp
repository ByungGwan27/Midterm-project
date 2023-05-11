<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main id="main" class="main">
	<h3>addroomformpage</h3>
	<h5>숙소추가</h5>
	<form action="adminAddHotelPage.do" method="POST" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>메인이미지</th>
				<td><input type="file" name="hotelImage"></td>
			</tr>
					<tr>
				<th>hotelId</th>
				<td><input type="text" name="hotelId"></td>
			</tr>
				<tr>
				<th>상호명</th>
				<td><input type="text" name="hotelName"></td>
			</tr>
			<tr>
				<th>위치1(시도)</th>
				<td><input type="text" name="hotelLocation1"></td>
			</tr>
			<tr>
				<th>위치2(시군구)</th>
				<td><input type="text" name="hotelLocation2"></td>
			</tr>
				<tr>
				<th>locationDetail</th>
				<td><input type="text" name="locationDetail"></td>
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