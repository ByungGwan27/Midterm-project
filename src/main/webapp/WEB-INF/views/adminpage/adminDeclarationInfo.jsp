<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card">
	<main id="main" class="main">
		<div class="card-body">
			<h5 class="card-title">신고 내용</h5>

			<!-- Vertical Form -->
			<!--  <form class="row g-3"> -->
			<div style="text-align: center;">
				<div class="col-12">
					<label for="inputNanme4" class="form-label">신고 번호 : </label> <label
						for="inputNanme4" class="form-label">${decInfo.decId}</label>
					<%-- <input type="text" class="form-control" id="inputNanme4" value="${decInfo.decId}" readonly> --%>
				</div>
				<hr>
				<div class="col-12">
					<label for="inputEmail4" class="form-label">신고자 : </label> <label
						for="inputNanme4" class="form-label">${decInfo.memberId}</label>
				</div>
				<hr>
				<div class="col-12">
					<label for="inputPassword4" class="form-label">신고 숙소 : </label> <label
						for="inputNanme4" class="form-label">아이디 : ${decInfo.hotelId} | 이름 : ${decInfo.hotelName}</label>
				</div>
				<hr>
				<div class="col-12">
					<label for="inputAddress" class="form-label">신고 유형 : </label> <label
						for="inputNanme4" class="form-label">${decInfo.decCategory}</label>
				</div>
				<hr>
				<div class="col-12">
					<label for="inputAddress" class="form-label">신고 내용 : </label> <label
						for="inputNanme4" class="form-label">${decInfo.decContent}</label>
				</div>
				<hr>
				<div class="col-12">
					<label for="inputAddress" class="form-label">신고 날짜 : </label> <label
						for="inputNanme4" class="form-label">${decInfo.decDate}</label>
				</div>
				<hr>
				<div class="col-12">
					<label for="inputAddress" class="form-label">신고 상태 : </label> <label
						for="inputNanme4" class="form-label">${decInfo.decStatus}</label>
				</div>
				<hr>
				<div class="col-12">
					<label for="inputAddress" class="form-label">해당숙소(${decInfo.hotelName}) 의 신고 횟수 : ${decInfo.decCount}</label> <label
						for="inputNanme4" class="form-label">${decInfo.decStatus}</label>
				</div>
				<hr>

				<c:if test="${decInfo.decStatus == '신고접수'}">
					<div class="text-center">
						<button type="button" class="btn btn-primary"
							onclick="location.href='adminDecAccept.do?id=${decInfo.decId}'">신고처리</button>
						<button type="button" class="btn btn-secondary"
							onclick="location.href='adminDecCancle.do?id=${decInfo.decId}'">신고반려</button>
					</div>
				</c:if>
				<c:if test="${decInfo.decStatus != '신고접수'}">
					<div class="text-center">
						<button type="button" class="btn btn-primary dis"
							>신고처리</button>
						<button type="button" class="btn btn-secondary dis"
							v>신고반려</button>
					</div>
				</c:if>
				<!-- </form> -->
				<!-- Vertical Form -->
			</div>
		</div>
</div>
</main>

<script>
	let dis = document.querySelectorAll('.dis');
	console.log(dis)
	for(let d of dis){
		d.addEventListener('click', function(){
			alert('이미 처리된 신고입니다')
		})
	}
</script>
