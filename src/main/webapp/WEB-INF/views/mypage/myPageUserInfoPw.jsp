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
		<h6 class="m-0 font-weight-bold text-primary">PW를 확인해주세요</h6>
	</div>

	<form action="myPageUserInfoPwInput.do" method="post">
		<table class="table">
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="pw" id = "pwcc" required></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" onclick="javascript:btn()">확인</button>
				</td>
			</tr>
		</table>
	</form>
	
</div>

<script>

</script>
