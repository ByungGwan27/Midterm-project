<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
* {
	box-sizing: border-box
}

/* Slideshow container */
.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
}

/* video container */
.call-to-action .container {
	border-radius: 20px;
	overflow: hidden;
}

/* Hide the images by default */
.mySlides {
	display: none;
}

/* Next & previous buttons */
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	margin-top: -22px;
	padding: 16px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	user-select: none;
}

/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active, .dot:hover {
	background-color: #717171;
}

/* Fading animation */
.fade {
	animation-name: fade;
	animation-duration: 1.5s;
}

@keyframes
fade {from { opacity:.4
	
}

to {
	opacity: 1
}

}
.outer {
	text-align: center;
}

.inner {
	display: inline-block;
}
</style>

<!DOCTYPE html>

<header class="py-5">
	<div class="container px-5">
		<div class="row justify-content-center">
			<div class="col-lg-8 col-xxl-6">
				<div class="text-center my-5">
					<h1 class="fw-bolder mb-3">여행 포스트 페이지입니다.</h1>
					<p class="lead fw-normal text-muted mb-4">놀러가고 싶죠? 저두요</p>
					<a class="btn btn-primary btn-lg" href="#scroll-target">Read
						our story</a>
				</div>
			</div>
		</div>
	</div>
</header>

<!--여행 포스터 영상-->

<!-- ======= Call To Action Section ======= -->
<section id="call-to-action" class="call-to-action">
	<div class="container text-center" data-aos="zoom-out">
		<video id="vid" width="1258" height="900" autoplay="autoplay"
			loop="loop" muted="muted" controls>
			<source src="cssPostList/video/-70796 (1).mp4" type="video/mp4">
		</video>
	</div>
	<script>
		document.getElementById('vid').play();
	</script>
</section>
<!-- End Call To Action Section -->

<!-- 파워 블로거 슬라이드 -->

<link href="cssPostList/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Vendor CSS Files -->
<link href="cssPostList/assets2/vendor/aos/aos.css" rel="stylesheet">
<link href="cssPostList/assets2/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="cssPostList/assets2/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="cssPostList/assets2/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="cssPostList/assets2/css/style.css" rel="stylesheet">
<link href="cssPostList/assets2/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="cssPostList/assets2/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">



<div class="container px-5 my-5">
	<div class="text-center">
		<h2 class="fw-bolder"></h2>
		<p class="lead fw-normal text-muted mb-5">✨✨여행 파워 블로거✨✨</p>
	</div>
</div>


<section id="testimonials" class="testimonials section-bg">
	<div class="container" data-aos="fade-up">


		<div class="testimonials-slider swiper" data-aos="fade-up"
			data-aos-delay="100">

			<div class="swiper-wrapper">

				<c:forEach var="postmain" items="${postmain}" begin="1" end="4">
					<div class="swiper-slide">
					
						<div class="testimonial-item">
							<a href="postDetail.do?postId=${postmain.postId }">
							<img src="cssPostList/images/profile/${postmain.memberProfile }"
								class="testimonial-img" alt=""></a>
							<h3>Saul Goodman</h3>

							<h4>Ceo &amp; Founder</h4>
							<p>
								<i class="bx bxs-quote-alt-left quote-icon-left"></i> Proin
								iaculis purus consequat sem cure digni ssim donec porttitora
								entum suscipit rhoncus. Accusantium quam, ultricies eget id,
								aliquam eget nibh et. Maecen aliquam, risus at semper. <i
									class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>

						</div>
					</div>
					<!-- End testimonial item -->
				</c:forEach>
				<!-- <div class="swiper-slide">
            <div class="testimonial-item">
              <img src="cssPostList/assets2/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
              <h3>Sara Wilsson</h3>
              <h4>Designer</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis
                quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>End testimonial item

          <div class="swiper-slide">
            <div class="testimonial-item">
              <img src="cssPostList/assets2/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
              <h3>Jena Karlis</h3>
              <h4>Store Owner</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor
                labore quem eram duis noster aute amet eram fore quis sint minim.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>End testimonial item

          <div class="swiper-slide">
            <div class="testimonial-item">
              <img src="cssPostList/assets2/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
              <h3>Matt Brandon</h3>
              <h4>Freelancer</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim
                dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>End testimonial item

          <div class="swiper-slide">
            <div class="testimonial-item">
              <img src="cssPostList/assets2/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
              <h3>John Larson</h3>
              <h4>Entrepreneur</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa
                labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>End testimonial item -->

			</div>
			<div class="swiper-pagination"></div>
		</div>

	</div>

</section>
<!-- End Testimonials Section -->

<!-- 첫번째 포스트-->


