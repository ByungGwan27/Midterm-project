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

	<form action="myPageUserInfoPwInput.do" method="post" onsubmit="return validateForm()">
		<table class="table">
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="pw" id = "pwcc" required></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-primary">확인</button>
					<!--  onclick="javascript:btn() -->
				</td>
			</tr>
		</table>
	</form>
	
</div>

<script>
	function validateForm() {
	  let inputPw = document.getElementById("password").value;
	  let pw = ${pw };

	  if (inputPw !== pw) {
	    alert("비밀번호를 확인해주세요.");
	    return false; // form 전송을 막습니다.
	  }
	}

</script>
