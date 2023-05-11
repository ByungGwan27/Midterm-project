<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="untree_co-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-7">
				<div class="owl-single dots-absolute owl-carousel">
					<img src="assets/img/slides-1.jpg"
						alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
					<img src="assets/img/slides-2.jpg"
						alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
					<img src="assets/img/slides-3.jpg"
						alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
					<img src="assets/img/slides-2.jpg"
						alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
					<img src="assets/img/slides-1.jpg"
						alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
				</div>
			</div>
			<div class="col-lg-5 pl-lg-5 ml-auto">
				<h4 class="section-title mb-4">상호명</h4>
				<div id="map" style="width: 300px; height: 200px;"></div> <script
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
								<div class="row">
										<form>
													<input type="text" class="form-control" name="daterange">
										</form>
								</div>
				<p>날짜, 지도 api</p>
				<ul class="list-unstyled two-col clearfix">
					<li>지역</li>
					<li>인원</li>
					<li>호수</li>
					<li>날짜</li>
					<li>숙소정보</li>
					<li>숙소정보</li>
				</ul>
			</div>
		</div>
	</div>
</div>




<div class="">
	<div class="custom-block" data-aos="fade-up" data-aos-delay="100">
		<h2 class="section-title">결제 정보</h2>
		<div class="form-group">
			<label class="text-black" for="select">보유 쿠폰</label> <select name=""
				id="select" class="custom-select">
				<option value="">사용안함</option>
				<option value="">쿠폰1</option>
				<option value="">쿠폰2</option>
			</select>

		</div>
		<form class="contact-form bg-white">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="fname">현재 마일리지</label> <input
							type="text" class="form-control" id="fname" value="20000">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="lname">사용 마일리지</label> <input
							type="text" class="form-control" id="lname">
					</div>
				</div>
			</div>
			<div class="row">
				
					<label class="control control--checkbox"> <span
						class="caption">기본 정보</span> <input type="checkbox"
						checked="checked" />
						<div class="control__indicator"></div>
					</label>
					<p>&nbsp&nbsp&nbsp&nbsp&nbsp</p>
					
					<label class="control control--checkbox"> <span
						class="caption">추가 정보</span> <input type="checkbox"
						checked="checked" />
						<div class="control__indicator"></div>
					</label>
				
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="fname">체크인할 사람</label> <input
							type="text" class="form-control" id="fname" value="예약자">
					</div>
					<small id="emailHelp" class="form-text text-muted">예약자와 달라도
						가능합니다</small>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="lname">체크인할 사람 연락처</label> <input
							type="text" class="form-control" id="lname">
					</div>
				</div>
			</div>
			<!-- <div class="row">
			<div class="form-group">
				<label class="text-black" for="email">체크인할 사람</label> <input type="email" class="form-control" id="email"
					aria-describedby="emailHelp"> <small id="emailHelp" class="form-text text-muted">예약자와 달라도 가능합니다</small>
			</div>
			<div class="form-group">
				<label class="text-black" for="password">체크인할 사람 연락처</label> <input type="password" class="form-control"
					id="password">
			</div></div> -->
			<h3>결제수단 API</h3>
			<!-- <div class="form-group">
				<label class="text-black" for="message">결제</label>
				<textarea name="" class="form-control" id="message" cols="30" rows="5"></textarea>
			</div> -->


			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>





</div>
