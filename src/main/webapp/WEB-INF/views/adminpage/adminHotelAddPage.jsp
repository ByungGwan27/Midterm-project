<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main id="main" class="main">
	<h3>addHOTELformpage</h3>
	<h5>숙소추가</h5>
	<form action="adminAddHotelPage.do" method="post"
		enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>메인이미지</th>
				<td><input type="file" name="hotelImage"></td>
			</tr>
			<tr>
				<th>hotelId</th>
				<td><input type="text" id="hotelId" name="hotelId">
					<button type="button" id="checkId1" onclick="checkHotelId()">중복검사</button>
				</td>
			</tr>
			<tr>
				<th>상호명</th>
				<td><input type="text" name="hotelName"></td>
			</tr>
			<tr>
				<th>숙소테마</th>
				<td><select name="hotelThema">
						<option value="">선택</option>
						<option value="호텔">호텔</option>
						<option value="모텔">모텔</option>
						<option value="펜션">펜션</option>
						<option value="게스트하우스">게스트하우스</option>
						<option value="기타">기타</option>
				</select></td>
			</tr>
			<tr>
				<th>위치1(시도)</th>
				<td><input type="text" name="hotelLocation1"></td>
			</tr>
			<tr>
				<th>위치2(시군구)</th>
				<td><input type="text" name="hotelLocation2"></td>
			</tr>
			<tr>
				<th>locationDetail</th>
				<td><input type="text" name="locationDetail"></td>
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
function checkHotelId(){
    fetch("hotelIdRead.do")
    .then(response => response.json())
    .then(result => {
        //console.log(result); 
        
        let hotelId = document.getElementById("hotelId").value;
        for(let i = 0; i < result.length; i++){
            let checkId = result[i].hotelId;
            if(hotelId == checkId){
                alert("중복된 HotelId");
                document.getElementById("hotelId").focus();
                document.getElementById("hotelId").value = '';
                return;
            }
        }
        alert("사용가능");
        document.getElementById('checkId1').setAttribute("disabled", "disabled");
    });
}
</script>