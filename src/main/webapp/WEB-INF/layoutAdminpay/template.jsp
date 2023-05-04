<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- /*
* Template Name: Tour
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="cssMainpage/favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="cssMainpage/css/bootstrap.min.css">
<link rel="stylesheet" href="cssMainpage/css/owl.carousel.min.css">
<link rel="stylesheet" href="cssMainpage/css/owl.theme.default.min.css">
<link rel="stylesheet" href="cssMainpage/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="cssMainpage/fonts/icomoon/style.css">
<link rel="stylesheet" href="cssMainpage/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="cssMainpage/css/daterangepicker.css">
<link rel="stylesheet" href="cssMainpage/css/aos.css">
<link rel="stylesheet" href="cssMainpage/css/style.css">

<title>Traveller</title>
</head>

<body>

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<!-- Navigation-->
	<tiles:insertAttribute name="nav"></tiles:insertAttribute>

	<div class="untree_co-section">
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

				<div
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
					</div>

				</div>

			</div>
		</div>
	</div>

	<div class="untree_co-section count-numbers py-5">
		<div class="container">
			<div class="row">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="9313">0</span>
						</div>
						<span class="caption">No. of Travels</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="8492">0</span>
						</div>
						<span class="caption">No. of Clients</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="100">0</span>
						</div>
						<span class="caption">No. of Employees</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="120">0</span>
						</div>
						<span class="caption">No. of Countries</span>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h2 class="section-title text-center">Popular Destination</h2>
				</div>
			</div>

			<div class="owl-carousel owl-3-slider">

				<div class="item">
					<a class="media-thumb" href="cssMainpage/images/hero-slider-1.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>Pragser Wildsee</h3>
							<span class="location">Italy</span>
						</div> <img src="cssMainpage/images/hero-slider-1.jpg" alt="Image" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" href="cssMainpage/images/hero-slider-2.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>Oia</h3>
							<span class="location">Greece</span>
						</div> <img src="cssMainpage/images/hero-slider-2.jpg" alt="Image" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" href="cssMainpage/images/hero-slider-3.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>Perhentian Islands</h3>
							<span class="location">Malaysia</span>
						</div> <img src="cssMainpage/images/hero-slider-3.jpg" alt="Image" class="img-fluid">
					</a>
				</div>


				<div class="item">
					<a class="media-thumb" href="cssMainpage/images/hero-slider-4.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>Rialto Bridge</h3>
							<span class="location">Italy</span>
						</div> <img src="cssMainpage/images/hero-slider-4.jpg" alt="Image" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" href="cssMainpage/images/hero-slider-5.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>San Francisco, United States</h3>
							<span class="location">United States</span>
						</div> <img src="cssMainpage/images/hero-slider-5.jpg" alt="Image" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" href="cssMainpage/images/hero-slider-1.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>Lake Thun</h3>
							<span class="location">Switzerland</span>
						</div> <img src="cssMainpage/images/hero-slider-2.jpg" alt="Image" class="img-fluid">
					</a>
				</div>

			</div>

		</div>
	</div>


	<div class="untree_co-section testimonial-section mt-5">
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
	</div>


	<div class="untree_co-section">
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
	</div>

	<div class="untree_co-section">
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
	</div>

	<!-- Footer-->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>

	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

	<script src="cssMainpage/js/jquery-3.4.1.min.js"></script>
	<script src="cssMainpage/js/popper.min.js"></script>
	<script src="cssMainpage/js/bootstrap.min.js"></script>
	<script src="cssMainpage/js/owl.carousel.min.js"></script>
	<script src="cssMainpage/js/jquery.animateNumber.min.js"></script>
	<script src="cssMainpage/js/jquery.waypoints.min.js"></script>
	<script src="cssMainpage/js/jquery.fancybox.min.js"></script>
	<script src="cssMainpage/js/aos.js"></script>
	<script src="cssMainpage/js/moment.min.js"></script>
	<script src="cssMainpage/js/daterangepicker.js"></script>

	<script src="cssMainpage/js/typed.js"></script>
	<script>
		$(function() {
			var slides = $('.slides'),
			images = slides.find('img');
			
			images.each(function(i) {
				$(this).attr('data-id', i + 1);
			})
			
			var typed = new Typed('.typed-words', {
				strings: ["San Francisco."," Paris."," New Zealand.", " Maui.", " London."],
				typeSpeed: 80,
				backSpeed: 80,
				backDelay: 4000,
				startDelay: 1000,
				loop: true,
				showCursor: true,
				preStringTyped: (arrayPos, self) => {
					arrayPos++;
					console.log(arrayPos);
					$('.slides img').removeClass('active');
					$('.slides img[data-id="'+arrayPos+'"]').addClass('active');
				}
				
			});
		})
	</script>

	<script src="cssMainpage/js/custom.js"></script>

</body>

</html>