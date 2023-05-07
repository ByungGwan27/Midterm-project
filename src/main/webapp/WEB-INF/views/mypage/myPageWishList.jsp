<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Traveller - 위시리스트</title>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">위시리스트</h1>
<p class="mb-4">
	${nickname }님의 위시리스트입니다!
</p>

<!-- 본문  -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">위시리스트입니다.</h6>
	</div>
	<div id = "ajaxwish">
	
	</div>
	
	
	<c:forEach var="mwl" items="${MainWishList }">
	<!-- 한 단위 -->
	<div class="row gx-4 gx-lg-5 align-items-center my-5" id="wishwish">
		<div class="col-lg-7 gwan-checkbox">
			<!-- id와 for의 값이 같아야 체크가 됨 -->
			<input type="checkbox" name="2" value="2"
				class="gwan-button-size gwan-button-type" id="2"><label
				for="2" class="px-4"></label> <img
				class="img-fluid rounded mb-4 mb-lg-0"
				src="https://dummyimage.com/500x200/dee2e6/6c757d.jpg" alt="..." />
		</div>
		<div class="col-lg-5">
			<h5 class="font-weight-light">${mwl.hotelName }</h5>
			<p>${mwl.hotelThema }</p>
			<p>숙소 위치 : ${mwl.hotelLocation1 }${mwl.hotelLocation2 }</p>
			<p>최저가 : ${mwl.roomPrice }원</p>
			<a class="btn btn-primary" href="#!">삭제</a> <a
				class="btn btn-primary" href="#!">예약</a>
		</div>
	</div>
	</c:forEach>
</div>

<script>
	let showWish = ['hotelName', 'hotelLocation1', 'hotelLocation2', 'HotelThema', 'RoomPrice'];
	let url = 'myPageWishListAjax.do';
	
	let wlist = document.querySelector('#ajaxwish');
	let allWishList;
		
	fetch(url)
		.then(resolve => resolve.json())
		.then(result => {
			allWishList = result.data;
			findList();
			
		});

	function findList() {
		wlist.innerHTML = "";
		allWishList.forEach(witem) {
			wlist.append(wmakeRow(witem));
		}
		
	}
	
	function wmakeRow(witem) {
		
		//1번 div 생성
		let div = document.createElement('div');
		div.classList.add('row', 'gx-4', 'gx-lg-5', 'align-items-center', 'my-5');
		div.id = 'wishwish';
		
		let checkboxDiv = document.createElement('div');
		checkboxDiv.classList.add('col-lg-7', 'gwan-checkbox');
		
		let checkbox = document.createElement('input');
		checkbox.type = 'checkbox';
		checkbox.name = '2';
		checkbox.value = '2';
		checkbox.classList.add('gwan-button-size', 'gwan-button-type');
		checkbox.id = '2';
		
		let checkboxLabel = document.createElement('label');
		checkboxLabel.htmlFor = '2';
		checkboxLabel.classList.add('px-4');

		let img = document.createElement('img');
		img.classList.add('img-fluid', 'rounded', 'mb-4', 'mb-lg-0');
		img.src = 'https://dummyimage.com/500x200/dee2e6/6c757d.jpg';
		img.alt = '...';

		checkboxDiv.appendChild(checkbox);
		checkboxDiv.appendChild(checkboxLabel);
		checkboxDiv.appendChild(img);

		let contentDiv = document.createElement('div');
		contentDiv.classList.add('col-lg-5');

		let hotelName = document.createElement('h5');
		hotelName.classList.add('font-weight-light');
		hotelName.textContent = witem.hotelName;

		let hotelThema = document.createElement('p');
		hotelThema.textContent = witem.HotelThema;

		let hotelLocation = document.createElement('p');
		hotelLocation.textContent = '숙소 위치 : ' + witem.hotelLocation1 + witem.hotelLocation2;

		let roomPrice = document.createElement('p');
		roomPrice.textContent = '최저가 : ' + witem.RoomPrice + '원';

		let deleteButton = document.createElement('a');
		deleteButton.classList.add('btn', 'btn-primary');
		deleteButton.href = '#!';
		deleteButton.textContent = '삭제';

		let reservationButton = document.createElement('a');
		reservationButton.classList.add('btn', 'btn-primary');
		reservationButton.href = '#!';
		reservationButton.textContent = '예약';

		contentDiv.appendChild(hotelName);
		contentDiv.appendChild(hotelThema);
		contentDiv.appendChild(hotelLocation);
		contentDiv.appendChild(roomPrice);
		contentDiv.appendChild(deleteButton);
		contentDiv.appendChild(reservationButton);

		div.appendChild(checkboxDiv);
		div.appendChild(contentDiv);

		// 생성한 div를 원하는 요소에 추가
		let target = document.getElementById('target');
		target.appendChild(div);
	}
	
</script>


