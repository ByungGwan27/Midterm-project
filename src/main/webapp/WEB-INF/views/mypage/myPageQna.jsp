<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Traveller - Q&A</title>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Q&A</h1>
<p class="mb-4">
	질문 내용들을 확인해주세요
</p>

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
				<!-- FAQ Accordion 1-->
				<h2 class="fw-bolder mb-3">자주묻는 질문</h2>
				<div class="accordion mb-5" id="accordionExample">
				
					<div class="accordion-item">
						<h3 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">질문1(DB)</button>
						</h3>
						<div class="accordion-collapse collapse show" id="collapseOne"
							aria-labelledby="headingOne" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<strong>This is the first item's accordion body.</strong> It is
								shown by default, until the collapse plugin adds the appropriate
								classes that we use to style each element. These classes control
								the overall appearance, as well as the showing and hiding via
								CSS transitions. You can modify any of this with custom CSS or
								overriding our default variables. It's also worth noting that
								just about any HTML can go within the
								<code>.accordion-body</code>
								, though the transition does limit overflow.
							</div>
						</div>
					</div>
					
				</div>

				<!-- FAQ Accordion 2-->
				<h2 class="fw-bolder mb-3">내가한 질문</h2>
				<div class="accordion mb-5 mb-xl-0" id="accordionExample2">
					<div class="accordion-item">
						<h3 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne2"
								aria-expanded="true" aria-controls="collapseOne2">내 질문
								1(DB)</button>
						</h3>
						<div class="accordion-collapse collapse show" id="collapseOne2"
							aria-labelledby="headingOne" data-bs-parent="#accordionExample2">
							<div class="accordion-body">
								<strong>This is the first item's accordion body.</strong> It is
								shown by default, until the collapse plugin adds the appropriate
								classes that we use to style each element. These classes control
								the overall appearance, as well as the showing and hiding via
								CSS transitions. You can modify any of this with custom CSS or
								overriding our default variables. It's also worth noting that
								just about any HTML can go within the
								<code>.accordion-body</code>
								, though the transition does limit overflow.
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h3 class="accordion-header" id="headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseTwo2"
								aria-expanded="false" aria-controls="collapseTwo2">Accordion
								Item #2</button>
						</h3>
						<div class="accordion-collapse collapse" id="collapseTwo2"
							aria-labelledby="headingTwo" data-bs-parent="#accordionExample2">
							<div class="accordion-body">
								<strong>This is the second item's accordion body.</strong> It is
								hidden by default, until the collapse plugin adds the
								appropriate classes that we use to style each element. These
								classes control the overall appearance, as well as the showing
								and hiding via CSS transitions. You can modify any of this with
								custom CSS or overriding our default variables. It's also worth
								noting that just about any HTML can go within the
								<code>.accordion-body</code>
								, though the transition does limit overflow.
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h3 class="accordion-header" id="headingThree">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseThree2"
								aria-expanded="false" aria-controls="collapseThree2">Accordion
								Item #3</button>
						</h3>
						<div class="accordion-collapse collapse" id="collapseThree2"
							aria-labelledby="headingThree"
							data-bs-parent="#accordionExample2">
							<div class="accordion-body">
								<strong>This is the third item's accordion body.</strong> It is
								hidden by default, until the collapse plugin adds the
								appropriate classes that we use to style each element. These
								classes control the overall appearance, as well as the showing
								and hiding via CSS transitions. You can modify any of this with
								custom CSS or overriding our default variables. It's also worth
								noting that just about any HTML can go within the
								<code>.accordion-body</code>
								, though the transition does limit overflow.
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-4">
				<div class="card border-0 bg-light mt-xl-5">
					<div class="card-body p-4 py-lg-5 byunggwan-card">
						<div class="d-flex align-items-center justify-content-center">
							<div class="text-center">
								<div class="h6 fw-bolder">Have more questions?</div>
								<p class="text-muted mb-4">
									Contact us at <br /> <a href="myPageQnaQ.do">질문하러가기</a>
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
