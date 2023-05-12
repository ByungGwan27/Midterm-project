<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main id="main" class="main">
	<h3>addroompage</h3>
	<h5>숙소객실추가</h5>
	<form action="adminAddRoomPage.do" method="POST" enctype="multipart/form-data">
		<table class='table'>
			<tr>
				<th>이미지Id</th>
				<td><input type="text" name="imageId"></td>
			</tr>
			<tr>
				<th>객실이미지</th>
				<td><input type="file" name="image"></td>
			</tr>
			<tr>
				<th>hotelId</th>
				<td><input type="text" name="hotelId"></td>
			</tr>
			<tr>
				<th>객실ID</th>
				<td><input type="text" name="roomId"></td>
			</tr>
			<tr>
				<th>객실명</th>
				<td><input type="text" name="roomName"></td>
			</tr>
			<tr>
				<th>객실가격</th>
				<td><input type="text" name="roomPrice"></td>
			</tr>
			<tr>
				<th>최대인원</th>
				<td><input type="text" name="roomMax"></td>
			</tr>
			<tr>
				<th>최소인원</th>
				<td><input type="text" name="roomMin"></td>
			</tr>
			<tr>
				<th>인원추가시발생하는금액</th>
				<td><input type="text" name="addPrice"></td>
			</tr>
			<tr>
				<th>시설정보</th>
				<td>
					<span class="fa fa-chevron-right mr-2">
					<input type="checkbox" name="singleRoom" value="2">싱글룸</span>
					<span class="fa fa-chevron-right mr-2">
					<input type="checkbox" name="twinRoom" value="2">트윈룸</span>
					<span class="fa fa-chevron-right mr-2">
					<input type="checkbox" name="doubleRoom" value="1" checked>더블룸</span>
					<span class="fa fa-chevron-right mr-2">
					<input type="checkbox" name="tripleRoom" value="2">트리플룸</span>
					</td>
					</tr>
					<tr>
					<th>시설정보</th>
					<td>
					<span class="fa fa-chevron-right mr-2">
					<input type="checkbox" name="parking" value="2">주차장</span> 
					<span class="fa fa-chevron-right mr-2">
					<input type="checkbox" name="wifi" value="2">wifi</span> 
					<span class="fa fa-chevron-right mr-2">
					<input type="checkbox" name="pet" value="2">애완동물동반가능여부</span>
					<span class="fa fa-chevron-right mr-2"> 
					<input type="checkbox" name="breakfast" value="2">조식</span> 
					<span class="fa fa-chevron-right mr-2">
					<input type="checkbox" name="pool" value="2">수영장</span>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">저장</button>
					<button type="button">취소</button>
				</td>
			</tr>
		</table>
	</form>
</main>


<!-- 폐기 이거 안 됨 <h5>숙소상세정보기입 * 상기객실개수받아표시</h5>
	<input type="text" id="roomCount" placeholder="객실개수">
	<button type="button" onclick="showAddRoomForm()">확인</button>
	<hr>
	<script>
		function showAddRoomForm() {
			let roomCount = parseInt(document.getElementById('roomCount').value);
			let form = document.querySelector('form');
			form.innerHTML = ''; 

			for (let i = 0; i < roomCount; i++) {
				let table = document.createElement('table');
				table.classList.add('table');
				
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

				tr = document.createElement('tr');
				th = document.createElement('th');
				th.textContent = 'roomId';
				td = document.createElement('td');
				input = document.createElement('input');
				input.type = 'text';
				input.name = 'roomId';
				td.appendChild(input);
				tr.appendChild(th);
				tr.appendChild(td);
				table.appendChild(tr);

				tr = document.createElement('tr');
				th = document.createElement('th');
				th.textContent = 'roomName';
				td = document.createElement('td');
				input = document.createElement('input');
				input.type = 'text';
				input.name = 'roomName';
				td.appendChild(input);
				tr.appendChild(th);
				tr.appendChild(td);
				table.appendChild(tr);

				tr = document.createElement('tr');
				th = document.createElement('th');
				th.textContent = 'roomPrice';
				td = document.createElement('td');
				input = document.createElement('input');
				input.type = 'text';
				input.name = 'roomPrice';
				td.appendChild(input);
				tr.appendChild(th);
				tr.appendChild(td);
				table.appendChild(tr);

				tr = document.createElement('tr');
				th = document.createElement('th');
				th.textContent = 'roomMax';
				td = document.createElement('td');
				input = document.createElement('input');
				input.type = 'text';
				input.name = 'roomMax';
				td.appendChild(input);
				tr.appendChild(th);
				tr.appendChild(td);
				table.appendChild(tr);

				tr = document.createElement('tr');
				th = document.createElement('th');
				th.textContent = 'roomMin';
				td = document.createElement('td');
				input = document.createElement('input');
				input.type = 'text';
				input.name = 'roomMin';
				td.appendChild(input);
				tr.appendChild(th);
				tr.appendChild(td);
				table.appendChild(tr);

				tr = document.createElement('tr');
				th = document.createElement('th');
				th.textContent = 'addPrice';
				td = document.createElement('td');
				input = document.createElement('input');
				input.type = 'text';
				input.name = 'addPrice';
				td.appendChild(input);
				tr.appendChild(th);
				tr.appendChild(td);
				table.appendChild(tr);
				
				form.appendChild(table);
				
			}
			
			let table = document.createElement('table');
			table.classList.add('table');
			let tr = document.createElement('tr');
			let td = document.createElement('td');
			let button = document.createElement('button');
			button.type = 'submit';
			button.innerText = '저장';
			td.appendChild(button);
			tr.appendChild(td);
/* 			table.appendChild(tr);

			tr = document.createElement('tr'); */
			td = document.createElement('td');
			button = document.createElement('button');
			button.type = 'button';
			button.innerText = '취소';
			td.appendChild(button);
			tr.appendChild(td);
			table.appendChild(tr);

			form.appendChild(table);

			form.style.display = 'block';
		}
	</script> -->

