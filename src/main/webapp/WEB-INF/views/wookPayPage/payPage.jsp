<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>

<!-- 결제위젯 SDK 추가 -->
<script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<div>
	<h2 class="section-title">예약 정보</h2>
	<div class="untree_co-section">
		<div class="container">
			<div class="row">

				<div class="col-lg-7">
					<div class="owl-single dots-absolute owl-carousel">
						<img src="cssMainpage/images/${payInfo.hotelImage}"
							alt="Free HTML Template by Untree.co"
							class="img-fluid rounded-20">

						<c:if test="${roomImages != null}">
							<c:forEach var="image" items="${roomImages}">
								<img src="cssMainpage/images/${image.image }"
									alt="Free HTML Template by Untree.co"
									class="img-fluid rounded-20">
							</c:forEach>
						</c:if>
					</div>
				</div>

				<div class="col-lg-5 pl-lg-5 ml-auto">
					<h4 class="section-title mb-4">${payInfo.hotelName}</h4>
					<div id="map" style="width: 300px; height: 200px;"></div>
					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7eae01d716f4fe093b8a21de4c33a8dd&libraries=services"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667), // 지도의 중심좌표
							level : 3
						// 지도의 확대 레벨
						};

						// 지도를 생성합니다    
						var map = new kakao.maps.Map(mapContainer, mapOption);

						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();

						// 주소로 좌표를 검색합니다
						geocoder
								.addressSearch(
										'${payInfo.locationDetail}',
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
															content : '<div style="width:150px;text-align:center;padding:6px 0;">${payInfo.hotelName}</div>'
														});
												infowindow.open(map, marker);

												// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
												map.setCenter(coords);
											}
										});
					</script>
					<br> <br>
					<div class="row">
						<div class="col-12">
							<form class="" action="hotelListPage.do">
								<div class="row mb-2">

									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-5">
										<input type="text" class="form-control" name="daterange" id="resDate" required>
									</div>
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-3">
										<input type="text" class="form-control" name="people"
											placeholder="인원수" id ="people" required>
									</div>

								</div>
								<small id="emailHelp" class="form-text text-muted">반드시
									입력하시오!</small>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<ul class="list-unstyled two-col clearfix" style="text-align: center;">
		<li>지역&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp&nbsp${payInfo.hotelLocation1}
			/ ${payInfo.hotelLocation2}</li>
		<li>방이름&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp&nbsp${payInfo.roomName}</li>
		<li>숙소정보</li>
		<li>숙소정보</li>
	</ul>

