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
								<!-- <h1 class="h4 text-gray-900 mb-4">Traveller가 당신을 초대합니다! | 당신의 Travel을 응원합니다!</h1> -->
								<h1 class="h4 text-gray-900 mb-4">email은 입력안해도됩니다</h1>
							</div>
							
							<form name="userCreate" class="user" action="createUser.do" method="post">
							
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
										id="birthday" placeholder="BrirthDay ex)030809">
									</div>
									<div class="col-sm-6">
										<input type="tel" class="form-control form-control-user"
											id="phone" name="phone" placeholder="Phone '-'없이">
									</div>
								</div>
								<label>성별:</label>
									<input type="radio" id="male" name="gender" value="1" checked>
									<label for="male">남</label>
									<input type="radio" id="female" name="gender" value="2">
									<label for="female">여</label>
								<input type="hidden" id="truebd" name="truebd">
								<button type="button" class="btn btn-primary btn-user btn-block"
									onclick="convert();">회원가입</button>
									
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
		
	 	fetch("createUserReadIdAjax.do")
			.then(resolve => resolve.json())
			.then(result => {
				
				// id중복검사
				let id = document.getElementById("id");
				
				for(let i in result){
					let idC = Object.values(result[i])[0];
					if(id.value == idC) {
						alert(idC + '는 중복된 아이디입니다.');
						id.focus();
						id.value ='';
						return;
					}
				}
				
		 	fetch("createUserReadNicknameAjax.do")
				.then(resolve => resolve.json())
				.then(result2 => {
					
					//유효성 검사
					let pw = document.getElementById("pw");
					let pw2 = document.getElementById("pw2");
					let name = document.getElementById("name");
					let nname = document.getElementById("nname");
					let id = document.getElementById("id");
					let email = document.getElementById("email");
					let birthday = document.getElementById("birthday");
					let phone = document.getElementById("phone");
					
					//정규식
					let reg = /^[0-9]+$/g; //숫자만 입력
					//비밀번호 영문자+숫자+특수조합(8~25자리 입력)
					let pwdCheck = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,25}$/;
					//비밀번호 영문자+숫자+특수조합(8~25자리 입력)
					//var pwdCheck2 = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
					
					//입력 값 저장
					//sessionStorage.setItem("name", name);
					
					
					// nickname 중복검사
					for(let i in result2){
						let nnC = Object.values(result2[i])[0];
						if(nname.value == nnC) {
							alert(nnC + '는 중복된 닉네임입니다.');
							nname.focus();
							nname.value ='';
							return;
						}
					}
					
					
					//입력 확인
					if (name.value == "") {
						alert("이름을 입력하세요.");
						name.focus();
						return false;
					};
					
					if (nname.value == "") {
						alert("닉네임을 입력하세요.");
						nname.focus();
						return false;
					};

					if (id.value == "") { //해당 입력값이 없을 경우 같은말: if(!uid.value)
						alert("아이디를 입력하세요.");
						id.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
						return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
					};
					
					
					if (pw.value == "") {
						alert("비밀번호를 입력하세요.");
						pw.focus();
						return false;
					};

					if (!pwdCheck.test(pw.value)) {
					    alert("비밀번호는 영문자+숫자 조합으로 8~25자리 사용해야 합니다.");
					    pw.focus();
					    return false;
					};

					if (pw2.value !== pw.value) {
						alert("비밀번호가 일치하지 않습니다..");
						pw2.focus();
						return false;
					};

					if (birthday.value == "") {
						alert("생일을 입력하세요.");
						birthday.focus();
						return false;
					};
					
					if (!reg.test(birthday.value)) {
						alert("생일은 숫자만 입력할 수 있습니다.");
						birthday.focus();
						return false;
					};
					
					if (phone.value == "") {
						alert("전화번호를 입력하세요.");
						phone.focus();
						return false;
					};
					
					if (!reg.test(phone.value)) {
						alert("전화번호는 숫자만 입력할 수 있습니다.");
						phone.focus();
						return false;
					};
					
					
					
				    //생년월일 추출
				    birthday = birthday.value;
					let year = parseInt(birthday.substring(0, 2));
					let gender = document.querySelector('input[name="gender"]:checked').value;
					
					let result = '';
					
					//2024년생 까지만 측정가능
					if (year >= 0 && year <= 24) {
					    if (gender == 1) {
					      result = birthday.substring(0, 6) + '-3';
					    } else if (gender == 2) {
					      result = birthday.substring(0, 6) + '-4';
					    }
					  } else {
					    if (gender == 1) {
					      result = birthday.substring(0, 6) + '-1';
					    } else if (gender == 2) {
					      result = birthday.substring(0, 6) + '-2';
					    }
					    
					  }
					
					 // hidden input에 값 저장
					 document.getElementById("truebd").value = result;
				
					//입력 값 전송
					document.userCreate.submit();
					
				})
				//5.10추가했는데 안되면 다시 찾아보자
				.catch(error => console.error(error));
			})
			.catch(error => console.error(error));
		
    	
	}

		
</script>