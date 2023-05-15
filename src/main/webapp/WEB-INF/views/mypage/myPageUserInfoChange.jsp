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



	<form name="userInfoChange" action="myPageUserInfoChangeInput.do" method="post" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>프로필사진</th>
				<td><input type="file" name="attach"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" name="email" placeholder='${email }'></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="tel" name="phone" placeholder='${phone }'></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><input type="text" name="nickname" placeholder='${nickname }'></input>
			</tr>
			<tr>
				<th>관심테마</th>
				<!-- <td><textarea rows="3" cols="20" name="nickname"></textarea></td> -->
				<td>
					<select name="thema" class="form-control custom-select" style="width: 200px;">
					<option value="호텔">호텔</option>
					<option value="모텔">모텔</option>
					<option value="펜션">펜션</option>
					<option value="게스트하우스">게스트하우스</option>
					<option value="기타">기타</option>
					</select>
				</td>
				<td><p>현재 테마 :</p><input type="text" placeholder='${thema }' readonly></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pw" id="pw"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="pwcheck" id="pwc"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="button" onclick="joinform_check();" class="btn btn-primary">수정</button>
					<button type="button" class="btn btn-primary">돌아가기</button>
				</td>
			</tr>
		</table>
	</form>
</div>

<script>
	function joinform_check() {
	  //변수에 담아주기
	  let pwd = document.getElementById("pw");
	  let repwd = document.getElementById("pwc");
	  
	  if (repwd.value !== pwd.value) {
		    alert("비밀번호가 일치하지 않습니다..");
		    repwd.focus();
		    return false;
		  };
		  
	  //입력 값 전송
	  document.userInfoChange.submit(); //유효성 검사의 포인트 
	}
</script>