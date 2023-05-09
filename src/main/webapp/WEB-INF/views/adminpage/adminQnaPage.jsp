<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
int i = 1;
int j = 1;
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

				<!-- <div class="card basic">
            <div class="card-body">
              <h5 class="card-title">답변 미완료</h5>

              <div>
                <h6>환불이 가능한가요?</h6>
                <p>예약 후 취소를 하려는데 환불이 가능한가요?</p>
              </div>

              <div class="pt-2">
                <h6>2. Reiciendis dolores repudiandae?</h6>
                <p>Id ipsam non ut. Placeat doloremque deserunt quia tenetur inventore laboriosam dolores totam odio. Aperiam incidunt et. Totam ut quos sunt atque modi molestiae dolorem.</p>
              </div>

              <div class="pt-2">
                <h6>3. Qui qui reprehenderit ut est illo numquam voluptatem?</h6>
                <p>Enim inventore in consequuntur ipsam voluptatem consequatur beatae. Nostrum consequuntur voluptates et blanditiis.</p>
              </div>

            </div>
          </div> -->

				<!-- F.A.Q Group 1 -->
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">미답변</h5>

						<c:forEach var="NAQ" items="${NAQ}">
							<div class="accordion accordion-flush" id="faq-group-1">

								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button collapsed"
											data-bs-target="#faqsOne-<%=j%>" type="button"
											data-bs-toggle="collapse">${NAQ.qnaTitle}</button>
									</h2>
									<div id="faqsOne-<%=j%>" class="accordion-collapse collapse"
										data-bs-parent="#faq-group-1">
										<div class="accordion-body">
											${NAQ.qnaContent} <br>
											<p style="font-size: small;">작성자 : ${NAQ.memberId} | 작성일
												: ${NAQ.qnaDate}</p>
											<hr>
											<form action="adminQnaAnswer.do">

												<div class="row mb-3">
													<label for="inputPassword" class="col-sm-2 col-form-label">답변</label>
													<div class="col-sm-10">
														<textarea class="form-control" style="height: 100px"
															name="content"></textarea>
													</div>
													<div class="row mb-3" style="display: none;">
														<label for="inputText" class="col-sm-2 col-form-label">작성자</label>
														<div class="col-sm-10">
															<input type="text" class="form-control"
																value="${NAQ.qnaId}" readonly name="id">
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
							<%
							j++;
							%>
						</c:forEach>
						<!--  -->

					</div>
				</div>
				<!-- End F.A.Q Group 1 -->
				<div>
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<c:if test="${pageInfo1.prev}">
								<li class="page-item"><a class="page-link"
									href="adminQna.do?page1=${pageInfo1.startPage-1}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
							</c:if>
							<c:forEach var="i" begin="${pageInfo1.startPage }"
								end="${pageInfo1.endPage }">
								<li class="page-item"><a class="page-link"
									href="adminQna.do?page1=${i }">${i}</a></li>
							</c:forEach>
							<c:if test="${pageInfo1.next}">
								<li class="page-item"><a class="page-link"
									href="adminQna.do?page1=${pageInfo1.endPage+1}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</c:if>
							</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>

			<div class="col-lg-6">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">답변 완료</h5>


						<div class="accordion accordion-flush" id="faq-group-2">

							<!-- F.A.Q Group 2 -->
							<div class="accordion-item">
								<c:forEach var="CAQ" items="${CAQ}">
									<h2 class="accordion-header">
										<button class="accordion-button collapsed"
											data-bs-target="#faqsTwo-<%=i%>" type="button"
											data-bs-toggle="collapse">${CAQ.qnaTitle}</button>
									</h2>
									<div id="faqsTwo-<%=i%>" class="accordion-collapse collapse"
										data-bs-parent="#faq-group-2">
										<div class="accordion-body">${CAQ.qnaContent}</div>
										<p style="font-size: small;">작성자 : ${CAQ.memberId} | 작성일 :
											${CAQ.qnaDate}</p>
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
													<input type="text" class="form-control"
														value="${CAQ.qnaId}" readonly name="id">
												</div>
											</div>
										</form>
									</div>
									<%
									i++;
									%>
								</c:forEach>
							</div>


						</div>
						<!--  -->

					</div>
				</div>
				<div>
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<c:if test="${pageInfo2.prev}">
								<li class="page-item"><a class="page-link"
									href="adminQna.do?page2=${pageInfo2.startPage-1}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
							</c:if>
							<c:forEach var="i" begin="${pageInfo2.startPage }"
								end="${pageInfo2.endPage }">
								<li class="page-item"><a class="page-link"
									href="adminQna.do?page2=${i }">${i}</a></li>
							</c:forEach>
							<c:if test="${pageInfo2.next}">
								<li class="page-item"><a class="page-link"
									href="adminQna.do?page2=${pageInfo2.endPage+1}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
				<!-- End F.A.Q Group 2 -->

				<!-- F.A.Q Group 3 -->
				<!-- <div class="card">
            <div class="card-body">
              <h5 class="card-title">Dolore occaecati ducimus quam</h5>

              <div class="accordion accordion-flush" id="faq-group-3">

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-1" type="button" data-bs-toggle="collapse">
                      Assumenda doloribus est fugiat sint incidunt animi totam nisi?
                    </button>
                  </h2>
                  <div id="faqsThree-1" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      Ut quasi odit odio totam accusamus vero eius. Nostrum asperiores voluptatem eos nulla ab dolores est asperiores iure. Quo est quis praesentium aut maiores. Corrupti sed aut expedita fugit vero dolorem. Nemo rerum sapiente. A quaerat dignissimos.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-2" type="button" data-bs-toggle="collapse">
                      Consequatur saepe explicabo odio atque nisi?
                    </button>
                  </h2>
                  <div id="faqsThree-2" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      In minus quia impedit est quas deserunt deserunt et. Nulla non quo dolores minima fugiat aut saepe aut inventore. Qui nesciunt odio officia beatae iusto sed voluptatem possimus quas. Officia vitae sit voluptatem nostrum a.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-3" type="button" data-bs-toggle="collapse">
                      Voluptates vel est fugiat molestiae rem sit eos sint?
                    </button>
                  </h2>
                  <div id="faqsThree-3" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      Voluptates magni amet enim perspiciatis atque excepturi itaque est. Sit beatae animi incidunt eum repellat sequi ea saepe inventore. Id et vel et et. Nesciunt itaque corrupti quia ducimus. Consequatur maiores voluptatum fuga quod ut non fuga.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-4" type="button" data-bs-toggle="collapse">
                      Ab ipsa cum autem voluptas doloremque velit?
                    </button>
                  </h2>
                  <div id="faqsThree-4" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      Numquam ut reiciendis aliquid. Quia veritatis quasi ipsam sed quo ut eligendi et non. Doloremque sed voluptatem at in voluptas aliquid dolorum.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-5" type="button" data-bs-toggle="collapse">
                      Aliquam magni ducimus facilis numquam dolorum harum eveniet iusto?
                    </button>
                  </h2>
                  <div id="faqsThree-5" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      Aut necessitatibus maxime quis dolor et. Nihil laboriosam molestiae qui molestias placeat corrupti non quo accusamus. Nemo qui quis harum enim sed. Aliquam molestias pariatur delectus voluptas quidem qui rerum id quisquam. Perspiciatis voluptatem voluptatem eos. Vel aut minus labore at rerum eos.
                    </div>
                  </div>
                </div>

              </div>

            </div>
          </div> -->
				<!-- End F.A.Q Group 3 -->

			</div>

		</div>
	</section>

</main>
<!-- End #main -->

<script>

</script>

