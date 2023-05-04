<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 숙소대표정보 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row" style="justify-content: center;">
			<img src="cssMainpage/images/slider-5.jpg" alt="test" width="800">
			<div style="margin: 10px;">
				<table border="1">
					<tr>
						<td>
							<h3>상호명</h3>
						</td>
						<td rowspan="5">
							<!-- 지도를 표시할 div 입니다 -->
							<div id="map" style="width: 500px; height:400px;"></div>

							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7eae01d716f4fe093b8a21de4c33a8dd"></script>
							<script>
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
									mapOption = {
										center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
										level: 3 // 지도의 확대 레벨
									};

								// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
								var map = new kakao.maps.Map(mapContainer, mapOption);
							</script>
						</td>
					</tr>
					<tr>
						<td>평가</td>

					</tr>
					<tr>
						<td>후기정보1</td>

					</tr>
					<tr>
						<td>후기정보2</td>

					</tr>
					<tr>
						<td>
							<!-- 달력? -->
							<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-5">
								<input type="text" class="form-control" name="daterange">
							</div>
						</td>

					</tr>
				</table>
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
		<div class="row" style="display: flex; justify-content: center; align-items: center;">
			<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
				<div class="media-1">
					<a href="#" class="d-block mb-3"><img src="cssMainpage/images/hero-slider-1.jpg" alt="Image"
							class="img-fluid"></a>
					<div class="d-flex align-items-center">
						<div>
							<h3>
								<a href="#">룸명(호수, 객실등급)</a>
							</h3>
							<div class="price ml-auto">
								<span>최대인원</span><br> <span>시설정보</span><br> <span>가격</span><br>
								<button>예약</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
				<div class="media-1">
					<a href="#" class="d-block mb-3"><img src="cssMainpage/images/hero-slider-1.jpg" alt="Image"
							class="img-fluid"></a>
					<div class="d-flex align-items-center">
						<div>
							<h3>
								<a href="#">룸명(호수, 객실등급)</a>
							</h3>
							<div class="price ml-auto">
								<span>최대인원</span><br> <span>시설정보</span><br> <span>가격</span><br>
								<button>예약</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
				<div class="media-1">
					<a href="#" class="d-block mb-3"><img src="cssMainpage/images/hero-slider-1.jpg" alt="Image"
							class="img-fluid"></a>
					<div class="d-flex align-items-center">
						<div>
							<h3>
								<a href="#">룸명(호수, 객실등급)</a>
							</h3>
							<div class="price ml-auto">
								<span>최대인원</span><br> <span>시설정보</span><br> <span>가격</span><br>
								<button>예약</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 숙소세부객실리스트끝 -->

<!-- 시설정보, 유의사항, 환불안내, 정책 -->
<!-- 시설정보 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-6">
				<h2 class="section-title text-center mb-3">시설정보</h2>
				<p>시설정보</p>
			</div>
			<ul class="list-unstyled two-col clearfix">
				<li>Outdoor recreation activities</li>
				<li>Airlines</li>
				<li>Car Rentals</li>
				<li>Cruise Lines</li>
				<li>Hotels</li>
				<li>Railways</li>
				<li>Travel Insurance</li>
				<li>Package Tours</li>
				<li>Insurance</li>
				<li>Guide Books</li>
			</ul>
		</div>
	</div>
</div>
</div>

<!-- 유의사항 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-6">
				<h2 class="section-title text-center mb-3">유의사항</h2>
				<p>유의사항</p>
			</div>
			<ul class="list-unstyled two-col clearfix">
				<li>Outdoor recreation activities</li>
				<li>Airlines</li>
				<li>Car Rentals</li>
				<li>Cruise Lines</li>
				<li>Hotels</li>
				<li>Railways</li>
				<li>Travel Insurance</li>
				<li>Package Tours</li>
				<li>Insurance</li>
				<li>Guide Books</li>
			</ul>
		</div>
	</div>
</div>
</div>

<!-- 환불안내 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-6">
				<h2 class="section-title text-center mb-3">환불안내</h2>
				<p>환불안내</p>
			</div>
			<ul class="list-unstyled two-col clearfix">
				<li>Outdoor recreation activities</li>
				<li>Airlines</li>
				<li>Car Rentals</li>
				<li>Cruise Lines</li>
				<li>Hotels</li>
				<li>Railways</li>
				<li>Travel Insurance</li>
				<li>Package Tours</li>
				<li>Insurance</li>
				<li>Guide Books</li>
			</ul>
		</div>
	</div>
</div>
</div>

<!-- 정책 -->
<div class="untree_co-section">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-lg-6">
				<h2 class="section-title text-center mb-3">정책</h2>
				<p>정책</p>
			</div>
			<ul class="list-unstyled two-col clearfix">
				<li>Outdoor recreation activities</li>
				<li>Airlines</li>
				<li>Car Rentals</li>
				<li>Cruise Lines</li>
				<li>Hotels</li>
				<li>Railways</li>
				<li>Travel Insurance</li>
				<li>Package Tours</li>
				<li>Insurance</li>
				<li>Guide Books</li>
			</ul>
		</div>
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
						<th>닉네임</th>
						<th>작성날짜</th>
						<th>방문날짜</th>
					</tr>
				</thead>
				<tbody id="tlist">
					<tr>
						<!-- 댓글내용 -->
					</tr>
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
				<p>같은 지역, 비슷한 가격대(+-5만원) / 없으면 출력x </p>
			</div>
		</div>
		<div class="row" style="display: flex; justify-content: center; align-items: center;">
			<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
				<div class="media-1">
					<a href="#" class="d-block mb-3"><img src="cssMainpage/images/hero-slider-1.jpg" alt="Image"
							class="img-fluid"></a>
					<div class="d-flex align-items-center">
						<div>
							<h3>
								<a href="#">상호명</a>
							</h3>
							<div class="price ml-auto">
								<span class="icon-room mr-3"></span> <span>지역</span><br> <span>가격</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
				<div class="media-1">
					<a href="#" class="d-block mb-3"><img src="cssMainpage/images/hero-slider-2.jpg" alt="Image"
							class="img-fluid"></a>
					<div class="d-flex align-items-center">
						<div>
							<h3>
								<a href="#">상호명</a>
							</h3>
							<div class="price ml-auto">
								<span class="icon-room mr-3"></span> <span>지역</span><br> <span>가격</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"><img src="cssMainpage/images/hero-slider-3.jpg" alt="Image" class="img-fluid"></a>
						<div class="d-flex align-items-center">
							<div>
								<h3><a href="#">상호명</a></h3>
								<div class="price ml-auto">
								<span class="icon-room mr-3"></span>
								<span>지역</span><br>
								<span>가격</span>
								</div>
							</div>
						</div>
					</div>
				</div>-->
			<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
				<div class="media-1">
					<a href="#" class="d-block mb-3"><img src="cssMainpage/images/hero-slider-4.jpg" alt="Image"
							class="img-fluid"></a>
					<div class="d-flex align-items-center">
						<div>
							<h3>
								<a href="#">상호명</a>
							</h3>
							<div class="price ml-auto">
								<span class="icon-room mr-3"></span> <span>지역</span><br> <span>가격</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 비슷한숙소끝 -->