</div>
<br>
<br>
<hr>
<br>
<br>
<div class="">
	<h2 class="section-title">결제 정보</h2>
	<div class="custom-block" data-aos="fade-up" data-aos-delay="100">
		<div class="form-group">
			<label class="text-black" for="select">보유 쿠폰</label> <select name=""
				id="selectCoupon" class="custom-select">
				<option value="사용안함">사용안함</option>
				<c:forEach var="coupon" items="${couponInfo}">
					<option value="${coupon.couponId }">${coupon.couponName }(할인가격 : ${coupon.salePri })</option>
					<p>${coupon.salePri }</p>
				</c:forEach>
			</select>

		</div>
		<form class="contact-form bg-white">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="fname">사용가능 마일리지</label> <input
							type="text" class="form-control" id="canUsePoint"
							value="${payMemberInfo.memberPoint }" readonly>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="lname">사용 마일리지</label> <input
							type="text" class="form-control" id="usePoint" value="0">
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="fname">체크인할 사람</label> <input
							type="text" class="form-control" id="checkInName"
							value="${payMemberInfo.memberName }">
					</div>
					<small id="emailHelp" class="form-text text-muted">예약자와
						달라도 가능합니다</small>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="lname">체크인할 사람 연락처</label> <input
							type="text" class="form-control" id="checkinPhone"
							value="${payMemberInfo.memberPhone  }">
					</div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="fname">기본 가격</label> <input
							type="text" class="form-control" id="fname"
							value='${payInfo.roomPrice }' readonly>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label class="text-black" for="lname">할인 가격</label> <input
							type="text" class="form-control" id="salePrice"
							value='${payInfo.roomPrice }' readonly>
					</div>
				</div>
			</div>
			<!-- 스크립트 -->
			<script>
				let resDate = document.getElementById('resDate');
				resDate.addEventListener('blur', function(){
					
				})

				let people = document.getElementById('people');
				people.addEventListener('blur', function(){
					console.log(people.value)
					console.log(resDate.value)
				})
		
			
				let salePrice = document.getElementById('salePrice');
				let selectCoupon = document.getElementById('selectCoupon');
				let usePoint = document.getElementById('usePoint');
				let canUsePoint = document.getElementById('canUsePoint');
				usePoint.addEventListener('blur',function(){
					if(${payMemberInfo.memberPoint }-usePoint.value>=0 ){

						if(${payInfo.roomPrice }-usePoint.value-selectCoupon.options[selectCoupon.selectedIndex].nextSibling.textContent>=0){
		
							canUsePoint.value = ${payMemberInfo.memberPoint }-usePoint.value
							salePrice.value = ${payInfo.roomPrice }-usePoint.value-selectCoupon.options[selectCoupon.selectedIndex].nextSibling.textContent
						}else{
							salePrice.value = 0;
							canUsePoint.value = ${payMemberInfo.memberPoint }-usePoint.value
						}

					}else {
						alert('초과된 마일리지입니다')
						usePoint.value = 0;
						canUsePoint.value = ${payMemberInfo.memberPoint }
						
					}

				
				})

				selectCoupon.addEventListener('blur',function(){

					console.log(selectCoupon.options[selectCoupon.selectedIndex].nextSibling.textContent)

					if(${payInfo.roomPrice }-usePoint.value-selectCoupon.options[selectCoupon.selectedIndex].nextSibling.textContent >= 0){
						salePrice.value = ${payInfo.roomPrice }-selectCoupon.options[selectCoupon.selectedIndex].nextSibling.textContent-usePoint.value
					}else{
						alert('할인금액이 결제금액 초과입니다')
						salePrice.value = 0
						
					}
				})

			</script>
			<!-- <div class="row">
			<div class="form-group">
				<label class="text-black" for="email">체크인할 사람</label> <input type="email" class="form-control" id="email"
					aria-describedby="emailHelp"> <small id="emailHelp" class="form-text text-muted">예약자와 달라도 가능합니다</small>
			</div>
			<div class="form-group">
				<label class="text-black" for="password">체크인할 사람 연락처</label> <input type="password" class="form-control"
					id="password">
			</div></div> -->
			<br> <br>
		</form>
	</div>

	<hr>
	<br style="height: 5px; background-color: navy;">
	<h2 class="section-title">결제 방식</h2>
	<!-- 토스 API -->

	<!-- 결제위젯, 이용약관 영역 -->
	<div id="payment-method"></div>
	<div id="agreement"></div>
	<!-- 결제하기 버튼 -->
	<button id="payment-button" class="btn btn-primary">결제하기</button>
	<script>
		const clientKey = "test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq"
		const customerKey = "a1pRlpisTn_HZ0tncCQ_B" // 내 상점의 고객을 식별하는 고유한 키
		const button = document.getElementById("payment-button")

		// ------  결제위젯 초기화 ------ 
		// 비회원 결제에는 customerKey 대신 ANONYMOUS를 사용하세요.
		const paymentWidget = PaymentWidget(clientKey, customerKey) // 회원 결제
		// const paymentWidget = PaymentWidget(clientKey, PaymentWidget.ANONYMOUS) // 비회원 결제

		// ------  결제위젯 렌더링 ------ 
		// 결제위젯이 렌더링될 DOM 요소를 지정하는 CSS 선택자 및 결제 금액을 넣어주세요. 
		// https://docs.tosspayments.com/reference/widget-sdk#renderpaymentmethods선택자-결제-금액
		paymentWidget.renderPaymentMethods("#payment-method", 15000)

		// ------  이용약관 렌더링 ------
		// 이용약관이 렌더링될 DOM 요소를 지정하는 CSS 선택자를 넣어주세요.
		// https://docs.tosspayments.com/reference/widget-sdk#renderagreement선택자
		paymentWidget.renderAgreement('#agreement')

		// ------ '결제하기' 버튼 누르면 결제창 띄우기 ------
		// 더 많은 결제 정보 파라미터는 결제위젯 SDK에서 확인하세요.
		// https://docs.tosspayments.com/reference/widget-sdk#requestpayment결제-정보
		button.addEventListener("click", function(event) {
			console.log(document.getElementById('people').value)
			if(document.getElementById('people').value == ""){
				alert('인원수를 입력해주세요')
				 return;
			}
			
			
			
			fetch("resCheck.do?roomId="+${payInfo.roomId}+"&date="+document.getElementById('resDate').value)
			.then(resolve => resolve.json())
			.then(result => {
				console.log(result)
				
			if(result>0){
					alert('예약이 이미 있는 날짜입니다')
					event.preventDefault();
				}else {
					let salePrice = document.getElementById('salePrice');
					let resPeopleSelect = document.getElementById('people');
					let resDate = document.getElementById('resDate');
					let checkinName = document.getElementById('checkInName');
					let checkinPhone = document.getElementById('checkinPhone');
					let selectCoupon = document.getElementById('selectCoupon');
					let canUsePoint = document.getElementById('canUsePoint');
					
					let memberIdData = '${payMemberInfo.memberId}';
					let hotelIdData = ${payInfo.hotelId};
					let roomIdData = ${payInfo.roomId}
					let finalPriceData = salePrice.value;
					let resPeopleData = resPeopleSelect.value;
					let resDateData = resDate.value;
					let checkinNameData = checkinName.value;
					let checkinPhoneData = checkinPhone.value;
					let canUsePointData = canUsePoint.value;

					let couponIdData = selectCoupon.options[selectCoupon.selectedIndex].value;
					let roomPriceData = ${payInfo.roomPrice} 

					/* PAY_ID	NUMBER 시퀀스
					MEMBER_ID	VARCHAR2(30 BYTE)  //
					ROOM_ID	NUMBER //
					COUPON_ID	NUMBER o
					RESERVE_ID	NUMBER select
					ROOM_PRICE	NUMBER o 
					PAY_WAY	VARCHAR2(30 BYTE) 쿼리에서 처리
					PAY_DATE	DATE sysdate
					PAY_STATUS	VARCHAR2(30 BYTE) 결제완료 */ 
					
					paymentWidget.requestPayment({
						orderId : "gD5iaJ9epuqS8vUAcisv8", // 주문 ID(직접 만들어주세요)
						orderName : "주문", // 주문명
						successUrl : "http://localhost:8081/MyProject/successPay.do?memberId="+memberIdData+"&hotelId="+hotelIdData+"&roomId="+roomIdData+"&finalPrice="+finalPriceData+"&resPeople="+resPeopleData+"&resDate="+resDateData+
						"&checkinName="+checkinNameData+"&checkinPhone="+checkinPhoneData+"&couponId="+couponIdData+"&roomPrice="+roomPriceData+"&canUsePoint="+canUsePointData,

						failUrl : "http://localhost:8081/MyProject/payPageForm.do", // 결제에 실패하면 이동하는 페이지(직접 만들어주세요)
						customerEmail : "customer123@gmail.com",
						customerName : "${payMemberInfo.memberName}"
					})
					
				}
			})
			
			
			
			
			/* RESERVATION_ID	NUMBER 시퀀스
			MEMBER_ID	VARCHAR2(30 BYTE) o
			HOTEL_ID	NUMBER o
			ROOM_ID	NUMBER o 
			FINAL_PRICE	NUMBER o
			RES_PEOPLE	NUMBER o
			CHECKIN_DATE	DATE o
			CHECKOUT_DATE	DATE o
			CHECKIN_NAME	VARCHAR2(20 BYTE) o
			CHECKIN_PHONE	VARCHAR2(50 BYTE) o
			RES_STATUS	VARCHAR2(50 BYTE) x
			COMPLETE_DATE	DATE */
			
		})
	</script>


	<!-- <div class="form-group">
				<label class="text-black" for="message">결제</label>
				<textarea name="" class="form-control" id="message" cols="30" rows="5"></textarea>
			</div> -->









</div>

