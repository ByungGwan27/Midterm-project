<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						for="inputNanme4" class="form-label">${decInfo.hotelId}</label>
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

			<%-- 	<c:if test="${decInfo.decStatus == '신고접수'}">
					<c:choose>
						<c:when test="${decInfo.decStatus == '신고접수'}"> --%>
							<div class="text-center">
								<button type="button" class="btn btn-primary"
									onclick="location.href='adminDecAccept.do?id=${decInfo.decId}'">신고처리</button>
								<button type="button" class="btn btn-secondary"
									onclick="location.href='adminDecCancle.do?id=${decInfo.decId}'">신고반려</button>
							</div>
					<!-- 	</c:when>
					</c:choose>

				</c:if> -->
				<!-- </form> -->
				<!-- Vertical Form -->
			</div>
		</div>
</div>
</main>