<c:forEach var="postmain" items="${postmain}" begin="0" >
	<section class="py-5 bg-light" id="scroll-target">
		<div class="container px-5 my-5">
			<div class="row gx-5 align-items-center">
				<div class="col-lg-6">
					<a href="postDetail.do?postId=${postmain.postId}"><img
						class="img-fluid rounded mb-5 mb-lg-0"
						src="cssPostList/images/${postmain.postImages}" alt="..." /></a>
				</div>
				<div class="col-lg-6">
					<h2 class="fw-bolder">${postmain.postTitle}</h2>
					<p class="lead fw-normal text-muted mb-0">${postmain.postId}</p>
					<p class="lead fw-normal text-muted mb-0">${postmain.postContent}</p>

				</div>
			</div>
		</div>
	</section>
	<!-- 두번째 포스트 -->
	<section class="py-5">
		<div class="container px-5 my-5">
			<div class="row gx-5 align-items-center">
				<div class="col-lg-6 order-first order-lg-last">
					<a href="postDetail.do?postId=${postmain.postId}"><img
						class="img-fluid rounded mb-5 mb-lg-0"
						src="cssPostList/images/${postmain.postImages}" alt="..." /></a>
				</div>
				<div class="col-lg-6">
					<h2 class="fw-bolder">${postmain.postTitle}</h2>
					<p class="lead fw-normal text-muted mb-0">${postmain.postId}</p>
					<p class="lead fw-normal text-muted mb-0">${postmain.postContent}</p>

				</div>
			</div>
		</div>
	</section>
</c:forEach>

<!--  
<div class="center">
	<div class="pagination">
		<c:if test="${pageInfo.prev }">
			<a href="noticeList.do?page=${pageInfo.startPage-1 }">Previous</a>
		</c:if>
		<c:forEach var="i" begin="${pageInfo.startPage }"
			end="${pageInfo.endPage }">
			<a class="${i == pageInfo.pageNum ? 'active' : '' }" href="noticeList.do?page=${i }">${i } </a>
		</c:forEach>
		<c:if test="${pageInfo.next }">
			<a href="noticeList.do?page=${pageInfo.endPage+1 }">Next</a>
		</c:if>
	</div>
</div>-->


<!-- 파워 블로거 -->


<section class="py-5 bg-light">
	<div class="container px-5 my-5">
		<div class="text-center">
			<h2 class="fw-bolder"></h2>
			<h2 class="lead fw-normal text-muted mb-5">✨✨여행 파워 블로거✨✨</h2>
		</div>

		<div
			class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
			<c:forEach var="pm" items="${postmain}" begin="1" end="4">
				<div class="col mb-5 mb-5 mb-xl-0">
					<div class="text-center">
							<a href="">
							<img class="img-fluid rounded-circle mb-4 px-4"
								src="images/${pm.memberProfile }" alt="..." />
						 </a>
						<h5 class="fw-bolder">${pm.memberNickName}</h5>
						<div class="fst-italic text-muted">Founder &amp; CEO</div>
					</div>
				</div>
			</c:forEach>
			<!-- <div class="col mb-5 mb-5 mb-xl-0">
          <div class="text-center">
            <a href="postDetail.do?postId={postmember.postId}"><img class="img-fluid rounded-circle mb-4 px-4"
                src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
              <h5 class="fw-bolder">{postmember.memberNickName}</h5>
            </a>
            <div class="fst-italic text-muted">CFO</div>
          </div>
        </div> -->
			<!-- <div class="col mb-5 mb-5 mb-sm-0">
          <div class="text-center">
            <a href="postDetail.do?postId={postmember.postId}"><img class="img-fluid rounded-circle mb-4 px-4"
                src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
              <h5 class="fw-bolder">{postmember.memberNickName}</h5>
            </a>
            <div class="fst-italic text-muted">Operations Manager</div>
          </div>
        </div> -->
			<!-- <div class="col mb-5">
          <div class="text-center">
            <a href="postDetail.do?postId={postmember.postId}"><img class="img-fluid rounded-circle mb-4 px-4"
                src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
              <h5 class="fw-bolder">{postmember.memberNickName}</h5>
            </a>
            <div class="fst-italic text-muted">CTO</div>
          </div>
        </div> -->
		</div>
	</div>
</section>


<script>
	const swiper = new Swiper('.swiper', {
		// Optional parameters
		direction : 'horizontal',
		loop : true,

		// If we need pagination
		pagination : {
			el : '.swiper-pagination',
		},

		// Navigation arrows
		navigation : {
			nextEl : '.swiper-button-next',
			prevEl : '.swiper-button-prev',
		},

		// And if we need scrollbar
		scrollbar : {
			el : '.swiper-scrollbar',
		},
	});
</script>

<script
	src="cssPostList/assets2/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="cssPostList/assets2/vendor/aos/aos.js"></script>
<script
	src="cssPostList/assets2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="cssPostList/assets2/vendor/glightbox/js/glightbox.min.js"></script>
<script
	src="cssPostList/assets2/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="cssPostList/assets2/vendor/swiper/swiper-bundle.min.js"></script>
<script src="cssPostList/assets2/vendor/typed.js/typed.min.js"></script>
<script
	src="cssPostList/assets2/vendor/waypoints/noframework.waypoints.js"></script>
<script src="cssPostList/assets2/vendor/php-email-form/validate.js"></script>

<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="cssPostList/assets2/js/main.js"></script>