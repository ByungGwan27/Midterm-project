<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main id="main" class="main">
	<h3>addroompage</h3>
	<h5>숙소객실추가</h5>
	<form action="adminAddRoomPage.do" method="POST" enctype="multipart/form-data">
		<table class='table'>
		<tr>
				<th>이미지Id</th>
				<td><input type="text" id="imageId" name="imageId">
				<button type="button" id="checkId2" onclick="checkImageId()">중복검사</button></td>
				
			</tr>
			<tr>
				<th>객실이미지</th>
				<td><input type="file" name="image">
				</td>
			</tr>
			<tr>
				<th>hotelId</th>
				<td><input type="text" name="hotelId" value="${adminAddRoom.hotelId}" readonly></td>
			</tr>
			<tr>
				<th>객실ID</th>
				<td><input type="text" id="roomId" name="roomId">
				<button type="button" id="checkId3" onclick="checkRoomId()">중복검사</button></td>
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
					<input type="radio" name="roomType" value="singleRoom">싱글룸</span>
					<span class="fa fa-chevron-right mr-2">
					<input type="radio" name="roomType" value="twinRoom">트윈룸</span>
					<span class="fa fa-chevron-right mr-2">
					<input type="radio" name="roomType" value="doubleRoom"checked>더블룸</span>
					<span class="fa fa-chevron-right mr-2">
					<input type="radio" name="roomType" value="tripleRoom">트리플룸</span>
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

<script>

	
function checkImageId(){
	//let roomId = document.getElementById("imageId").value;

	fetch("imageIdRead.do")
	.then(response => response.json())
	.then(result => {
		let imageId = document.getElementById("imageId");
		for(let i in result){
			let checkId = Object.keys(result[i])[0];
			if(imageId.value == checkId){
				alert("중복된 imageId");
				 document.getElementById("imageId").focus();
			   document.getElementById("imageId").value = '';
				return;
			}else{
				alert("사용가능");
				document.getElementById('checkId2').setAttribute("disabled","disabled");
				return;
			}
		}
	})
}
function checkRoomId(){
	//let roomId = document.getElementById("roomId").value;
	
	fetch("roomIdRead.do")
	.then(response => response.json())
	.then(result => {
		let roomId = document.getElementById("roomId");
		for(let i in result){
			let checkId = Object.keys(result[i])[0];
			if(roomId.value == checkId){
				alert("중복된 roomId");
				 document.getElementById("roomId").focus();
			   document.getElementById("roomId").value = '';
				return;
			}else{
				alert("사용가능");
				document.getElementById('checkId3').setAttribute("disabled","disabled");
				return;
			}
		}
		
	})
}

</script>

