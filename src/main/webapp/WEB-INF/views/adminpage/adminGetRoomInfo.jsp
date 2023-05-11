<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<main id="main" class="main">
	<h3>admingetRoomInfo</h3>
	<h5>객실정보확인</h5>
	<table class="table">
		<c:if test="${empty adminRoomList}">
			<tr>
				<td colspan="2">
					<p>객실 정보가 없습니다.</p>
				</td>
			</tr>
		</c:if>
	</table>
	<c:forEach var="adminRoomList" items="${adminRoomList}">
		<form action="adminHotelInfoModifyPage.do" method="GET">
			<table class="table">
				<tr>
					<th>roomId</th>
					<td><input type="text" name="roomId" value="${adminRoomList.roomId}" readonly></td>
				</tr>
				<tr>
					<th>방이름</th>
					<td><input type="text" name="roomName" value="${adminRoomList.roomName}" readonly></td>
				</tr>
				<tr>
					<th>방설명</th>
					<td><input type="text" name="roomExpain" value="${adminRoomList.roomExpain}" readonly></td>
				</tr>
				<tr>
					<th>방등급</th>
					<td><input type="text" name="roomGrade" value="${adminRoomList.roomGrade}" readonly></td>
				</tr>
				<tr>
					<th>객실가격</th>
					<td><input type="text" name="roomPrice" value="${adminRoomList.roomPrice}" readonly></td>
				</tr>
				<tr>
					<th>최소인원</th>
					<td><input type="text" name="roomMin" value="${adminRoomList.roomMin}" readonly></td>
				</tr>
				<tr>
					<th>최대인원</th>
					<td><input type="text" name="roomMax" value="${adminRoomList.roomMax}" readonly></td>
				</tr>
				<tr>
					<th>인원추가시발생금액</th>
					<td><input type="text" name="addPrice" value="${adminRoomList.addPrice}" readonly></td>
				</tr>
				<tr>
					<th>시설정보</th>
					<td><span class="fa fa-chevron-right mr-2"><input type="checkbox">주차장</span> <span
							class="fa fa-chevron-right mr-2"><input type="checkbox">wifi</span> <span
							class="fa fa-chevron-right mr-2"><input type="checkbox">애완동물동반가능여부</span>
						<span class="fa fa-chevron-right mr-2"> <input type="checkbox">조식
						</span> <span class="fa fa-chevron-right mr-2"><input type="checkbox">수영장</span></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit">수정</button>
						<button type="button">취소</button>
					</td>
				</tr>
			</table>
		</form>
	</c:forEach>
</main>