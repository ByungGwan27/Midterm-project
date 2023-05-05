<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>신고내역</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="adminPage.do">관리자 페이지</a></li>
          <li class="breadcrumb-item active">신고내역</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">신고내역</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">신고번호</th>
                    <th scope="col">신고유형</th>
                    <th scope="col">신고숙소</th>
                    <th scope="col">신고자</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="dec">
                    <th scope="row">1</th>
                    <td>12</td>
                    <td>불친절</td>
                    <td>숙소1</td>
                    <td>id</td>
                  </tr>
                  
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main>
  
<script>
  let dec = document.querySelectorAll(".dec");
	console.log(dec);
	dec.forEach(function(ele) {
		console.log(ele);
		ele.addEventListener("dblclick", function() {
			location.href = 'adminDeclarationInfo.do'
		})

	})
	
	fetch("adminDecList.do")
</script>