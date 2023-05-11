<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
										data-bs-toggle="collapse">
										<div></div>
									</button>
								</h2>
								<div id="faqsOne-1" class="accordion-collapse collapse" data-bs-parent="#faq-group-1">
									<div class="accordion-body">
										<div id="content"> </div><div></div>
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
						<div id="all">
						</div>
						<!--  -->
					</div>
				</div>
				<!-- End F.A.Q Group 1 -->
				<!-- 페이지 1 -->
				<div style="text-align: center;">
					<nav aria-label="Page navigation example" style="display: inline-block;">
						<ul class="pagination">
							<li class="page-item" id="myPagePrev1"><a class="page-link" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
							<div id="pageNumberSection1">
								<li class="page-item pages" id="pageNumber1"><a class="page-link mypage">$</a></li>
							</div>
							<li class="page-item" id="myPageNext1"><a class="page-link" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
						</ul>
					</nav>
				</div>
				<!-- 페이지 1 끝-->
			</div>

			<div class="col-lg-6">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">답변 완료</h5>


						<!-- F.A.Q Group 2 -->
						<div class="accordion accordion-flush" id="faq-group-2">
							<div class="accordion-item">
								<h2 class="accordion-header">
									<button class="accordion-button collapsed" data-bs-target="#faqsTwo-1" type="button"
										data-bs-toggle="collapse">
										<div>제목</div>
									</button>
								</h2>
								<div id="faqsTwo-1" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
									<div class="accordion-body">
										<div>내용</div>
										<hr>
										<p style="font-size: small;">작성자 | 작성일 </p>
										<hr>
										<form action="adminQnaAnswer.do">
											<div class="row mb-3">
												<p style="font-size: small;">답변작성일 </p>
												<textarea class="form-control" style="height: 100px" name="content">답변내용</textarea>
												<hr>
												<div class="row mb-3" style="display: none;">
													<div class="col-sm-10">
														<input type="text" class="form-control" value="4" readonly name="id">
													</div>
												</div>
												<div class="col-sm-10">
													<button type="submit" class="btn btn-primary">답변수정</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div id="all1">
						</div>
					</div>
					<!-- End F.A.Q Group 2 -->
					<!-- 페이지 2 -->
					<!-- 페이지 2 끝-->
					
					
				</div>
				<div style="text-align: center;">
					<nav aria-label="Page navigation example" style="display: inline-block;">
						<ul class="pagination">
							<li class="page-item" id="myPagePrev2"><a class="page-link" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
							<div id="pageNumberSection2">
								<li class="page-item pages" id="pageNumber2"><a class="page-link mypage">$</a></li>
							</div>
							<li class="page-item" id="myPageNext2"><a class="page-link" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
						</ul>
					</nav>
				</div>

			</div>
	</section>

</main>


<!-- End #main -->

