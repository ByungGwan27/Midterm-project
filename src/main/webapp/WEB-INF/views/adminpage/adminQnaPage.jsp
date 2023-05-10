<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
int i = 1;
int j = 1;
int pageOne;
int pageTwo;
%>
<main id="main" class="main">

	<div class="pagetitle">
		<h1>QnA</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="adminPage.do">관리자 페이지</a></li>
				<li class="breadcrumb-item active">QnA</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->

	<section class="section faq">
		<div class="row">
			<div class="col-lg-6">

				<!-- F.A.Q Group 1 -->
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">미답변</h5>

						
							<div class="accordion accordion-flush" id="faq-group-1">

								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button collapsed" data-bs-target="#faqsOne-1" type="button"
											data-bs-toggle="collapse"><div>1</div></button>
									</h2>
									<div id="faqsOne-1" class="accordion-collapse collapse" data-bs-parent="#faq-group-1">
										<div class="accordion-body">
											<div id="content">2 </div><br>
											<hr>
											<p style="font-size: small;">3</p>
											<hr>
											<form action="adminQnaAnswer.do">

												<div class="row mb-3">
													<label for="inputPassword" class="col-sm-2 col-form-label">답변</label>
													<div class="col-sm-10">
														<textarea class="form-control" style="height: 100px" name="content"></textarea>
													</div>
													<div class="row mb-3" style="display: none;">
														<label for="inputText" class="col-sm-2 col-form-label">작성자</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" value="4" readonly name="id">
														</div>
													</div>
													<div class="row mb-3">

														<div class="col-sm-10">
															<button type="submit" class="btn btn-primary">입력</button>
														</div>
													</div>
												</div>

											</form>
											<!-- End General Form Elements -->
										</div>
									</div>

								</div>



							</div>
							
						
						<!--  -->

					</div>
				</div>
				<!-- End F.A.Q Group 1 -->
				<!-- 페이지 1 -->
				<div style="text-align: center;">
					<nav aria-label="Page navigation example" style="display: inline-block;">
						<ul class="pagination">
							<c:if test="${pageInfo1.prev}">
								<li class="page-item"><a class="page-link" href="adminQna.do?page1=${pageInfo1.startPage-1}"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
							</c:if>
							<c:forEach var="i" begin="${pageInfo1.startPage }" end="${pageInfo1.endPage }">
								<li class="page-item"><a class="page-link mypage" href="adminQna.do?page1=${i }">${i}</a></li>
							</c:forEach>
							<c:if test="${pageInfo1.next}">
								<li class="page-item"><a class="page-link" href="adminQna.do?page1=${pageInfo1.endPage+1}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
				<!-- 페이지 1 끝-->
			</div>

			<div class="col-lg-6">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">답변 완료</h5>


						<c:forEach var="CAQ" items="${CAQ}">
							<div class="accordion accordion-flush" id="faq-group-2">

								<!-- F.A.Q Group 2 -->
								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button collapsed" data-bs-target="#faqsTwo-<%=i%>" type="button"
											data-bs-toggle="collapse">${CAQ.qnaTitle}</button>
									</h2>
									<div id="faqsTwo-<%=i%>" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
										<div class="accordion-body">${CAQ.qnaContent}
											<hr>
											<p style="font-size: small;">작성자 : ${CAQ.memberId} | 작성일 : ${CAQ.qnaDate}</p>
											<hr>
											<form action="adminQnaAnswer.do">
												<p style="font-size: small;">답변작성일 : ${CAQ.answerDate}</p>
												<textarea class="form-control" style="height: 100px"
													name="content">${CAQ.answerContent}</textarea>

												<hr>
												<div class="col-sm-10">
													<button type="submit" class="btn btn-primary">답변수정</button>
												</div>
												<div class="row mb-3" style="display: none;">
													<label for="inputText" class="col-sm-2 col-form-label">작성자</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" value="${CAQ.qnaId}" readonly name="id">
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>


							</div>
							<%
							i++;
							%>
						</c:forEach>
					</div>
				</div>	
				<!-- End F.A.Q Group 2 -->
				<!-- 페이지 2 -->
				<div style="text-align: center;">
					<nav aria-label="Page navigation example" style="display: inline-block;">
						<ul class="pagination">
							<c:if test="${pageInfo2.prev}">
								<li class="page-item"><a class="page-link" href="adminQna.do?page2=${pageInfo2.startPage-1}"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
							</c:if>
							<c:forEach var="i" begin="${pageInfo2.startPage }" end="${pageInfo2.endPage }">
								<li class="page-item"><a class="page-link mypage" href="adminQna.do?page2=${i }">${i}</a></li>
							</c:forEach>
							<c:if test="${pageInfo2.next}">
								<li class="page-item"><a class="page-link" href="adminQna.do?page2=${pageInfo2.endPage+1}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
				<!-- 페이지 2 끝-->
			

			</div>

		</div>
	</section>

</main>


<!-- End #main -->

<script>
	document.addEventListener('DOMContentLoaded', function(){
		qnaData(1);
	})

	function qnaData(page){
		fetch('adminQnaPage1.do?page1='+page)
		.then(resolve => resolve.json())
		.then(result => {
			let NAQ = result.NAQ;
			console.log(NAQ)

			let group = document.getElementById('faq-group-1').cloneNode(true);
			console.log(group)
			console.log(group.childNodes[1].childNodes[3].childNodes[1].childNodes[1]);
			for(let data of NAQ){
				// console.log(group.childNodes[1].childNodes[1]);
				// console.log(group.childNodes[1].childNodes[1].childNodes[1]);
				// console.log(group.childNodes[1].childNodes[1].childNodes[1].childNodes[0]);
				group.childNodes[1].childNodes[1].childNodes[1].childNodes[0].innerText= data.qnaTitle
				group.childNodes[1].childNodes[3].childNodes[1].childNodes[1].innerText= '작성자 : '+data.memberId+' | 작성날짜 : '+ data.qnaDate
			
				}


		})
	}
</script>