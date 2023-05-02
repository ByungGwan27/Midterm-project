<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>예약 관리</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="adminPage.do">관리자 페이지</a></li>
          <li class="breadcrumb-item active">예약관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">예약번호</th>
                    <th scope="col">숙소명</th>
                    <th scope="col">숙소세부명</th>
                    <th scope="col">호수</th>
                    <th scope="col">예약날짜</th>
                    <th scope="col">인원수</th>
                    <th scope="col">예약자이름</th>
                    <th scope="col">연락처</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="res">
                    <th scope="row">1</th>
                    <td>Brandon Jacob</td>
                    <td>Designer</td>
                    <td>28</td>
                    <td>2016-05-25</td>
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
  let res = document.querySelectorAll(".res");
	console.log(res);
	res.forEach(function(ele) {
		console.log(ele);
		ele.addEventListener("dblclick", function() {
			location.href = 'adminReservationInfo.do'
		})

	})
  </script>