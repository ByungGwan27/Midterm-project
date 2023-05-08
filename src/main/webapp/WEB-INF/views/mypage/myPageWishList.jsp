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
<div class="card shadow mb-4" id = "ajaxwish">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">위시리스트입니다.</h6>
	</div>
	
	<!-- 전체 선택 라벨 -->
	<div class="row gx-4 gx-lg-5 align-items-center my-5">
		<div class="col-lg-7 gwan-checkbox">
			<input type="checkbox" name="wishcheckbox" value="selectAll2"
				class="gwan-button-size gwan-button-type" id="selectAll" onclick='selectAll(this)' /> <label
				for="selectAll" class="px-4">전체 선택</label>
		</div>
	</div>

</div>

<script>
	let showWish = ['hotelName', 'hotelLocation1', 'hotelLocation2', 'HotelThema', 'WishlistId', 'RoomPrice'];
	let xhtp = new XMLHttpRequest();
	xhtp.open('get', 'myPageWishListAjax.do');
	xhtp.send();
	
	xhtp.onload = function () {
		console.log(xhtp.responseText);
		let ajaxwish = document.querySelector('#ajaxwish');
		//responseText와 response의 차이점이????
		let wdata = JSON.parse(xhtp.response);
		console.log(wdata);
		
		
		for(let i = 0; i < wdata.length; i++) {
		  let div = wmakeRow({
		    hotelName: wdata[i][showWish[0]],
		    hotelLocation1: wdata[i][showWish[1]],
		    hotelLocation2: wdata[i][showWish[2]],
		    HotelThema: wdata[i][showWish[3]],
		  	WishlistId: wdata[i][showWish[4]],
		    RoomPrice: wdata[i][showWish[5]]
		  }, i+1);
		
		// 1씩 증가하는 함수 쓰기전
		/* for(let wwlist of wdata) {
				//console.log(wwlist);
				//배열의 순서에 맞게 안넣으면 값이 undifined가 뜸
				let div = wmakeRow({
	        hotelName: wwlist[showWish[0]],
	        hotelLocation1: wwlist[showWish[1]],
	        hotelLocation2: wwlist[showWish[2]],
	        HotelThema: wwlist[showWish[3]],
	        RoomPrice: wwlist[showWish[4]]
   		}); */

		ajaxwish.appendChild(div);
		}
	}

	function wmakeRow(wwlist = {}, counter) {
		
		let div = document.createElement('div');
		div.classList.add('row', 'gx-4', 'gx-lg-5', 'align-items-center', 'my-5');
		
		let checkboxDiv = document.createElement('div');
		checkboxDiv.classList.add('col-lg-7', 'gwan-checkbox');
		
		let checkbox = document.createElement('input');
		checkbox.type = 'checkbox';
		checkbox.name = 'wishcheckbox';
		checkbox.value = wwlist.WishlistId;
		checkbox.classList.add('gwan-button-size', 'gwan-button-type');
		checkbox.id = counter.toString();
		
		let checkboxLabel = document.createElement('label');
		checkboxLabel.htmlFor = counter.toString();
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
		hotelName.textContent = wwlist.hotelName;

		let hotelThema = document.createElement('p');
		hotelThema.textContent = wwlist.HotelThema;

		let hotelLocation = document.createElement('p');
		hotelLocation.textContent = '숙소 위치 : ' + wwlist.hotelLocation1 + ' ' + wwlist.hotelLocation2;

		let roomPrice = document.createElement('p');
		roomPrice.textContent = '최저가 : ' + wwlist.RoomPrice + '원';
		
		//버튼 삭제기능 추가
		let deleteButton = document.createElement('button');
		/* deleteButton.addEventListener('click', function (e) {
			
		} */
		
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
		
		return div;
	}

	
	
	
	//전체 선택/취소
	function selectAll(selectAll)  {
	  const checkboxes 
	       = document.getElementsByName('wishcheckbox');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
	}
	
	/* //폐기된 ajax
	
	let showWish = ['hotelName', 'hotelLocation1', 'hotelLocation2', 'HotelThema', 'RoomPrice'];
	let url = 'myPageWishListAjax.do';
	
	let wlist = document.querySelector('#ajaxwish');
	let allWishList;
	  fetch(url)
	    .then(resolve => resolve.json())
	    .then(result => {
	      console.log(result); 
	      allWishList = result.data;
	      console.log("allWishList : "+ allWishList); 
	      console.log(result.data);
	      
	      findList();
	          
	    })
	  .catch(error => console.error(error));

	function findList() {
		  wlist.innerHTML = "";
		    allWishList.forEach(witem => {
		        wlist.append(wmakeRow(witem)); // witem 매개변수 수정
		    });
		}
	
	function wmakeRow(witem) {
		
		//1번 div 생성
		let div = document.createElement('div');
		div.classList.add('row', 'gx-4', 'gx-lg-5', 'align-items-center', 'my-5');
		
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
		let ajaxwish = document.getElementById('ajaxwish');
		ajaxwish.appendChild(div);
	}  */
	
</script>


