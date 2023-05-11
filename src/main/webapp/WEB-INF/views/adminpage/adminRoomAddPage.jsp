<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main id="main" class="main">
	<h3>addroompage</h3>
	<h5>숙소객실추가</h5>
	<h5>숙소상세정보기입 * 상기객실개수받아표시</h5>
	<input type="text" id="roomCount" placeholder="객실개수">
	<button type="button" onclick="showAddRoomForm()">확인</button>
	<script>
		function showAddRoomForm() {
			let roomCount = parseInt(document.getElementById('roomCount').value);
			let form = document.querySelector('form');
			form.innerHTML = ''; // 기존의 내용 삭제

			for (let i = 0; i < roomCount; i++) {
				let table = document.createElement('table');
				table.classList.add('table');

				// 각각의 입력 폼을 생성하여 table에 추가
				let tr = document.createElement('tr');
				let th = document.createElement('th');
				th.textContent = 'hotelId';
				let td = document.createElement('td');
				let input = document.createElement('input');
				input.type = 'text';
				input.name = 'hotelId';
				td.appendChild(input);
				tr.appendChild(th);
				tr.appendChild(td);
				table.appendChild(tr);

				// 객실id, 객실명, 객실가격, 최대인원, 최소인원, 인원추가시발생금액에 대해서도 동일하게 생성 후 table에 추가
				
				form.appendChild(table);
			}

			form.style.display = 'block';
		}
	</script>
	<form action="adminAddRoomPage.do" method="POST" enctype="multipart/form-data" style="display: none;">
	</form>
</main>
