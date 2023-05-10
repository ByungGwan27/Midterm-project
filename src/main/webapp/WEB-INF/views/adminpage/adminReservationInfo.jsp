<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main id="main" class="main">
	<form class="row g-3">
		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 번호</label> <input
				type="text" class="form-control" id="inputZip"
				value="${resInfo.reservationId}" readonly>
		</div>
		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 회원</label> <input
				type="text" class="form-control" id="inputZip"
				value="${resInfo.memberId}" readonly>
		</div>
		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 숙소</label> <input
				type="text" class="form-control" id="inputZip"
				value="${resInfo.hotelName}" readonly>
		</div>
		<hr>

		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약자명</label> <input
				type="text" class="form-control" id="inputZip"
				value="${resInfo.checkinName}" readonly>
		</div>
		<div class="col-md-6">
			<label for="inputCity" class="form-label">예약자 연락처</label> <input
				type="text" class="form-control" id="inputCity"
				value="${resInfo.checkinPhone}" readonly>
		</div>
		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 인원</label> <input
				type="text" class="form-control" id="inputZip"
				value="${resInfo.resPeople}" readonly>
		</div>
		<div class="col-md-6">
			<label for="inputCity" class="form-label">체크인 날짜</label> <input
				type="text" class="form-control" id="inputCity"
				value="${resInfo.checkinDate}" readonly>
		</div>
		<div class="col-md-6">
			<label for="inputCity" class="form-label">결제 금액</label> <input
				type="text" class="form-control" id="inputCity"
				value="${resInfo.finalPrice}" readonly>
		</div>
		
		<hr>
		<div class="col-md-6">
			<label for="inputCity" class="form-label">주문 날짜</label> <input
				type="text" class="form-control" id="inputCity"
				value="${resInfo.completeDate}" readonly>
		</div>
		<div class="col-md-2">
			<label for="inputZip" class="form-label">예약 상태</label> <input
				type="text" class="form-control" id="inputZip"
				value="${resInfo.resStatus}" readonly>
		</div>
		
		<c:if test="${resInfo.resStatus != '예약수락' && resInfo.resStatus !='예약거절'}">
		<div class="text-center">
			<button type="button" class="btn btn-primary"
				onclick="location.href
			='adminResAccept.do?id=${resInfo.reservationId}'">수락</button>
			<button type="button" class="btn btn-secondary"
				onclick="location.href
			='adminResCancle.do?id=${resInfo.reservationId}'">거절</button>
		</div>
		</c:if>
		<c:if test="${resInfo.resStatus == '예약수락' || resInfo.resStatus =='예약거절'}">
		<div class="text-center">
			<button type="button" class="btn btn-primary dis"
				>수락</button>
			<button type="button" class="btn btn-secondary dis"
				>거절</button>
		</div>
		</c:if>
	</form>
</main>

<script>
	let dis = document.querySelectorAll('.dis');
	console.log(dis)
	for(let d of dis){
		d.addEventListener('click', function(){
			alert('이미 처리된 예약입니다')
		})
	}
</script>