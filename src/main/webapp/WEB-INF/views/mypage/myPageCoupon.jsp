<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<title>Traveller - 보유쿠폰</title>
	
	<!-- Custom styles for this page -->
	<link href="cssMypage/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">보유쿠폰함</h1>
	<p class="mb-4">
		쿠폰 유의사항 설명
	</p>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">${nickname }님의 보유 쿠폰입니다.</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>쿠폰 이름</th>
							<th>사용가능 숙소</th>
							<th>쿠폰 기간(시작일)</th>
							<th>쿠폰 기간(종료일)</th>
							<th>적용 범위(금액)</th>
							<th>할인률</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="cL" items="${couponList }">
						<tr>
							<td>${cL.couponName }</td>
							<td>${cL.couponRange }</td>
							<td>${cL.couponStart }</td>
							<td>${cL.couponEnd }</td>
							<td>${cL.salePer }%</td>
							<td>${cL.salePri }원 이상</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->

    <!-- Page level plugins -->
    <script src="cssMypage/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="cssMypage/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="cssMypage/js/demo/datatables-demo.js"></script>
    
</div>