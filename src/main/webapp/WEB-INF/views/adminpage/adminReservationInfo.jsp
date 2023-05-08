<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<main id="main" class="main">
	<form class="row g-3">
		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 번호</label> <input
				type="text" class="form-control" id="inputZip" value="${resInfo.reservationId}" readonly>
		</div>
			<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 회원</label> <input
				type="text" class="form-control" id="inputZip" value="${resInfo.memberId}" readonly>
		</div>
		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 숙소</label> <input
				type="text" class="form-control" id="inputZip" value="${resInfo.hotelName}" readonly>
		</div>
		<hr>
		
		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약자명</label> <input
				type="text" class="form-control" id="inputZip" value="${resInfo.checkinName}" readonly>
		</div>
			<div class="col-md-6">
			<label for="inputCity" class="form-label">예약자 연락처</label> <input
				type="text" class="form-control" id="inputCity" value="${resInfo.checkinPhone}" readonly>
		</div>
	<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 인원</label> <input
				type="text" class="form-control" id="inputZip" value="${resInfo.resPeople}" readonly>
		</div>
		<div class="col-md-6">
			<label for="inputCity" class="form-label">체크인 날짜</label> <input
				type="text" class="form-control" id="inputCity" value="${resInfo.checkinDate}" readonly>
		</div>
		<div class="col-md-6">
			<label for="inputCity" class="form-label">결제 금액</label> <input
				type="text" class="form-control" id="inputCity" value="${resInfo.finalPrice}" readonly>
		</div>
	<!-- 	<div class="col-12">
			<label for="inputAddress5" class="form-label">결제 금액</label> <input
				type="text" class="form-control" id="inputAddres5s"
				placeholder="1234 Main St" readonly>
		</div> -->
		<!-- <div class="col-12">
			<label for="inputAddress2" class="form-label">예약 인원</label> <input
				type="text" class="form-control" id="inputAddress2"
				placeholder="Apartment, studio, or floor" readonly>
		</div> -->
		
	
		<!-- <div class="col-md-4">
			<label for="inputState" class="form-label">체크인 날짜</label> <select
				id="inputState" class="form-select" readonly>
				<option selected>Choose...</option>
				<option>...</option>
			</select>
		</div> -->
		<hr>
		<div class="col-md-6">
			<label for="inputCity" class="form-label">주문 날짜</label> <input
				type="text" class="form-control" id="inputCity" value="${resInfo.completeDate}" readonly>
		</div>
		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 상태</label> <input
				type="text" class="form-control" id="inputZip" value="${resInfo.resStatus}" readonly>
		</div>
		<!-- <div class="col-12">
			<div class="form-check">
				<input class="form-check-input" type="checkbox" id="gridCheck">
				<label class="form-check-label" for="gridCheck"> Check me
					out </label>
			</div>
		</div> -->
		<div class="text-center">
			<button type="button" class="btn btn-primary" onclick="location.href
			='adminResAccept.do?id=${resInfo.reservationId}'">수락</button>
			<button type="button" class="btn btn-secondary" onclick="location.href
			='adminResCancle.do?id=${resInfo.reservationId}'">거절</button>
		</div>
	</form>
</main>

<script>

</script>