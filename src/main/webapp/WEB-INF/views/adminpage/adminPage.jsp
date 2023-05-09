<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%
 int memCount = (int) request.getAttribute("memberCount");
 int payCount = (int) request.getAttribute("payCount");
 int totalPay = (int) request.getAttribute("totalPay");
 int MonthPayCount = (int) request.getAttribute("MonthPayCount");
 int MonthTotalPay = (int) request.getAttribute("monthTotalPay");
 %>
<main id="main" class="main">

	<div class="pagetitle">
		<h1>대시보드</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="adminPage.do">관리자 페이지</a></li>
				<li class="breadcrumb-item active">대시보드</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->

	<section class="section dashboard">
		<div class="row">

			<!-- Left side columns -->
			<div class="col-lg-8">
				<div class="row">

					<!-- Sales Card -->
					<div class="col-xxl-4 col-md-6">
						<div class="card info-card sales-card">

							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown"><i
									class="bi bi-three-dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">


									<li><a class="dropdown-item" id="allPay" >전체</a></li>
									<li><a class="dropdown-item" id="monthPay">오늘</a></li>
								</ul>
							</div>

							<div class="card-body">
								<h5 class="card-title">결제건수</h5>
								<!-- <p style="font-size: xx-small; color: grey;">전체</p> -->

								<div class="d-flex align-items-center">
									<div
										class="card-icon rounded-circle d-flex align-items-center justify-content-center">
										<i class="bi bi-cart"></i>
									</div>
									<div class="ps-3">
										<span class="text-success small pt-1 fw-bold" id="range" style="color: #8D99F3;">전체</span>
										<!-- <span class="text-muted small pt-2 ps-1">전체</span> -->
										<h6 id="payCountValue"><%=payCount%></h6>

									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- End Sales Card -->

					<!-- Revenue Card -->
					<div class="col-xxl-4 col-md-6">
						<div class="card info-card revenue-card">

							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown"><i
									class="bi bi-three-dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<li><a class="dropdown-item" id="allTotalPay">전체</a></li>
									<li><a class="dropdown-item" id="monthTotalPay">이번달</a></li>
								</ul>
							</div>

							<div class="card-body" id="pay">
								<h5 class="card-title">매출</h5>

								<div class="d-flex align-items-center">
									<div
										class="card-icon rounded-circle d-flex align-items-center justify-content-center">
										<i class="bi bi-currency-dollar"></i>
									</div>
									<div class="ps-3">
										<span class="text-success small pt-1 fw-bold" id="range1">전체</span>
										<!--  <span class="text-muted small pt-2 ps-1">increase</span> -->
										<h6 id="totalValue"><%=totalPay%></h6>

									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- End Revenue Card -->



					<!-- Customers Card -->
					<div class="col-xxl-4 col-xl-12">

						<div class="card info-card customers-card">

							<!--  <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  
                </div> -->

							<div class="card-body">
								<h5 class="card-title">회원수</h5>

								<div class="d-flex align-items-center">
									<div
										class="card-icon rounded-circle d-flex align-items-center justify-content-center">
										<i class="bi bi-people"></i>
									</div>
									<div class="ps-3">
										<span class="text-success small pt-1 fw-bold" id="range1">전체</span>
										<!-- <span class="text-muted small pt-2 ps-1">decrease</span> -->
										<h6><%=memCount%></h6>

									</div>
								</div>

							</div>
						</div>

					</div>
					<!-- End Customers Card -->

					<!-- Reports -->
					<div class="col-12">
						<div class="card">

							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown"><i
									class="bi bi-three-dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<li class="dropdown-header text-start"></li>

									<li><a class="dropdown-item" id="countChartSelect">결제건수</a></li>
									<li><a class="dropdown-item" id="payChartSelect">매출</a></li>
									<li><a class="dropdown-item" id="memberChartSelect">회원수</a></li>
								</ul>
							</div>

							<div class="card-body">
								<h5 class="card-title" id="coment">월별추이(결제건수)</h5>

								<!-- Line Chart -->
									
								<div  id="chart">
									<div id="lineChart"></div>
								
								</div>
								<script>
									//돔 불러올 때
									
									
										
									document.addEventListener("DOMContentLoaded", () => {

										fetch('payCountChartData.do')
											.then(resolve => resolve.json())
											.then(result => {
												
												let data = result;
												let name = '결제건수';
												let color = '#8D99F3';
												chartCall(data,name,color);
											});

									})
									
									//결제건수 클릭 시
									document.getElementById('countChartSelect').addEventListener('click', () => {
										
										fetch('payCountChartData.do')
											.then(resolve => resolve.json())
											.then(result => {
												document.querySelector('#coment').innerText='월별추이(결제건수) '
												lineChart.innerText = "";
												let data = result;
												let color = '#8D99F3';
												chartCall(data,name,color)
											});

									})
										
									//매출 클릭 시
									document.getElementById('payChartSelect').addEventListener('click', () => {									
										
										fetch('payChartData.do')
										.then(resolve => resolve.json())
										.then(result => {
											document.querySelector('#coment').innerText='월별추이(매출) '
											lineChart.innerText = "";
											let data = result;
											let name = '매출';
											let color ='#2ECA6A';
											chartCall(data,name,color)
										});
										
										
									});
									
									//회원수 클릭 시
									document.getElementById('memberChartSelect').addEventListener('click', () => {
										
										fetch('memberChartData.do')
										.then(resolve => resolve.json())
										.then(result => {
											document.querySelector('#coment').innerText='월별추이(회원수) '
											lineChart.innerText = "";
											let data = result;
											let color = '#FF771D';
											let name = '회원수';
											chartCall(data,name,color)
										});

									});
									
									
									//차트 뿌려주는 메소드 
									function chartCall(data,name,color) {
										new ApexCharts(document.querySelector("#lineChart"), {
											series: [{
												name: name,
												data: [data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7], data[8], data[9],
													data[10], data[11]
												]
											}],
											chart: {
												height: 350,
												type: 'line',
												zoom: {
													enabled: false
												}
											},
											dataLabels: {
												enabled: false
											},
											stroke: {
												curve: 'straight',
												colors: [color]
											},
											grid: {
												row: {
													colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
													opacity: 0.5
												},
											},
											xaxis: {
												categories: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
											}
										}).render();

									
									};
									

								</script>
								<!-- End Line Chart -->

							</div>

						</div>
					</div>
					<!-- End Reports -->



					<!-- End Right side columns -->

				</div>
	</section>

</main>

<script>
		document.getElementById('monthPay').addEventListener('click', function () {
			document.getElementById('payCountValue').innerText = <%=MonthPayCount%>
				document.getElementById('range').innerText = "오늘"
		})
		document.getElementById('allPay').addEventListener('click', function () {
			document.getElementById('payCountValue').innerText = <%=payCount%>
				document.getElementById('range').innerText = "전체"
		})
		document.getElementById('allTotalPay').addEventListener('click', function () {
			document.getElementById('totalValue').innerText = <%=totalPay%>
				document.getElementById('range1').innerText = "전체"
		})
		document.getElementById('monthTotalPay').addEventListener('click', function () {
			document.getElementById('totalValue').innerText = <%=MonthTotalPay%>
				document.getElementById('range1').innerText = "이번달"
		})
	</script>