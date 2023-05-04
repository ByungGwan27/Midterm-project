<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<main id="main" class="main">

	<div class="pagetitle">
		<h1>회원관리</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="adminPage.do">관리자 페이지</a></li>
				<li class="breadcrumb-item active">회원관리</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->

	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">회원목록</h5>

						<!-- Table with stripped rows -->
						<table class="table datatable">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">회원아이디</th>
									<th scope="col">회원이름</th>
									<th scope="col">회원닉네임</th>
									<th scope="col">회원등급</th>
									<th scope="col">활동상태</th>

								</tr>
							</thead>
							<tbody>

								<tr class='member'>
									<th scope="row">1</th>
									<td>Brandon Jacob</td>
									<td>Designer</td>
									<td>28</td>
									<td>2016-05-25</td>
									<td>활동중</td>
								</tr>

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
	let member = document.querySelectorAll(".member");
	console.log(member);
	console.log('aa');
	member.forEach(function(ele) {
		console.log(ele);
		ele.addEventListener("dblclick", function() {
			console.log('클릭성공')
			location.href = 'adminMemberInfo.do'
		})

	})
</script>

