<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>

* {box-sizing:border-box}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
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
  background-color: rgba(0,0,0,0.8);
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

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}

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

 <body>
	<div class="content-center">
		<video id="vid" width="970" height="763" autoplay="autoplay"
			loop="loop" muted="muted" controls>
			<source src="cssPostList/video/-70796 (1).mp4" type="video/mp4">
		</video>
		<script>
			document.getElementById('vid').play();
		</script>
	</div>


       <!-- 파워 블로거 슬라이드 -->
       
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
   
   <c:forEach var="post" items="${list}">
    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery section-bg">
    
       <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
         
            <div class="text-center">
      <div class="container" data-aos="fade-up">
      
        <div class="gallery-slider swiper">
        
          <div class="swiper-wrapper align-items-center">
          
            <div class="swiper-slide"><a class="glightbox"  href="postDetail.do?memberId=${post.memberId}"><img
                  class="img-fluid rounded mb-4 px-4"
                  src="cssPostList/images/${post.postImages}" alt="..." />
                  <h5 class="fw-bolder">파워 블로거</h5></a>
               <div class="fst-italic text-muted">국내여행 전문 블로거</div></div>
               
                <div class="swiper-slide"><a class="glightbox"  href="postDetail.do?memberId=${post.memberId}"><img
                  class="img-fluid rounded mb-4 px-4"
                  src="cssPostList/images/${post.postImages}" alt="..." />
                  <h5 class="fw-bolder">파워 블로거</h5></a>
               <div class="fst-italic text-muted">국내여행 전문 블로거</div></div>
               
                 <div class="swiper-slide"><a class="glightbox"  href="postDetail.do?memberId=${post.memberId}"><img
                  class="img-fluid rounded mb-4 px-4"
                  src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                  <h5 class="fw-bolder">파워 블로거</h5></a>
               <div class="fst-italic text-muted">국내여행 전문 블로거</div></div>
               
                 <div class="swiper-slide"><a class="glightbox"  href="postDetail.do?memberId=${post.memberId}"><img
                  class="img-fluid rounded mb-4 px-4"
                  src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                  <h5 class="fw-bolder">파워 블로거</h5></a>
               <div class="fst-italic text-muted">국내여행 전문 블로거</div></div>
       
       </div>
          </div>
          
	          <div class="swiper-pagination"></div>
	          <div class="swiper-button-prev"></div>
	          <div class="swiper-button-next"></div>
	          <div class="swiper-scrollbar"></div>

        </div>
      </div>
      </div>

    </section><!-- End Gallery Section -->


<!-- 첫번째 포스트-->



<section class="py-5 bg-light" id="scroll-target">
	<div class="container px-5 my-5">
		<div class="row gx-5 align-items-center">
			<div class="col-lg-6">
				<a href="postDetail.do?memberId=${post.memberId}"><img
					class="img-fluid rounded mb-5 mb-lg-0"
					src="cssPostList/images/${post.postImages}" alt="..." /></a>
			</div>
			<div class="col-lg-6">
				<h2 class="fw-bolder">${post.postTitle}</h2>
				<p class="lead fw-normal text-muted mb-0">${post.memberId}</p>
				<p class="lead fw-normal text-muted mb-0">${post.postContent}</p>
				
			</div>
		</div>
	</div>
</section>
<!-- 두번째 포스트 -->
<section class="py-5">
	<div class="container px-5 my-5">
		<div class="row gx-5 align-items-center">
			<div class="col-lg-6 order-first order-lg-last">
				<a href="postDetail.do?memberId=${post.memberId}"><img
					class="img-fluid rounded mb-5 mb-lg-0"
					src="cssPostList/images/${post.postImages}" alt="..." /></a>
			</div>
			<div class="col-lg-6">
				<h2 class="fw-bolder">${post.postTitle}</h2>
				<p class="lead fw-normal text-muted mb-0">${post.memberId}</p>
				<p class="lead fw-normal text-muted mb-0">${post.postContent}</p>
				
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

<c:forEach var="memberList" items="${memberList}">

<section class="py-5 bg-light">
	<div class="container px-5 my-5">
		<div class="text-center">
			<h2 class="fw-bolder"></h2>
			<p class="lead fw-normal text-muted mb-5">✨✨여행 파워 블로거✨✨</p>
		</div>


		<div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
			<div class="col mb-5 mb-5 mb-xl-0">
				<div class="text-center">
					<a href="postDetail.do?memberId=${post.memberId}"><img
						class="img-fluid rounded-circle mb-4 px-4"
						src="${memberList.memberProfile }" alt="..." />
						<h5 class="fw-bolder">${memberList.memberName}</h5></a>
					<div class="fst-italic text-muted">Founder &amp; CEO</div>
				</div>
			</div>
			<div class="col mb-5 mb-5 mb-xl-0">
				<div class="text-center">
					<a href="postDetail.do?memberId=${post.memberId}"><img
						class="img-fluid rounded-circle mb-4 px-4"
						src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
						<h5 class="fw-bolder">${post.memberName}</h5></a>
					<div class="fst-italic text-muted">CFO</div>
				</div>
			</div>
			<div class="col mb-5 mb-5 mb-sm-0">
				<div class="text-center">
					<a href="postDetail.do?memberId=${post.memberId}"><img
						class="img-fluid rounded-circle mb-4 px-4"
						src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
						<h5 class="fw-bolder">Toribio Nerthus</h5></a>
					<div class="fst-italic text-muted">Operations Manager</div>
				</div>
			</div>
			<div class="col mb-5">
				<div class="text-center">
					<a href="postDetail.do?memberId=${post.memberId}"><img
						class="img-fluid rounded-circle mb-4 px-4"
						src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
						<h5 class="fw-bolder">Malvina Cilla</h5></a>
					<div class="fst-italic text-muted">CTO</div>
				</div>
			</div>
		</div>
	</div>
</section>
</c:forEach>
</body>
	
	<script>
    const swiper = new Swiper('.swiper', {
      // Optional parameters
      direction: 'horizontal',
      loop: true,

      // If we need pagination
      pagination: {
        el: '.swiper-pagination',
      },

      // Navigation arrows
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },

      // And if we need scrollbar
      scrollbar: {
        el: '.swiper-scrollbar',
      },
    });
    
   

</script>
