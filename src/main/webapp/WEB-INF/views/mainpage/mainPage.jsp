<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<% 
   int memCount = (int) request.getAttribute("memberCount"); 
   int resCount = (int) request.getAttribute("reservationCount"); 
   int hotCount = (int) request.getAttribute("hotelCount"); 
   int revCount = (int) request.getAttribute("reviewCount"); 
   
   String[] resName = new String[6];
   String[] resId = new String [6];
   String[] resLocation = new String[6];
   String[] resImage = new String[6];
   
   for(int i= 0; i<=5;i++){
	  resId[i] =""+ (request.getAttribute("orderHotelId"+i));
	  resName[i] =(String) request.getAttribute("orderHotelName"+i);
	  resLocation[i] =(String) request.getAttribute("orderHotelLocation"+i);
	  resImage[i] = (String) request.getAttribute("orderHotelImage"+i);
   }
%>

<!-- div class="untree_co-section">
		<div class="container">
			<div class="row mb-5 justify-content-center">
				<div class="col-lg-6 text-center">
					<h2 class="section-title text-center mb-3">Our Services</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in Bookmarksgrove right at the coast of the
						Semantics, a large language ocean.</p>
				</div>
			</div>
			<div class="row align-items-stretch">
				<div class="col-lg-4 order-lg-1">
					<div class="h-100">
						<div class="frame h-100">
							<div class="feature-img-bg h-100"
								style="background-image: url('cssMainpage/images/hero-slider-1.jpg');"></div>
						</div>
					</div>
				</div>
 -->
				<!-- <div
					class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-1">

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-house display-4 text-primary"></span>
							<h3>Beautiful Condo</h3>
							<p class="mb-0">Even the all-powerful Pointing has no control
								about the blind texts.</p>
						</div>
					</div>

					<div class="feature-1 ">
						<div class="align-self-center">
							<span class="flaticon-restaurant display-4 text-primary"></span>
							<h3>Restaurants & Cafe</h3>
							<p class="mb-0">Even the all-powerful Pointing has no control
								about the blind texts.</p>
						</div>
					</div>

				</div>

				<div
					class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-3">

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-mail display-4 text-primary"></span>
							<h3>Easy to Connect</h3>
							<p class="mb-0">Even the all-powerful Pointing has no control
								about the blind texts.</p>
						</div>
					</div>

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-phone-call display-4 text-primary"></span>
							<h3>24/7 Support</h3>
							<p class="mb-0">Even the all-powerful Pointing has no control
								about the blind texts.</p>
						</div>
					</div> -->


	<div class="untree_co-section count-numbers py-5">
		<div class="container">
			<div class="row">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="<%=memCount %>" id="memberCount">0</span>
						</div>
						<span class="caption">총 회원 수</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="<%=resCount%>">0</span>
						</div>
						<span class="caption">총 예약건수</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="<%=hotCount%>">0</span>
						</div>
						<span class="caption">총 등록숙소 수</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="<%=revCount%>">0</span>
						</div>
						<span class="caption">총 후기 수</span>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h2 class="section-title text-center">추천 숙소</h2>
				</div>
			</div>

			<div class="owl-carousel owl-3-slider">

				<div class="item">
					<a class="media-thumb" onclick="location.href='hotelInfoPage.do?hotelId=<%=resId[0] %>&hotelLocation1=<%=resLocation[0] %>'"
						>
						<div class="media-text">
							<h3><%=resName[0] %></h3>
							<span class="location"><%=resLocation[0] %></span><br>
							<span class="location">예약 1위</span>
						</div> <img src="images/<%=resImage[0] %>" alt="Image" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" onclick="location.href='hotelInfoPage.do?hotelId=<%=resId[1] %>&hotelLocation1=<%=resLocation[1] %>'"
						>
						<div class="media-text">
							<h3><%=resName[1] %></h3>
							<span class="location"><%=resLocation[1] %></span><br>
							<span class="location">예약 2위</span>
						</div> <img src="images/<%=resImage[1] %>" alt="Image" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" onclick="location.href='hotelInfoPage.do?hotelId=<%=resId[2] %>&hotelLocation1=<%=resLocation[2] %>'"
						>
						<div class="media-text">
							<h3><%=resName[2] %></h3>
							<span class="location"><%=resLocation[2] %></span><br>
							<span class="location">후기수 1위</span>
						</div> <img src="images/<%=resImage[2] %>" alt="Image" class="img-fluid">
					</a>
				</div>


				<div class="item">
					<a class="media-thumb" onclick="location.href='hotelInfoPage.do?hotelId=<%=resId[3] %>&hotelLocation1=<%=resLocation[3] %>'"
						>
						<div class="media-text">
							<h3><%=resName[3] %></h3>
							<span class="location"><%=resLocation[3] %></span><br>
							<span class="location">후기수 2위</span>
						</div> <img src="images/<%=resImage[3] %>" alt="Image" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" onclick="location.href='hotelInfoPage.do?hotelId=<%=resId[4] %>&hotelLocation1=<%=resLocation[4] %>'"
						>
						<div class="media-text">
							<h3><%=resName[4] %></h3>
							<span class="location"><%=resLocation[4] %></span><br>
							<span class="location">평점순 1위</span>
						</div> <img src="images/<%=resImage[4] %>" alt="Image" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" onclick="location.href='hotelInfoPage.do?hotelId=<%=resId[5] %>&hotelLocation1=<%=resLocation[5] %>'"
						>
						<div class="media-text">
							<h3><%=resName[5] %></h3>
							<span class="location"><%=resLocation[5] %></span><br>
							<span class="location">평점순 2위</span>
						</div> <img src="images/<%=resImage[5] %>" alt="Image" class="img-fluid">
					</a>
				</div>

			</div>

		</div>
	</div>


	<!-- <div class="untree_co-section testimonial-section mt-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7 text-center">
					<h2 class="section-title text-center mb-5">Testimonials</h2>

					<div class="owl-single owl-carousel no-nav">
						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="cssMainpage/images/person_2.jpg" alt="Image" class="img-fluid">
							</figure>
							<h3 class="name">Adam Aderson</h3>
							<blockquote>
								<p>&ldquo;There live the blind texts. Separated they live in
									Bookmarksgrove right at the coast of the Semantics, a large
									language ocean.&rdquo;</p>
							</blockquote>
						</div>

						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="cssMainpage/images/person_3.jpg" alt="Image" class="img-fluid">
							</figure>
							<h3 class="name">Lukas Devlin</h3>
							<blockquote>
								<p>&ldquo;There live the blind texts. Separated they live in
									Bookmarksgrove right at the coast of the Semantics, a large
									language ocean.&rdquo;</p>
							</blockquote>
						</div>

						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="cssMainpage/images/person_4.jpg" alt="Image" class="img-fluid">
							</figure>
							<h3 class="name">Kayla Bryant</h3>
							<blockquote>
								<p>&ldquo;There live the blind texts. Separated they live in
									Bookmarksgrove right at the coast of the Semantics, a large
									language ocean.&rdquo;</p>
							</blockquote>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div> -->


	<!-- <div class="untree_co-section">
		<div class="container">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-lg-6">
					<h2 class="section-title text-center mb-3">Special Offers
						&amp; Discounts</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in Bookmarksgrove right at the coast of the
						Semantics, a large language ocean.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"><img
							src="cssMainpage/images/hero-slider-1.jpg" alt="Image" class="img-fluid"></a>
						<span class="d-flex align-items-center loc mb-2"> <span
							class="icon-room mr-3"></span> <span>Italy</span>
						</span>
						<div class="d-flex align-items-center">
							<div>
								<h3>
									<a href="#">Rialto Mountains</a>
								</h3>
								<div class="price ml-auto">
									<span>$520.00</span>
								</div>
							</div>

						</div>

					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"><img
							src="cssMainpage/images/hero-slider-2.jpg" alt="Image" class="img-fluid"></a>
						<span class="d-flex align-items-center loc mb-2"> <span
							class="icon-room mr-3"></span> <span>United States</span>
						</span>
						<div class="d-flex align-items-center">
							<div>
								<h3>
									<a href="#">San Francisco</a>
								</h3>
								<div class="price ml-auto">
									<span>$520.00</span>
								</div>
							</div>

						</div>

					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"><img
							src="cssMainpage/images/hero-slider-3.jpg" alt="Image" class="img-fluid"></a>
						<span class="d-flex align-items-center loc mb-2"> <span
							class="icon-room mr-3"></span> <span>Malaysia</span>
						</span>
						<div class="d-flex align-items-center">
							<div>
								<h3>
									<a href="#">Perhentian Islands</a>
								</h3>
								<div class="price ml-auto">
									<span>$750.00</span>
								</div>
							</div>

						</div>

					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"><img
							src="cssMainpage/images/hero-slider-4.jpg" alt="Image" class="img-fluid"></a>

						<span class="d-flex align-items-center loc mb-2"> <span
							class="icon-room mr-3"></span> <span>Switzerland</span>
						</span>

						<div class="d-flex align-items-center">
							<div>
								<h3>
									<a href="#">Lake Thun</a>
								</h3>
								<div class="price ml-auto">
									<span>$520.00</span>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div> -->

	<!-- <div class="untree_co-section">
		<div class="container">
			<div class="row justify-content-between align-items-center">

				<div class="col-lg-6">
					<figure class="img-play-video">
						<a id="play-video" class="video-play-button"
							href="https://www.youtube.com/watch?v=mwtbEGNABWU" data-fancybox>
							<span></span>
						</a>
						<img src="cssMainpage/images/hero-slider-2.jpg" alt="Image"
							class="img-fluid rounded-20">
					</figure>
				</div>

				<div class="col-lg-5">
					<h2 class="section-title text-left mb-4">Take a look at Tour
						Video</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in Bookmarksgrove right at the coast of the
						Semantics, a large language ocean.</p>

					<p class="mb-4">A small river named Duden flows by their place
						and supplies it with the necessary regelialia. It is a
						paradisematic country, in which roasted parts of sentences fly
						into your mouth.</p>

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

					<p>
						<a href="#" class="btn btn-primary">Get Started</a>
					</p>


				</div>
			</div>
		</div>
	</div> -->
	<script>
		let fancy = document.getElementsByClassName('fancybox-content');
		for(let f of fancy){
			console.log(f)
		}
	</script>