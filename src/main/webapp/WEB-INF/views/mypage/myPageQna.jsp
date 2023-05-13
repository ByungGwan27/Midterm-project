<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Traveller - QnA</title>
	
<style>
@media (min-width:1200px) {

  .container,
  .container-lg,
  .container-md,
  .container-sm,
  .container-xl {
    max-width: 100%
  }
}

.byunggwan-card {
	margin-left: 200px;
}

/* 아코디언 색 변경 */
.accordion{
  --bs-accordion-btn-bg: #f4feff;
}
</style>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">QnA</h1>
<p class="mb-4">질문 내용들을 확인해주세요</p>

<!-- 본문  -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">어떤것을 도와드릴까요?</h6>
	</div>

	<!-- Page Content-->
	<section class="py-5">
		<div class="container px-5 my-5 ml-1">
			<div class="row gx-5">
				<div class="col-xl-8">

					<!-- 자주묻는 질문-->
					<h2 class="fw-bolder mb-3">자주묻는 질문</h2>
					<div class="accordion mb-5" id="accordionExample">

						<!-- 기본 셋팅 -->
						<c:set var="oneBestQna" value="${bestQna[0]}" />
						<c:set var="twoBestQna" value="${bestQna[1]}" />
						<c:set var="threeBestQna" value="${bestQna[2]}" />

						<c:choose>
							<c:when test="fn:length(bestQna) eq 1">

								<div class="accordion-item">
									<h3 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											(${oneBestQna.qnaType})${oneBestQna.qnaTitle}</button>
									</h3>
									<div class="accordion-collapse collapse show" id="collapseOne"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											질문 : ${oneBestQna.qnaContent}
											<hr>
											답변 : ${oneBestQna.answerContent}
										</div>
									</div>
								</div>

							</c:when>

							<c:when test="fn:length(bestQna) eq 2">

								<div class="accordion-item">
									<h3 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											(${oneBestQna.qnaType})${oneBestQna.qnaTitle}</button>
									</h3>
									<div class="accordion-collapse collapse show" id="collapseOne"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											질문 : ${oneBestQna.qnaContent}
											<hr>
											답변 : ${oneBestQna.answerContent}
										</div>
									</div>
								</div>

								<div class="accordion-item">
									<h3 class="accordion-header" id="headingTwo">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">
											(${twoBestQna.qnaType})${twoBestQna.qnaTitle}</button>
									</h3>
									<div class="accordion-collapse collapse" id="collapseTwo"
										aria-labelledby="headingTwo"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											질문 : ${twoBestQna.qnaContent}
											<hr>
											답변 : ${twoBestQna.answerContent}
										</div>
									</div>
								</div>

							</c:when>

							<c:otherwise>

								<div class="accordion-item">
									<h3 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											(${oneBestQna.qnaType})${oneBestQna.qnaTitle}</button>
									</h3>
									<div class="accordion-collapse collapse show" id="collapseOne"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											질문 : ${oneBestQna.qnaContent}
											<hr>
											답변 : ${oneBestQna.answerContent}
										</div>
									</div>
								</div>

								<div class="accordion-item">
									<h3 class="accordion-header" id="headingTwo">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">
											(${twoBestQna.qnaType})${twoBestQna.qnaTitle}</button>
									</h3>
									<div class="accordion-collapse collapse" id="collapseTwo"
										aria-labelledby="headingTwo"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											질문 : ${twoBestQna.qnaContent}
											<hr>
											답변 : ${twoBestQna.answerContent}
										</div>
									</div>
								</div>

								<div class="accordion-item">
									<h3 class="accordion-header" id="headingThree">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											(${threeBestQna.qnaType})${threeBestQna.qnaTitle}</button>
									</h3>
									<div class="accordion-collapse collapse" id="collapseThree"
										aria-labelledby="headingThree"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											질문 : ${threeBestQna.qnaContent}
											<hr>
											답변 : ${threeBestQna.answerContent}
										</div>
									</div>
								</div>

							</c:otherwise>

						</c:choose>

					</div>

					<!-- 내가한 질문-->
					<h2 class="fw-bolder mb-3">내가한 질문</h2>

					<div class="accordion mb-5 mb-xl-0" id="accordionExample2">

						<c:set var="oneSelfQna" value="${selfQna[0]}" />
						<c:set var="twoSelfQna" value="${selfQna[1]}" />
						<c:set var="threeSelfQna" value="${selfQna[2]}" />

						<c:set var="oneSelfC" value="${oneSelfQna.answerCheck}" />
						<c:set var="twoSelfC" value="${twoSelfQna.answerCheck}" />
						<c:set var="threeSelfC" value="${threeSelfQna.answerCheck}" />

						<c:choose>

							<c:when test="fn:length(selfQna) eq 1">
								<div class="accordion-item">
									<h3 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne2"
											aria-expanded="true" aria-controls="collapseOne2">
											(${oneSelfQna.qnaType})${oneSelfQna.qnaTitle}
											<c:choose>
												<c:when test="${oneSelfC eq '답변완료'}">(답변완료)</c:when>
												<c:otherwise>(답변처리중)</c:otherwise>
											</c:choose>
										</button>
									</h3>
									<div class="accordion-collapse collapse show" id="collapseOne2"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample2">
										<div class="accordion-body">
											질문 : ${oneSelfQna.qnaContent}
											<hr>
											답변 : ${oneSelfQna.answerContent}
										</div>
									</div>
								</div>
							</c:when>

							<c:when test="fn:length(selfQna) eq 2">
								<div class="accordion-item">
									<h3 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne2"
											aria-expanded="true" aria-controls="collapseOne2">
											(${oneSelfQna.qnaType})${oneSelfQna.qnaTitle}
											<c:choose>
												<c:when test="${oneSelfC eq '답변완료'}">(답변완료)</c:when>
												<c:otherwise>(답변처리중)</c:otherwise>
											</c:choose>
										</button>
									</h3>
									<div class="accordion-collapse collapse show" id="collapseOne2"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample2">
										<div class="accordion-body">
											질문 : ${oneSelfQna.qnaContent}
											<hr>
											답변 : ${oneSelfQna.answerContent}
										</div>
									</div>
								</div>

								<div class="accordion-item">
									<h3 class="accordion-header" id="headingTwo">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseTwo2"
											aria-expanded="false" aria-controls="collapseTwo2">
											(${twoSelfQna.qnaType})${twoSelfQna.qnaTitle}
											<c:choose>
												<c:when test="${twoSelfC eq '답변완료'}">(답변완료)</c:when>
												<c:otherwise>(답변처리중)</c:otherwise>
											</c:choose>
										</button>
									</h3>
									<div class="accordion-collapse collapse" id="collapseTwo2"
										aria-labelledby="headingTwo"
										data-bs-parent="#accordionExample2">
										<div class="accordion-body">
											질문 : ${twoSelfQna.qnaContent}
											<hr>
											답변 : ${twoSelfQna.answerContent}
										</div>
									</div>
								</div>
							</c:when>

							<c:otherwise>
								<div class="accordion-item">
									<h3 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne2"
											aria-expanded="true" aria-controls="collapseOne2">
											(${oneSelfQna.qnaType})${oneSelfQna.qnaTitle}
											<c:choose>
												<c:when test="${oneSelfC eq '답변완료'}">(답변완료)</c:when>
												<c:otherwise>(답변처리중)</c:otherwise>
											</c:choose>
										</button>
									</h3>
									<div class="accordion-collapse collapse show" id="collapseOne2"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample2">
										<div class="accordion-body">
											질문 : ${oneSelfQna.qnaContent}
											<hr>
											답변 : ${oneSelfQna.answerContent}
										</div>
									</div>
								</div>

								<div class="accordion-item">
									<h3 class="accordion-header" id="headingTwo">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseTwo2"
											aria-expanded="false" aria-controls="collapseTwo2">
											(${twoSelfQna.qnaType})${twoSelfQna.qnaTitle}
											<c:choose>
												<c:when test="${twoSelfC eq '답변완료'}">(답변완료)</c:when>
												<c:otherwise>(답변처리중)</c:otherwise>
											</c:choose>
										</button>
									</h3>
									<div class="accordion-collapse collapse" id="collapseTwo2"
										aria-labelledby="headingTwo"
										data-bs-parent="#accordionExample2">
										<div class="accordion-body">
											질문 : ${twoSelfQna.qnaContent}
											<hr>
											답변 : ${twoSelfQna.answerContent}
										</div>
									</div>
								</div>

								<div class="accordion-item">
									<h3 class="accordion-header" id="headingThree">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseThree2"
											aria-expanded="false" aria-controls="collapseThree2">
											(${threeSelfQna.qnaType})${threeSelfQna.qnaTitle}
											<c:choose>
												<c:when test="${threeSelfC eq '답변완료'}">(답변완료)</c:when>
												<c:otherwise>(답변처리중)</c:otherwise>
											</c:choose>
										</button>
									</h3>
									<div class="accordion-collapse collapse" id="collapseThree2"
										aria-labelledby="headingThree"
										data-bs-parent="#accordionExample2">
										<div class="accordion-body">
											질문 : ${threeSelfQna.qnaContent}
											<hr>
											답변 : ${threeSelfQna.answerContent}
										</div>
									</div>
								</div>
							</c:otherwise>
						</c:choose>

					</div>
				</div>

				<!-- 질문하러가기 -->
				<div class="col-xl-4">
					<div class="card border-0 mt-xl-5">
						<div class="card-body p-4 py-lg-5 byunggwan-card">
							<div class="d-flex align-items-center justify-content-center">
								<div class="text-center">
									<div class="h6 fw-bolder">Go to ask a question!</div>
									<p class="text-muted mb-4">
										Contact us at <br /> <a href="myPageQnaQ.do">질문하러가기</a>
									</p>
								</div>
							</div>
						</div>
					</div>

					<div class="card border-0 mt-xl-5">
						<div class="card-body p-4 py-lg-5 byunggwan-card">
							<div class="d-flex align-items-center justify-content-center">
								<div class="text-center">
									<div class="h6 fw-bolder">Have more questions?</div>
									<p class="text-muted mb-4">
										More questions <br /> <a href="myPageQnaQ.do">더 많은 질문 보기</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
</div>

<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Core theme JS-->
<script src="cssMypage/avarious/qnajs/js/scripts.js"></script>