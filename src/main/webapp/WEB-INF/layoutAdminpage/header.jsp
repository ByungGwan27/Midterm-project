<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header id="header" class="header fixed-top d-flex align-items-center">

	<div class="d-flex align-items-center justify-content-between">
		<a href="mainPage.do" class="logo d-flex align-items-center"> <img src="assets/img/logo.png" alt=""> <span
				class="d-none d-lg-block">Traveller</span>
		</a> <i class="bi bi-list toggle-sidebar-btn"></i>
	</div>
	<!-- End Logo -->

	<!-- <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="검색" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div>End Search Bar -->

	<nav class="header-nav ms-auto">
		<ul class="d-flex align-items-center">

			<li class="nav-item d-block d-lg-none"><a class="nav-link nav-icon search-bar-toggle " href="#"> <i
						class="bi bi-search"></i>
				</a></li>
			<!-- End Search Icon-->


			<!--  알림부분 -->
			<li class="nav-item dropdown" id="alarm"><a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown"> <i
						class="bi bi-bell"></i> <span class="badge bg-primary badge-number" id="count"></span>
				</a> <!-- End Notification Icon -->

				<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
					<li class="dropdown-header" id="mytext">1</li>

					<div id="innerAlarm">
						<div id="copy">
							<!-- 개별 -->
							<li class="notification-item" id="none"><i class="bi bi-info-circle text-primary"></i>
								<div>
									<h4>1</h4>
									<p>1</p>
								</div>
							</li>
							<li>
								<hr class="dropdown-divider">
							</li>
						</div>
					</div>
					<!-- 개별 끝-->
					<li class="dropdown-footer">
						<div style="text-align: center;">
							<nav aria-label="Page navigation example" style="display: inline-block;">
								<ul class="pagination">
									<li class="page-item" id="myPagePrev"><a class="page-link" aria-label="Previous"> <span
												aria-hidden="true">&laquo;</span>
										</a></li>
									<div id="pageNumberSection">
										<li class="page-item pages" id="pageNumber"><a class="page-link mypage">$</a></li>
									</div>
									<li class="page-item" id="myPageNext"><a class="page-link" aria-label="Next"> <span
												aria-hidden="true">&raquo;</span>
										</a></li>
								</ul>
							</nav>
						</div>
					</li>


				</ul> <!-- End Notification Dropdown Items -->
			</li>
			<!-- End Notification Nav -->

			<!-- 알림부분 끝 -->

			<!-- 메세지란 -->
			<li class="nav-item dropdown"><a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown"> <i
						class="bi bi-chat-left-text"></i> <span class="badge bg-success badge-number">3</span>
				</a> <!-- End Messages Icon -->

				<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
					<li class="dropdown-header">You have 3 new messages <a href="#"><span
								class="badge rounded-pill bg-primary p-2 ms-2">View
								all</span></a>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="message-item"><a href="#"> <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
							<div>
								<h4>Maria Hudson</h4>
								<p>Velit asperiores et ducimus soluta repudiandae labore
									officia est ut...</p>
								<p>4 hrs. ago</p>
							</div>
						</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="message-item"><a href="#"> <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
							<div>
								<h4>Anna Nelson</h4>
								<p>Velit asperiores et ducimus soluta repudiandae labore
									officia est ut...</p>
								<p>6 hrs. ago</p>
							</div>
						</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="message-item"><a href="#"> <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
							<div>
								<h4>David Muldon</h4>
								<p>Velit asperiores et ducimus soluta repudiandae labore
									officia est ut...</p>
								<p>8 hrs. ago</p>
							</div>
						</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="dropdown-footer"><a href="#">Show all messages</a>
					</li>

				</ul> <!-- End Messages Dropdown Items -->
			</li>
			<!-- 메세지란 끝 -->


			<li class="nav-item dropdown pe-3"><a class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
					data-bs-toggle="dropdown"> <img src="assets/img/관리자.png" alt="Profile" class="rounded-circle">
					<h6>&nbsp&nbsp&nbspadmin</h6>
				</a> <!-- End Profile Iamge Icon -->
				<!-- <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span> -->

				<!-- <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul>End Profile Dropdown Items -->
			</li>
			<!-- End Profile Nav -->

		</ul>
	</nav>
	<!-- End Icons Navigation -->

</header>

<script>
	document.addEventListener('DOMContentLoaded', function () {
		dataLoad();

		//console.log(document.getElementsByClassName('pages'));
	})

	function dataLoad() {
		fetch('adminImminentRes.do')
			.then(resolve => resolve.json())
			.then(result => {
				let list = result.data;
				let pageInfo = result.page;

				let clone;

				//데이터 생성
				for (let res of list) {
					clone = document.getElementById('copy').cloneNode(true);
					clone.childNodes[3].childNodes[2].childNodes[1].innerText = 'D-' + res.dday;
					clone.childNodes[3].childNodes[2].childNodes[3].innerText = '예약아이디 : ' + res.reservationId;

					clone.addEventListener('click', function () {
						location.href = 'adminReservationInfo.do?id=' + res.reservationId;
					})

					document.getElementById('innerAlarm').append(clone);

				}

				//페이징 생성
				let pageNumberSection = document.getElementById('pageNumberSection')
				console.log(pageInfo)
				console.log(pageInfo.startPage)
				for (let i = pageInfo.startPage; i <= pageInfo.endPage; i++) {
					let pageing = document.getElementById('pageNumber').cloneNode(true);

					pageing.childNodes[0].innerText = i;
					pageing.style.display='inline-block';
					pageNumberSection.append(pageing);

				}
				document.getElementById('pageNumber').style.display = 'none';

				if (pageInfo.prev == false) {
					document.getElementById('myPagePrev').style.display = 'none';
				}
				if (pageInfo.next == false) {
					document.getElementById('myPageNext').style.display = 'none';
				}
				document.getElementById('count').innerText = pageInfo.total;
				document.getElementById('none').style.display = 'none';
				document.getElementById('mytext').innerText = '처리대기중인 체크인날짜 임박 숙소가 ' + pageInfo.total + '개 입니다';

			})
	}
</script>