<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Traveller - 회원정보수정</title>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">회원정보수정</h1>
<p class="mb-4">
	회원정보 수정창입니다.
</p>

<!-- 본문  -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">변경하실 정보를 입력해주세요.</h6>
	</div>



	<form action="myPageUserInfoChangeInput.do" method="post" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>프로필사진</th>
				<td><input type="file" name="attach"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><input type="text" name="nickname"></input></td>
			</tr>
			<tr>
				<th>관심테마</th>
				<!-- <td><textarea rows="3" cols="20" name="nickname"></textarea></td> -->
				<td><input type="text" name="thema"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="pwcheck"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">수정</button>
					<button type="button">돌아가기</button>
				</td>
			</tr>
		</table>
	</form>
</div>