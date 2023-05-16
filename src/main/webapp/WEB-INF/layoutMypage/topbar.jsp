<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
   String sessionId = (String) session.getAttribute("id"); // 세션에서 id 값을 가져옴
   out.println("<script>var id = '" + sessionId + "';</script>"); // JavaScript 변수에 할당
%>
<nav
	class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

	<!-- Sidebar Toggle (Topbar) -->
	<button id="sidebarToggleTop"
		class="btn btn-link d-md-none rounded-circle mr-3">
		<i class="fa fa-bars"></i>
	</button>

	<!-- Topbar Navbar -->
	<ul class="navbar-nav ml-auto">

		<!-- Nav Item - Search Dropdown (Visible Only XS) -->
		<li class="nav-item dropdown no-arrow d-sm-none"><a
			class="nav-link dropdown-toggle" href="#" id="searchDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
		</a> <!-- Dropdown - Messages -->
			<div
				class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
				aria-labelledby="searchDropdown">
				<form class="form-inline mr-auto w-100 navbar-search">
					<div class="input-group">
						<input type="text" class="form-control bg-light border-0 small"
							placeholder="Search for..." aria-label="Search"
							aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">
								<i class="fas fa-search fa-sm"></i>
							</button>
						</div>
					</div>
				</form>
			</div></li>

		<!-- Nav Item - 알림 -->
		<!-- <li class="nav-item dropdown no-arrow mx-1"><a
			class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> Counter - Alerts
				<span class="badge badge-danger badge-counter">알림갯수+</span>
		</a> Dropdown - Alerts
			<div
				class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="alertsDropdown">
				<h6 class="dropdown-header">Alerts Center</h6>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-primary">
							<i class="fas fa-file-alt text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">December 12, 2019</div>
						<span class="font-weight-bold">A new monthly report is
							ready to download!</span>
					</div>
				</a> <a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-success">
							<i class="fas fa-donate text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">December 7, 2019</div>
						$290.29 has been deposited into your account!
					</div>
				</a> <a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-warning">
							<i class="fas fa-exclamation-triangle text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">December 2, 2019</div>
						Spending Alert: We've noticed unusually high spending for your
						account.
					</div>
				</a> <a class="dropdown-item text-center small text-gray-500" href="#">Show
					All Alerts</a>
			</div></li> -->

		<!-- Nav Item - Messages -->
		<li class="nav-item dropdown no-arrow mx-1" id="messagecount"><!-- <a
			class="nav-link dropdown-toggle" href="myPageMessage.do?memberId={id }" id="messagesDropdown"
			role="button"> <i class="fas fa-envelope fa-fw"></i>
				<span class="badge badge-danger badge-counter">메세지 갯수</span>
				
		</a> --></li>

		<div class="topbar-divider d-none d-sm-block"></div>

		<!-- Nav Item - User Information -->
		<li class="nav-item dropdown no-arrow"><a
			class="nav-link dropdown-toggle" href="#" id="userDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <span
				class="mr-2 d-none d-lg-inline text-gray-600 small">${name }
				</span> <img class="img-profile rounded-circle"
				src="images/${profile }">
<!-- 				src="cssMypage/img/undraw_profile.svg"> -->
		</a> <!-- Dropdown - User Information -->
			<div
				class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="userDropdown">
				<!-- <a class="dropdown-item" href="#"> <i
					class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
				</a> <a class="dropdown-item" href="#"> <i
					class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
				</a> <a class="dropdown-item" href="#"> <i
					class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity
					Log
				</a> -->
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#" data-toggle="modal"
					data-target="#logoutModal" onclick='logOut()' id='gwanLogout'> <i
					class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
					Logout
				</a>
			</div></li>

	</ul>

</nav>

<script>
document.addEventListener('DOMContentLoaded', function () {
	console.log(1);
	messageLoad();

})	
function logOut() {
		let btnL = document.getElementById('gwanLogout');
			if (confirm("정말 로그아웃 하시겠습니까?")) {
				alert("로그아웃되었습니다");
				location.href = 'logout.do';
			}
	}
	

function messageLoad() {
	fetch('myPageMessageCount.do')
		.then(resolve => resolve.json())
		.then(result => {
			let mc = result.mc;
			//console.log('mc'+mc);

			const messageCountElement = document.getElementById("messagecount");

			// 새로운 요소를 생성합니다.
			const linkElement = document.createElement("a");
			linkElement.classList.add("nav-link", "dropdown-toggle");
			linkElement.href = `myPageMessage.do?memberId=${id}`;
			linkElement.id = "messagesDropdown";
			linkElement.role = "button";

			const iconElement = document.createElement("i");
			iconElement.classList.add("fas", "fa-envelope", "fa-fw");

			const badgeElement = document.createElement("span");
			badgeElement.classList.add("badge", "badge-danger", "badge-counter");
			badgeElement.textContent = mc;

			// 요소들을 조합하여 추가합니다.
			linkElement.appendChild(iconElement);
			linkElement.appendChild(badgeElement);
			messageCountElement.appendChild(linkElement);
			
		})
}
</script>