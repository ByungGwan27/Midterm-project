<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="bg-gradient-primary">

	<div class="container">
		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<!-- <h1 class="h4 text-gray-900 mb-4">Traveller가 당신을 초대합니다!</h1> -->
								<h1 class="h4 text-gray-900 mb-4">email은 입력안해도됩니다</h1>
							</div>
							
							<form class="user" action="createUser.do" method="post" id="plussubmit">
							
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											id="name" name="name" placeholder="Name">
									</div>
									<div class="col-sm-6">
										<input type="text" class="form-control form-control-user"
											id="nname" name="nname" placeholder="NickName">
									</div>
								</div>
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										id="id" name="id" placeholder="ID">
								</div>
								<div class="form-group">
                                    <input type="email" class="form-control form-control-user"class="form-control form-control-user" id="email" name="email"
                                        placeholder="Email">
                                </div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password" class="form-control form-control-user"
											id="pw" name="pw" placeholder="Password">
									</div>
									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user"
											id="pw2" placeholder="Repeat Password">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
										id="birthday" placeholder="BrirthDay    ex)2003-08-09 -> 030809">
									</div>
									<div class="col-sm-6">
										<input type="text" class="form-control form-control-user"
											id="phone" name="phone" placeholder="Phone '-'없이">
									</div>
								</div>
								<label>성별:</label>
									<input type="radio" id="male" name="gender" value="1" checked>
									<label for="male">남</label>
									<input type="radio" id="female" name="gender" value="2">
									<label for="female">여</label>
								<input type="hidden" id="truebd" name="truebd">
								<button type="submit" class="btn btn-primary btn-user btn-block"
									onclick="convert()">회원가입</button>
									
									<!-- js에서 jsp로 값을 보내는방법(다른건 ajax) -->
								<!-- <hr>
								<a href="index.html" class="btn btn-google btn-user btn-block">
									<i class="fab fa-google fa-fw"></i> Register with Google
								</a> <a href="index.html"
									class="btn btn-facebook btn-user btn-block"> <i
									class="fab fa-facebook-f fa-fw"></i> Register with Facebook
								</a> -->
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="forgotPasswordPage.do">Forgot
									Password?</a>
							</div>
							<div class="text-center">
								<a class="small" href="loginPage.do">Already have an account?
									Login!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>


</body>

<script>
	
	//제출시 조건 확인
	function convert() {
		//비밀번호 확인
		let pw = document.getElementById("pw").value;
	    let pw2 = document.getElementById("pw2").value;
	    let name = document.getElementById("name").value;
	    let nname = document.getElementById("nname").value;
	    let id = document.getElementById("id").value;
	    let birthday = document.getElementById("birthday").value;
	    let email = document.getElementById("email").value;
	    
	    if (pw !== pw2) {
	      alert("비밀번호가 일치하지 않습니다.");
	   	// 입력한 데이터 저장
	      sessionStorage.setItem("name", name);
	      sessionStorage.setItem("nname", nname);
	      sessionStorage.setItem("id", id);
	      sessionStorage.setItem("birthday", birthday);
	      sessionStorage.setItem("email", email);
	      
	      // 이전 페이지로 이동
	      window.history.back();
	      
	      return false;
	    }
	    	
	    //생년월일 추출
		let gender = document.querySelector('input[name="gender"]:checked').value;
		let year = parseInt(birthday.substring(0, 2));
		
		let result = '';
		
		//2024년생 까지만 측정가능
		if (year > 25) {
		    if (gender == 1) {
		      result = birthday.substring(0, 6) + '-1';
		    } else if (gender == 2) {
		      result = birthday.substring(0, 6) + '-2';
		    }
		  } else {
		    if (gender == 1) {
		      result = birthday.substring(0, 6) + '-3';
		    } else if (gender == 2) {
		      result = birthday.substring(0, 6) + '-4';
		    }
		  }
		 // hidden input에 값 저장
		  document.getElementById("truebd").value = result;

		  // form 전송
		  document.getElementById("plussubmit").submit();
	    
	    
    	
	}
</script>