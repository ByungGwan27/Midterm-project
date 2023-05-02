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
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="cssSearchPage/css/bootstrap.min.css">
  <link rel="stylesheet" href="cssSearchPage/css/owl.carousel.min.css">
  <link rel="stylesheet" href="cssSearchPage/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="cssSearchPage/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="cssSearchPage/fonts/icomoon/style.css">
  <link rel="stylesheet" href="cssSearchPage/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="cssSearchPage/css/daterangepicker.css">
  <link rel="stylesheet" href="cssSearchPage/css/aos.css">
  <link rel="stylesheet" href="cssSearchPage/css/style.css">

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

  <tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
  <div class="untree_co-section">
    <div class="container">
      <div class="row">
  <tiles:insertAttribute name="body"></tiles:insertAttribute>
</div>
</div>
</div>

  <tiles:insertAttribute name="footer"></tiles:insertAttribute>

  <script src="cssSearchPage/js/jquery-3.4.1.min.js"></script>
  <script src="cssSearchPage/js/popper.min.js"></script>
  <script src="cssSearchPage/js/bootstrap.min.js"></script>
  <script src="cssSearchPage/js/owl.carousel.min.js"></script>
  <script src="cssSearchPage/js/jquery.animateNumber.min.js"></script>
  <script src="cssSearchPage/js/jquery.waypoints.min.js"></script>
  <script src="cssSearchPage/js/jquery.fancybox.min.js"></script>
  <script src="cssSearchPage/js/aos.js"></script>
  <script src="cssSearchPage/js/moment.min.js"></script>
  <script src="cssSearchPage/js/daterangepicker.js"></script>

  <script src="cssSearchPage/js/typed.js"></script>
  
  <script src="cssSearchPage/js/custom.js"></script>

</body>

</html>
