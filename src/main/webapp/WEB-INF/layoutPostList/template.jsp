<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE html>
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
            <!-- Navigation-->
           	<tiles:insertAttribute name="nav"></tiles:insertAttribute>
            <!-- Header-->
           <tiles:insertAttribute name="body"></tiles:insertAttribute>
      
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

  <script src="cssMainpage/js/custom.js"></script>


</html>