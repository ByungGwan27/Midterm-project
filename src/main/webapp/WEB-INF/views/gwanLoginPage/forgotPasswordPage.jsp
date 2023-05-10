<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">Forgot Your Password?</h1>
                                        <p class="mb-4">We get it, stuff happens. Just enter your email address below
                                            and we'll send you a link to reset your password!</p>
                                    </div>
                                    
                                    <form class="user">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Enter Email Address..." name="email">
                                        </div>
                                        <a href="#" onclick="sendMail()" class="btn btn-primary btn-user btn-block">
                                            Reset Password
                                        </a>
                                    </form>
                                    
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="createUserPage.do">Create an Account!</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="loginPage.do">Already have an account? Login!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

</body>

<script>
	function sendMail() {

		let btnL = document.getElementById('exampleInputEmail').value;
			if (confirm("해당 이메일이 맞으십니까?\nEmail: " + btnL)) {
				
				//이메일 검사
				fetch("passwordReset.do?btnL=" + encodeURIComponent(btnL))
					.then(resolve => resolve.json())
					.then(result => {
						
						if (result.retCode == noChange) {
							alert('잠시후 다시 시도해 주세요!')
						} else {
							alert(result.retCode + "라는 메일이 존재하지 않습니다!")
						}
						
					})
					.catch(error => console.error(error));
					
			}
	}
</script>