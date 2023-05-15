<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Traveller - 예약내역</title>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">예약내역</h1>
<p class="mb-4">
	<a class="btn btn-primary" href="myPageHome.do">미방문</a> 
	<a class="btn btn-primary" href="myPageVisit.do">방문중</a>
	<a class="btn btn-primary" href="myPageVisited.do">방문</a>
</p>

<!-- 본문  -->
<div class="card shadow mb-4" id = "ajaxwillvisit">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">${nickname }님이 현재 방문중인 곳입니다 ~~ </h6>
	</div>

	<div>
		<!-- 본문 내용 -->
	</div>


</div>
<hr>
<!-- 버튼 -->
<div class="center">
	<div class="pagination">
		<c:if test="${pageInfo.prev }">
			<a href="myPageVisit.do?page=${pageInfo.startPage-1 }"
				class="btn btn-primary" id="pagecenter">Previous</a>
		</c:if>
		<c:forEach var="i" begin="${pageInfo.startPage }"
			end="${pageInfo.endPage }">
			<a class="${i == pageInfo.pageNum ? 'active' : '' } btn btn-primary"
				id="pagecenter" href="myPageVisit.do?page=${i }">${i }</a>
		</c:forEach>
		<c:if test="${pageInfo.next }">
			<a href="myPageVisit.do?page=${pageInfo.endPage+1 }"
				class="btn btn-primary" id="pagecenter">Next</a>
		</c:if>
	</div>
</div>




<script>
/* 수정 */
let showWish = ['hotelName', 'locationDetail', 'checkinDate', 'checkoutDate', 'hotelPhone', 'roomName', 'reservationId', 'hotelLocation1', 'hotelId'];
let xhtp = new XMLHttpRequest();
/* 수정 */
xhtp.open('get', 'myPageVisitPaging.do?page=${pageInfo.pageNum }');
xhtp.send();

xhtp.onload = function () {
	console.log(xhtp.responseText);
	/* 수정 */
	let ajaxwillvisit = document.querySelector('#ajaxwillvisit');
	let wdata = JSON.parse(xhtp.response);
	
	// 목록생성
	for(let i = 0; i < wdata.length; i++) {
	  let div = wmakeRow({
		  /* 수정 */
	    hotelName: wdata[i][showWish[0]],
	    locationDetail: wdata[i][showWish[1]],
	    checkinDate: wdata[i][showWish[2]],
	    checkoutDate: wdata[i][showWish[3]],
	    hotelPhone: wdata[i][showWish[4]],
	    roomName: wdata[i][showWish[5]],
	    reservationId: wdata[i][showWish[6]],
	    hotelLocation1: wdata[i][showWish[7]],
	    hotelId: wdata[i][showWish[8]]
	  }, i+1);
	
		/* 수정 */
	  ajaxwillvisit.appendChild(div);
	}
	
}
	
	
//목록만들기
function wmakeRow(wwlist = {}, counter) {
	
	let div = document.createElement('div');
	div.classList.add('row', 'gx-4', 'gx-lg-5', 'align-items-center', 'my-5', 'ajax-del');
	
	let checkboxDiv = document.createElement('div');
	checkboxDiv.classList.add('col-lg-7', 'gwan-checkbox');
	
	let checkbox = document.createElement('input');
	checkbox.type = 'checkbox';
	checkbox.name = 'wishcheckbox';
	checkbox.value = wwlist.reservationId;
	checkbox.classList.add('gwan-button-size', 'gwan-button-type');
	//onclick = '함수명' : 함수명을 넣어서 바로 실행
	checkbox.id = counter.toString();
	
	let checkboxLabel = document.createElement('label');
	checkboxLabel.htmlFor = counter.toString();
	checkboxLabel.classList.add('px-4');

	let img = document.createElement('img');
	img.classList.add('img-fluid', 'rounded', 'mb-4', 'mb-lg-0');
	img.src = "https://dummyimage.com/300x200/dee2e6/6c757d.jpg";
	img.alt = '...';

	checkboxDiv.appendChild(checkbox);
	checkboxDiv.appendChild(checkboxLabel);
	checkboxDiv.appendChild(img);

	let contentDiv = document.createElement('div');
	contentDiv.classList.add('col-lg-5');
	
	/* 수정 */
	let hotelName = document.createElement('h5');
	hotelName.classList.add('font-weight-light');
	hotelName.textContent = wwlist.hotelName;

	let reservTime = document.createElement('p');
	reservTime.textContent = '예약 날짜 : ' + wwlist.checkinDate + ' - ' + wwlist.checkoutDate;

	let hotelLocation = document.createElement('p');
	hotelLocation.textContent = '숙소 위치 : ' + wwlist.locationDetail;


	let reservationButton = document.createElement('a');
	reservationButton.classList.add('btn', 'btn-primary');
	reservationButton.href = 'hotelInfoPage.do?hotelLocation1=' + wwlist.hotelLocation1 + '&hotelId='+wwlist.hotelId;
	reservationButton.textContent = '상세페이지 조회';

	
	/* append 붙이는 순서가 중요 */
	contentDiv.appendChild(hotelName);
	contentDiv.appendChild(reservTime);
	contentDiv.appendChild(hotelLocation);
	contentDiv.appendChild(reservationButton);

	div.appendChild(checkboxDiv);
	div.appendChild(contentDiv);
	
	return div;
}
	
	
</script>