<script>
	document.addEventListener('DOMContentLoaded', function () {
		getPage1(1);
		qnaData1(1);
		getPage2(1);
		qnaData2(1);
	})

	function qnaData1(page) {
		fetch('adminQnaPage1.do?page1=' + page)
			.then(resolve => resolve.json())
			.then(result => {
				let NAQ = result.NAQ;
				console.log('naq=' + NAQ)

				console.log('fetch!');

				//데이터 넣기
				let all = document.getElementById('all')
				let i = 1;
				for (let data of NAQ) {
					let group = document.getElementById('faq-group-1').cloneNode(true);
					group.childNodes[1].childNodes[1].childNodes[1].setAttribute('data-bs-target', '#faqsOne-' + i);
					group.childNodes[1].childNodes[3].setAttribute('id', 'faqsOne-' + i)
					group.childNodes[1].childNodes[1].childNodes[1].childNodes[1].innerText = data.qnaTitle
					group.childNodes[1].childNodes[3].childNodes[1].childNodes[1].innerText = data.qnaContent
					group.childNodes[1].childNodes[3].childNodes[1].childNodes[6].innerText = '작성자 : ' + data.memberId +
						' | 작성날짜 : ' + data.qnaDate
					group.childNodes[1].childNodes[3].childNodes[1].childNodes[10].childNodes[1].childNodes[5].childNodes[1].childNodes[1].setAttribute('value',data.qnaId)
					

					all.append(group)

					i++;
				}
				document.getElementById('faq-group-1').style.display = 'none';

			})
	}

	function qnaData2(page) {
		fetch('adminQnaPage2.do?page2=' + page)
			.then(resolve => resolve.json())
			.then(result => {
				let CAQ = result.CAQ;
				// console.log('caq='+CAQ)

				// console.log('fetch!');

				//데이터 넣기
				let all1 = document.getElementById('all1')
				let j = 1;
				for (let data of CAQ) {
					let group = document.getElementById('faq-group-2').cloneNode(true);
					
					group.childNodes[1].childNodes[1].childNodes[1].setAttribute('data-bs-target', '#faqsTwo-' + j);
					group.childNodes[1].childNodes[3].setAttribute('id', 'faqsTwo-' + j)
					
					group.childNodes[1].childNodes[1].childNodes[1].childNodes[1].innerText = data.qnaTitle
					group.childNodes[1].childNodes[3].childNodes[1].childNodes[1].innerText = data.qnaContent
					group.childNodes[1].childNodes[3].childNodes[1].childNodes[5].innerText = '작성자 : ' + data.memberId +
					' | 작성날짜 : ' + data.qnaDate
					group.childNodes[1].childNodes[3].childNodes[1].childNodes[9].childNodes[1].childNodes[1].innerText = "답변작성일 : "+ data.answerDate;
					group.childNodes[1].childNodes[3].childNodes[1].childNodes[9].childNodes[1].childNodes[3].innerText = data.answerContent;
					group.childNodes[1].childNodes[3].childNodes[1].childNodes[9].childNodes[1].childNodes[7].childNodes[1].childNodes[1].setAttribute('value',data.qnaId);
					
					
					all1.append(group)

					j++;
				}
				document.getElementById('faq-group-2').style.display = 'none';

			})
	}

	function getPage1(page) {
		fetch('adminQnaPage1.do?page1=' + page)
			.then(resolve => resolve.json())
			.then(result => {
				let pageInfo1 = result.page1;

				let pageNumberSection = document.getElementById('pageNumberSection1')
				for (let i = pageInfo1.startPage; i <= pageInfo1.endPage; i++) {
					let pageing = document.getElementById('pageNumber1').cloneNode(true);

					pageing.addEventListener('click', function () {
						document.getElementById('faq-group-1').style.display = 'block';
						document.getElementById('all').replaceChildren();
						console.log('click');
						qnaData1(i)
					})
					pageing.childNodes[0].innerText = i;
					pageing.style.display = 'inline-block';
					pageNumberSection.append(pageing);

				}
				document.getElementById('pageNumber1').style.display = 'none';

				if (pageInfo1.prev == false) {
					document.getElementById('myPagePrev1').style.display = 'none';
				}
				if (pageInfo1.next == false) {
					document.getElementById('myPageNext1').style.display = 'none';
				}

			})
	}

	function getPage2(page) {
		fetch('adminQnaPage2.do?page2=' + page)
			.then(resolve => resolve.json())
			.then(result => {
				let pageInfo2 = result.page2;

				let pageNumberSection = document.getElementById('pageNumberSection2')
				for (let j = pageInfo2.startPage; j <= pageInfo2.endPage; j++) {
					let pageing = document.getElementById('pageNumber2').cloneNode(true);

					pageing.addEventListener('click', function () {
						document.getElementById('faq-group-2').style.display = 'block';
						document.getElementById('all1').replaceChildren();
						console.log('click');
						qnaData2(j)
					})
					pageing.childNodes[0].innerText = j;
					pageing.style.display = 'inline-block';
					pageNumberSection.append(pageing);

				}
				document.getElementById('pageNumber2').style.display = 'none';

				if (pageInfo2.prev == false) {
					document.getElementById('myPagePrev2').style.display = 'none';
				}
				if (pageInfo2.next == false) {
					document.getElementById('myPageNext2').style.display = 'none';
				}


			})
	}
</script>