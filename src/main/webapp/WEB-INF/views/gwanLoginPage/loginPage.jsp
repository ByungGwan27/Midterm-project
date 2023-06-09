<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	//id 쿠키 사용
	String cookie = "";
	String checked = "";
	Cookie[] cookies = request.getCookies(); //쿠키생성
	if(cookies != null && cookies.length > 0)
	for (int i = 0; i < cookies.length; i++){
		if (cookies[i].getName().equals("userId")) { // 내가 원하는 쿠키명 찾아서 값 저장
				cookie = cookies[i].getValue();
				checked = "checked";
		}
	}
%>


<body class="bg-gradient-primary">

	<div class="container" style="margin-top: 100px;">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block bg-login-image"><!-- <image src="images/krabi-tailandia.jpg"> --></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
									</div>
									
									<!-- 폼 양식 -->
									<form action="login.do" class="user" method="post">
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												id="exampleInputEmail" aria-describedby="emailHelp"
												placeholder="Enter Email Address..." name="loginId" value="<%=cookie%>" required>
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												id="exampleInputPassword" placeholder="Password" name="loginPw" required>
										</div>
										<!-- id 기억하기 체크박스 -->
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck" name="checkbox" <%=checked %>> <label
													class="custom-control-label" for="customCheck">Remember
													Me</label>
											</div>
										</div>
<!-- 										<a href="index.html" -->
										<button type="submit"
											class="btn btn-primary btn-user btn-block"> Login </button>
										<hr>
										<a href="index.html" class="btn btn-google btn-user btn-block">
											<i class="fab fa-google fa-fw"></i> Login with Google
										</a> <a href="index.html"
											class="btn btn-facebook btn-user btn-block"> <i
											class="fab fa-facebook-f fa-fw"></i> Login with Facebook
										</a>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="forgotPasswordPage.do">Forgot
											Password?</a>
									</div>
									<div class="text-center">
										<a class="small" href="createUserPage.do">Create an
											Account!</a>
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
