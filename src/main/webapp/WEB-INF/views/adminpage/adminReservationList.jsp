<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main id="main" class="main">

	<div class="pagetitle">
		<h1>예약 관리</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="adminPage.do">관리자 페이지</a></li>
				<li class="breadcrumb-item active">예약관리</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->

	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">예약 관리</h5>

						<!-- Table with stripped rows -->
						<table class="table datatable" id="testTable">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">예약번호</th>
									<th scope="col">숙소명</th>
									<th scope="col">숙소세부명</th>
									<th scope="col">예약날짜</th>
									<th scope="col">인원수</th>
									<th scope="col">예약자이름</th>
									<th scope="col">연락처</th>
									<th scope="col">예약상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="res" items="${resList}">
									<tr class="res12">
										<th scope="row"></th>
										<td>${res.reservationId }</td>
										<td>${res.hotelName }</td>
										<td>${res.roomName }</td>
										<td>${res.completeDate }</td>
										<td>${res.resPeople }</td>
										<td>${res.checkinName }</td>
										<td>${res.checkinPhone }</td>
										<td>${res.resStatus }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- End Table with stripped rows -->

					</div>
				</div>

			</div>
		</div>
	</section>

</main>
<script>
document.addEventListener('DOMContentLoaded', function(){
	
	let res1 = document.querySelectorAll("table tbody tr");
	console.log(res1)
	res1.forEach(function(res1) {
		res1.addEventListener("dblclick", function() {
			location.href = 'adminReservationInfo.do?id='
					+ this.children[1].innerText;
		})

	})
})
</script>