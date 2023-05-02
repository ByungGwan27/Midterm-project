<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<title>Traveller - 보유쿠폰</title>
	
	<!-- Custom styles for this page -->
	<link href="cssMypage/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">보유쿠폰함</h1>
	<p class="mb-4">
		쿠폰 유의사항 설명</a>.
	</p>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">~~님의 보유 쿠폰입니다.</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>쿠폰 이름</th>
							<th>쿠폰 기간(시작일)</th>
							<th>쿠폰 기간(종료일)</th>
							<th>적용 범위(금액)</th>
							<th>할인률</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>회원 가입 축하</td>
							<td>2023-05-02</td>
							<td>2023-06-02</td>
							<td>3만원 이상</td>
							<td>10%</td>
						</tr>
						<tr>
							<td>등급 업</td>
							<td>2023-05-03</td>
							<td>2023-06-03</td>
							<td>5만원 이상</td>
							<td>3%</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->


<!-- Bootstrap core JavaScript-->
    <script src="cssMypage/vendor/jquery/jquery.min.js"></script>
    <script src="cssMypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="cssMypage/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="cssMypage/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="cssMypage/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="cssMypage/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="cssMypage/js/demo/datatables-demo.js"></script>
    
</div>