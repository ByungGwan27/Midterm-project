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
		<h6 class="m-0 font-weight-bold text-primary">${nickname }님의 미방문 예약내역입니다! 즐거운 여행 되세요!</h6>
	</div>

	<!-- 전체 선택 라벨 -->
	<div class="row gx-4 gx-lg-5 align-items-center my-5">
		<div class="col-lg-7 gwan-checkbox">
			<input type="checkbox" name="wishcheckboxAll" value="selectAll2"
				class="gwan-button-size gwan-button-type" id="selectAll"
				onclick='selectAll(this)' /> <label for="selectAll" class="px-4">전체
				선택</label>
		</div>
		<div style="width: 200px;">
			<button class="btn btn-primary" id="chooseDelete">선택 예약 취소</button>
		</div>
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
			<a href="myPageHome.do?page=${pageInfo.startPage-1 }"
				class="btn btn-primary" id="pagecenter">Previous</a>
		</c:if>
		<c:forEach var="i" begin="${pageInfo.startPage }"
			end="${pageInfo.endPage }">
			<a class="${i == pageInfo.pageNum ? 'active' : '' } btn btn-primary"
				id="pagecenter" href="myPageHome.do?page=${i }">${i }</a>
		</c:forEach>
		<c:if test="${pageInfo.next }">
			<a href="myPageHome.do?page=${pageInfo.endPage+1 }"
				class="btn btn-primary" id="pagecenter">Next</a>
		</c:if>
	</div>
</div>




<script>
	/* 수정 */
	let showWish = ['hotelName', 'locationDetail', 'checkinDate', 'checkoutDate', 'hotelPhone', 'roomName', 'reservationId'];
	let xhtp = new XMLHttpRequest();
	/* 수정 */
	xhtp.open('get', 'myPageHomeWillVisit.do?page=${pageInfo.pageNum }');
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
		    reservationId: wdata[i][showWish[6]]
		  }, i+1);
		
			/* 수정 */
		  ajaxwillvisit.appendChild(div);
		}
		
		//선택삭제 만들기
		let cDel = document.getElementById("chooseDelete");
		console.log('cDel위치'+cDel);

		let checkBoxArr = [];
		cDel.addEventListener("click", function (e) {
			checkStr = '';
  		let checkBoxes = document.querySelectorAll(
    		'input[type="checkbox"][name="wishcheckbox"]:checked'
  		);
			for (let i = 0; i < checkBoxes.length; i++) {
				checkStr += 'id='+checkBoxes[i].value+"&";
				//id로 넘기기로했다
			}
			/* 수정 */
			location.href="myPageHomeDelWillVisit.do?"+checkStr.substring(0, checkStr.length-1);
		});
		console.log(checkBoxArr);
		console.log(checkBoxes);
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
		checkbox.onclick = checkSelectAll;
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

		//버튼 삭제기능 추가
		let deleteButton = document.createElement('button');
		
		deleteButton.addEventListener('click', function (e) {
			
			//value(WillVistId)값 찾기
			console.log('삭제 벨류 찾기' + deleteButton.parentElement.parentElement.children[0].children[0].value);
			let WillVistId = deleteButton.parentElement.parentElement.children[0].children[0].value;
			console.log("삭제벨류"+WillVistId);
			// 한 단위 선택
			console.log(deleteButton.parentElement.parentElement);
			let container = deleteButton.parentElement.parentElement;
			
			//Ajax 호출
			let xhtp = new XMLHttpRequest();
			xhtp.open('post', 'myPageHomeDelWillVisit.do')
			xhtp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
			//req.getParameter로 가져올 값을 적어줌(POST)
			xhtp.send('wvId=' + WillVistId);
			
			//로딩이 끝나면
			xhtp.onload = function () {
				let result = JSON.parse(xhtp.response);
				console.log(result);
				if (result.retCode == 'Success') {
					// 화면에서 지우기
					alert('취소완료');
					container.remove();
				} else if (result.retCode == 'Fail') {
					alert('처리중 에러.');
				} else {
					alert('알수 없는 반환값.');
				}
			}
		})
		
		deleteButton.classList.add('btn', 'btn-primary');
		deleteButton.textContent = '예약 취소';

		let reservationButton = document.createElement('a');
		reservationButton.classList.add('btn', 'btn-primary');
		reservationButton.href = '#!';
		reservationButton.textContent = '예약 수정';

		
		/* append 붙이는 순서가 중요 */
		contentDiv.appendChild(hotelName);
		contentDiv.appendChild(reservTime);
		contentDiv.appendChild(hotelLocation);
		contentDiv.appendChild(reservationButton);
		contentDiv.appendChild(deleteButton);

		div.appendChild(checkboxDiv);
		div.appendChild(contentDiv);
		
		return div;
	}
	
	
	function checkSelectAll()  {
		  // 전체 체크박스
		  const checkboxes 
		    = document.querySelectorAll('input[name="wishcheckbox"]');
		  // 선택된 체크박스
		  const checked 
		    = document.querySelectorAll('input[name="wishcheckbox"]:checked');
		  // select all 체크박스
		  const selectAll 
		    = document.querySelector('input[name="wishcheckboxAll"]');
		  
		  if(checkboxes.length === checked.length)  {
		    selectAll.checked = true;
		  }else {
		    selectAll.checked = false;
		  }

		}
	
 	//전체 선택/취소
	function selectAll(selectAll)  {
	  const checkboxes 
	       = document.getElementsByName('wishcheckbox');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
	 
	}
	
	
	
</script>