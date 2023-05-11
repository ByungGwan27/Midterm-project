<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>

<head>
 
  <!-- Vendor CSS Files -->
  <link href="cssNoticeAddForm/assets/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="cssNoticeAddForm/assets/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="cssNoticeAddForm/assets/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="cssNoticeAddForm/assets/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="cssNoticeAddForm/assets/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="cssNoticeAddForm/assets/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="cssNoticeAddForm/assets/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: MyResume
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/free-html-bootstrap-template-my-resume/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>


  <!-- ======= Mobile nav toggle button ======= -->
  <!-- <button type="button" class="mobile-nav-toggle d-xl-none"><i class="bi bi-list mobile-nav-toggle"></i></button> -->
  <i class="bi bi-list mobile-nav-toggle d-lg-none"></i>
  <!-- ======= Header ======= -->
  <header id="header" class="d-flex flex-column justify-content-center">

    <nav id="navbar" class="navbar nav-menu">
      <ul>
        <li><a href="noticeList.do" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>공지사항 홈</span></a></li>
        <li><a href="noticeDetail.do" class="nav-link scrollto"><i class="bx bx-server"></i> <span>공지사항 상세페이지</span></a></li>
        <li><a href="noticeAddForm.do" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>공지사항 작성</span></a></li>
        <li><a href="#portfolio" class="nav-link scrollto"><i class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
        <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Contact</span></a></li>
      </ul>
    </nav><!-- .nav-menu -->

  </header><!-- End Header -->



     <section class="py-5">
             <div class="container px-5 my-5">
                 <div class="row gx-5">
                    
                     </div>
                     <div class="col-lg-9">
                         <!-- Post content-->
                         <article>
                             <!-- Post header-->
                             <header class="mb-4">
              	                   <!-- Post title-->
                                 <h1 class="fw-bolder mb-1">공지사항 상세 페이지</h1>
                                 <!-- Post meta content-->
                                 <div class="text-muted fst-italic mb-2">January 1, 2023</div>
                                 <!-- Post categories-->
                                 <a class="badge bg-secondary text-decoration-none link-light" href="#!">Web Design</a>
                                 <a class="badge bg-secondary text-decoration-none link-light" href="#!">Freebies</a>
                             </header>
                             <!-- Preview image figure-->
                             <figure class="mb-4"><img class="img-fluid rounded" src="https://dummyimage.com/900x400/ced4da/6c757d.jpg" alt="..." /></figure>
                             <!-- Post content-->
                             <section class="mb-5">
                                 <p class="fs-5 mb-4">Science is an enterprise that should be cherished as an activity of the free human mind. Because it transforms who we are, how we live, and it gives us an understanding of our place in the universe.</p>
                                 <p class="fs-5 mb-4">The universe is large and old, and the ingredients for life as we know it are everywhere, so there's no reason to think that Earth would be unique in that regard. Whether of not the life became intelligent is a different question, and we'll see if we find that.</p>
                                 <p class="fs-5 mb-4">If you get asteroids about a kilometer in size, those are large enough and carry enough energy into our system to disrupt transportation, communication, the food chains, and that can be a really bad day on Earth.</p>
                                 <h2 class="fw-bolder mb-4 mt-5">I have odd cosmic thoughts every day</h2>
                                 <p class="fs-5 mb-4">For me, the most fascinating interface is Twitter. I have odd cosmic thoughts every day and I realized I could hold them to myself or share them with people who might be interested.</p>
                                 <p class="fs-5 mb-4">Venus has a runaway greenhouse effect. I kind of want to know what happened there because we're twirling knobs here on Earth without knowing the consequences of it. Mars once had running water. It's bone dry today. Something bad happened there as well.</p>
                             </section>
                         </article>
                 </div>
             </div>
         </section>
            
<c:set var="no" value="0"></c:set>
	<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
            <form action="noticeAdd.do" method="POST">
                <table class="table">

	<thead>
		<tr>
			<th>순번</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성날짜</th>
		</tr>
		
	</thead>
	<c:forEach var="notice" items="${list }">
		<tr>
			<td><c:out value="${no=no+1 }"></c:out></td>
			<!-- <td><a href="getNotice.do?page=${pageInfo.pageNum}&nid=${notice.noticeId }">${notice.noticeId }</a></td> -->
			<td><a href="getNotice.do?page=${pageInfo.pageNum}&nTit=${notice.noticeTitle }">${notice.noticeTitle }</a></td>
			<td>${notice.memberId }</td>
			<td>${notice.writeDate }</td>
			<td>${notice.noticeViews }</td>
			<td colspan="4" align="center"><input type="submit"
				value="수정"> <input type="reset" value="삭제"></td>
			
		</tr>
	</c:forEach>
</table>
</form>
</div>
</div>
</section>

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
</div>



 <script>
document.addEventListener('DOMContentLoaded', function(){
	
	let res1 = document.querySelectorAll("table tbody tr");
	console.log(res1)
	res1.forEach(function(res1) {
		res1.addEventListener("dblclick", function() {
			location.href = 'noticeDetail.do?id='
					+ this.children[1].innerText;
		})

	})
})
</script>
            