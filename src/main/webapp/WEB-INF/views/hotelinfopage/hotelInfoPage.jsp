<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.rate {
	background:
		url(https://aldo814.github.io/jobcloud/html/images/user/star_bg02.png)
		no-repeat;
	width: 121px;
	height: 20px;
	position: relative;
}

.rate span {
	position: absolute;
	background:
		url(https://aldo814.github.io/jobcloud/html/images/user/star02.png);
	width: auto;
	height: 20px;
}
</style>

<!DOCTYPE html>
<!-- 숙소대표정보 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row" style="justify-content: center;">
			<img src="cssMainpage/images/${hotelInfo.hotelImage}" alt="test"
				width="800">
			<div style="margin: 10px;">
				<div id="hotelinfo">
					<table>
						<tr>
							<td colspan="2"><h3>${hotelInfo.hotelName}</h3></td>
							<td rowspan="5">
								<!-- 지도를 표시할 div 입니다 -->
								<div id="map" style="width: 500px; height: 400px;"></div> <script
									type="text/javascript"
									src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7eae01d716f4fe093b8a21de4c33a8dd&libraries=services"></script>
								<script>
									var mapContainer = document
											.getElementById('map'), // 지도를 표시할 div 
									mapOption = {
										center : new kakao.maps.LatLng(
												33.450701, 126.570667), // 지도의 중심좌표
										level : 3
									// 지도의 확대 레벨
									};

									// 지도를 생성합니다    
									var map = new kakao.maps.Map(mapContainer,
											mapOption);

									// 주소-좌표 변환 객체를 생성합니다
									var geocoder = new kakao.maps.services.Geocoder();

									// 주소로 좌표를 검색합니다
									geocoder
											.addressSearch(
													'${hotelInfo.locationDetail}',
													function(result, status) {

														// 정상적으로 검색이 완료됐으면 
														if (status === kakao.maps.services.Status.OK) {

															var coords = new kakao.maps.LatLng(
																	result[0].y,
																	result[0].x);

															// 결과값으로 받은 위치를 마커로 표시합니다
															var marker = new kakao.maps.Marker(
																	{
																		map : map,
																		position : coords
																	});

															// 인포윈도우로 장소에 대한 설명을 표시합니다
															var infowindow = new kakao.maps.InfoWindow(
																	{
																		content : '<div style="width:150px;text-align:center;padding:6px 0;">${hotelInfo.hotelName}</div>'
																	});
															infowindow
																	.open(map,
																			marker);

															// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
															map
																	.setCenter(coords);
														}
													});
								</script>
							</td>
						</tr>
						<tr>
							<td colspan="2">별점 : ${hotelInfo.avgpoint}
								<div class="rate">
									<span style="width: ${hotelInfo.avgstar}%;"></span>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2">후기1</td>
						</tr>
						<tr>
							<td colspan="2">후기2</td>
						</tr>
						<tr>
							<td>left달력</td>
							<td>right달력</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- 숙소세부객실리스트 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-6">
				<h2 class="section-title text-center mb-3">해당숙소세부객실리스트</h2>
				<p>최대인원클릭시 인원수정보, 인원추가에따른금액안내</p>
			</div>
		</div>
		<div class="row"
			style="display: flex; justify-content: center; align-items: center;">
			<c:if test="${empty roomList}">
				<p>객실 정보가 없습니다.</p>
			</c:if>
			<c:forEach var="roomList" items="${roomList}">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"> <img
							src="images/${roomList.image}" alt="Image" class="img-fluid"></a>
						<div class="d-flex align-items-center">
							<div id="roomList">
								<h3>
									<a href="#">${roomList.roomName} ${roomList.roomGrade}</a>
								</h3>
								<div class="price ml-auto">
									<span>최대인원 ${roomList.roomMax}</span><br> <span>시설정보
										${roomList.roomExpain}</span><br> <span>가격
										${roomList.roomPrice}</span><br>
									<button
										onclick="location.href='payPageForm.do?roomId=${roomList.roomId}&memberId=${id}'">예약</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<!-- 숙소세부객실리스트끝 -->

<!-- 시설정보, 유의사항, 환불안내, 정책 -->
<!-- 시설정보 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-10">
				<h2 class="section-title text-center mb-3">시설정보</h2>
			</div>
				<ul class="list-unstyled one-col text-center">
					<c:forEach var="roomDetailList" items="${roomDetailList}">
						<c:if test="${roomDetailList.parking eq 1 && !previousParking}">
							<li class="d-inline-block">주차장</li>
							<c:set var="previousParking" value="true" />
						</c:if>
						<c:if test="${roomDetailList.wifi eq 1 && !previousWifi}">
							<li class="d-inline-block">WIFI</li>
							<c:set var="previousWifi" value="true" />
						</c:if>
						<c:if test="${roomDetailList.pet eq 1 && !previousPet}">
							<li class="d-inline-block">애완동물동반가능</li>
							<c:set var="previousPet" value="true" />
						</c:if>
						<c:if test="${roomDetailList.pool eq 1 && !previousPool}">
							<li class="d-inline-block">수영장</li>
							<c:set var="previousPool" value="true" />
						</c:if>
						<c:if
							test="${roomDetailList.breakfast eq 1 && !previousBreakfast}">
							<li class="d-inline-block">조식제공</li>
							<c:set var="previousBreakfast" value="true" />
						</c:if>
					</c:forEach>
				</ul>
		</div>
	</div>
</div>


<!-- 유의사항 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-10">
				<h2 class="section-title text-center mb-3">유의사항</h2>
			</div>
			<ul class="list-unstyled one-col clearfix">
				<li class="d-inline-block">신분증 지참 필수</li>
				<li class="d-inline-block">미성년자 출입 불가</li>
				<li class="d-inline-block">투숙객 외 입실 불가</li>
				<li class="d-inline-block">전 객실 금연</li>
			</ul>
		</div>
	</div>
</div>


<!-- 환불안내 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-10">
				<h2 class="section-title text-center mb-3">환불안내</h2>
			</div>
			<ul class="list-unstyled one-col clearfix">
				<li>환불안내</li>
				<li>환불안내</li>
				<li>환불안내</li>
				<li>환불안내</li>
				<li>환불안내</li>
				<li>환불안내</li>
				<li>환불안내</li>
			</ul>
		</div>
	</div>
</div>


<!-- 정책 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-10">
				<h2 class="section-title text-center mb-3">정책</h2>
			</div>
			<ul class="list-unstyled one-col clearfix">
				<li>정책</li>
				<li>정책</li>
				<li>정책</li>
				<li>정책</li>
				<li>정책</li>
				<li>정책</li>
				<li>정책</li>
				<li>정책</li>
			</ul>
		</div>
	</div>
</div>

<!-- 시설정보, 유의사항, 환불안내, 정책 끝-->

<!-- 후기 평점 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-6">
				<h2 class="section-title text-center mb-3">후기 평점</h2>
				<p>후기 답글 보류</p>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th>No.</th>
						<th>평점</th>
						<th>내용</th>
						<th>작성자</th>
						<th>작성날짜</th>
						<th>방문날짜</th>
					</tr>
				</thead>
				<tbody id="tlist">
					<!-- 리뷰내용 -->
					<c:if test="${empty reviewList}">
						<tr>
							<td colspan="6">
								<p>리뷰 정보가 없습니다.</p>
							</td>
						</tr>
					</c:if>

					<c:forEach var="reviewList" items="${reviewList}">
						<tr>
							<td>${reviewList.reviewId}</td>
							<td>${reviewList.reviewPoint}</td>
							<td>${reviewList.reviewContent}</td>
							<td>${reviewList.memberId}</td>
							<td>${reviewList.wirteDate}</td>
							<td>${reviewList.checkinDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- 후기 평점끝 -->

<!-- 비슷한숙소 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-6">
				<h2 class="section-title text-center mb-3">비슷한 추천 숙소</h2>

			</div>
		</div>
		<div class="row"
			style="display: flex; justify-content: center; align-items: center; margin-bottom: 20px;">
			<c:if test="${empty similarList}">
				<p>호텔 정보가 없습니다.</p>
			</c:if>
			<c:forEach var="similarList" items="${similarList}">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a
							href="hotelInfoPage.do?hotelLocation1=${similarList.hotelLocation1}&hotelId=${similarList.hotelId}"
							class="d-block mb-3"> <img
							src="cssMainpage/images/${similarList.hotelImage}"
							alt="hotelImage" class="img-fluid"></a>
						<div class="d-flex align-items-center">
							<div>
								<h3>
									<a href="#">상호명 : ${similarList.hotelName}</a>
								</h3>
								<div class="price ml-auto">
									<span class="icon-room mr-3"></span><span>${similarList.hotelLocation1}
										${similarList.hotelLocation2}</span><br> <span>가격
										${similarList.roomPrice}</span> <br> <span><a
										href="hotelInfoPage.do?hotelLocation1=${similarList.hotelLocation1}&hotelId=${similarList.hotelId}"><button>예약</button></a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

<!-- 비슷한숙소끝 -->

<script>
	/* let showFields = ['roomName', 'roomGrade', 'roomMax','roomExpain','roomPrice'];
	 let xhtp = new XMLHttpRequest(); // Ajax호출
	 xhtp.open('get', 'hotelInfoPageRoom.do?hotelId=${hotelInfo.hotelId}'); //get 방식일때 replyList.do 페이지 호출
	 xhtp.send();

	 xhtp.onload = function() {
	 console.log(xhtp.response);
	 let roomList = document.querySelector('#roomList');
	 //목록생성.
	 let data = JSON.parse(xhtp.response) 
	 for (let roomList of data) { // 데이터 전부 가져오는 거ㅇㅇ
	 console.log(roomList);
	 //let tr = makeTrFunc(roomList); //reply가 매개값으로 들어옴ㅇㅇ
	 roomList.append(div);
	 }
	 }
	 */
</script>