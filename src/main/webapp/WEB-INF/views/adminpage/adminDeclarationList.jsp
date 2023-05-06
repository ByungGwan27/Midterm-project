<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<main id="main" class="main">

  <div class="pagetitle">
    <h1>신고내역</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="adminPage.do">관리자 페이지</a></li>
        <li class="breadcrumb-item active">신고내역</li>
      </ol>
    </nav>
  </div>
  <!-- End Page Title -->

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">
          <div class="card-body">
            <h5 class="card-title">신고내역</h5>

            <!-- Table with stripped rows -->
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">신고번호</th>
                  <th scope="col">신고유형</th>
                  <th scope="col">신고숙소</th>
                  <th scope="col">신고자</th>
                  <th scope="col">신고상태</th>
                </tr>
              </thead>
              <tbody id="decTbody">
				<c:forEach var="dec" items="${decList}">
                <tr class="dec" id="decRow">
                  <th scope="row"></th>
                  <td>${dec.decId}</td>
                  <td>${dec.decCategory}</td>
                  <td>${dec.hotelId}</td>
                  <td>${dec.memberId}</td>
                  <td>${dec.decStatus}</td>
                </tr>
				</c:forEach>
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
  dec.forEach(function (ele) {
    ele.addEventListener("dblclick", function () {
      location.href = 'adminDeclarationInfo.do?id='+this.children[1].innerText;
    })

  })

  // let decTbody = document.getElementById('decTbody')
  // let decRow = document.getElementById('decRow')
  // console.log(decRow)
  // fetch("adminDecList.do")
  //   .then(resolve => resolve.json())
  //   .then(result => {

  //     let decList = result;
  //     for (let decData of decList) {
  //       console.log(decData.decCategory);
  //       clone = decRow.cloneNode(true);

  //       clone.childNodes[1].innerText = decData.decId
  //       clone.childNodes[2].innerText = decData.decCategory
  //       clone.childNodes[3].innerText = decData.hotelId
  //       clone.childNodes[4].innerText = decData.memberId

  //       console.log(clone);
  //       decTbody.append(clone)
  //     }


  //   })
</script>