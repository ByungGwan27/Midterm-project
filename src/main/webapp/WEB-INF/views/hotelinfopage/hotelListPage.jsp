<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.center {
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}

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

<div class="row">
	<!-- 사이드바 -->
	<nav id="sidebar">
		<div class="p-4 pt-5" style="width: 280px;">
			<h5>Categories</h5>
			<ul class="list-unstyled components mb-5">
				<li><a href="#pageSubmenu1" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">지역</a>
					<ul class="collapse list-unstyled" id="pageSubmenu1">
						<!--	<li><a href="#pageSubmenu6" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">서울특별시</a> -->
						<!-- <ul class="collapse list-unstyled" id="pageSubmenu6"> -->
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서울특별시</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>부산광역시</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>대구광역시</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>인천광역시</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>광주광역시</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>대전광역시</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>울산광역시</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>세종특별자치시</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>경기도</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>강원도</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>충청북도</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>충청남도</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>전라북도</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>전라남도</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>경상북도</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>경상남도</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>제주특별자치도</a></li>
						<!-- <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>금천구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영등포구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동작구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>관악구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서초구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>강남구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>송파구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>강동구</a></li>
							</ul></li>
						<li><a href="#pageSubmenu7" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">부산광역시</a>
							<ul class="collapse list-unstyled" id="pageSubmenu7">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>중구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영도구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>부산진구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동래구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>남구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>북구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>해운대구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>사하구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>금정구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>강서구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>연제구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>수영구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>사상구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>기장구</a></li>
							</ul></li>
						<li><a href="#pageSubmenu8" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">대구광역시</a>
							<ul class="collapse list-unstyled" id="pageSubmenu8">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>중구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>남구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>북구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>수성구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>달서구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>달성군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu9" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">인천광역시</a>
							<ul class="collapse list-unstyled" id="pageSubmenu9">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>중구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>미추홀구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>연수구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>남동구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>부평구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>계양구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>강화군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>옹진군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu10" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">광주광역시</a>
							<ul class="collapse list-unstyled" id="pageSubmenu10">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>남구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>북구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>광산구</a></li>
							</ul></li>
						<li><a href="#pageSubmenu11" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">대전광역시</a>
							<ul class="collapse list-unstyled" id="pageSubmenu11">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>중구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>유성구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>대덕구</a></li>
							</ul></li>
						<li><a href="#pageSubmenu12" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">울산광역시</a>
							<ul class="collapse list-unstyled" id="pageSubmenu12">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>중구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>남구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>북구</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>울주군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu13" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">세종특별자치시</a>
							<ul class="collapse list-unstyled" id="pageSubmenu13">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>반곡동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>소담동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>보람동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>대평동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>가람동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>한솔동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>나성동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>새롬동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>다정동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>어진동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>종촌동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>고운동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>아름동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>도담동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>산울동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>합감동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>집현동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>세종동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>누리동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>한별동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>다솜동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>용호동</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>조치원읍</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>연기면</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>연동면</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>부강면</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>금남면</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>장군면</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>연서면</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>전의면</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>전동면</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>소정면</a></li>
							</ul></li>
						<li><a href="#pageSubmenu14" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">경기도</a>
							<ul class="collapse list-unstyled" id="pageSubmenu14">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>수원시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>성남시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>의정부시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>안양시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>부천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>광명시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>평택시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동두천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>안산시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>고양시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>과천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>구리시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>남양주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>오산시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>시흥시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>군포시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>의왕시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>하남시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>용인시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>파주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>이천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>안성시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>김포시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>화성시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>광주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>양주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>포천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>여주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>연천군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>가평군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>양평군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu15" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">강원도</a>
							<ul class="collapse list-unstyled" id="pageSubmenu15">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>춘천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>원주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>강릉시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>동해시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>태백시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>속초시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>삼척시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>홍천군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>횡성군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영월군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>평창군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>정선군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>철원군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>화천군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>양구군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>인제군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>고성군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>양양군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu16" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">충청북도</a>
							<ul class="collapse list-unstyled" id="pageSubmenu16">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>청주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>충주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>제천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>보은군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>옥천군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영동군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>증평군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>진천군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>괴산군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>음성군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>단양군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu17" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">충청남도</a>
							<ul class="collapse list-unstyled" id="pageSubmenu17">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>천안시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>공주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>보령시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>아산시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서산시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>논산시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>계룡시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>당진시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>금산군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>부여군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서천군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>청양군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>홍성군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>예산군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>태안군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu18" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">전라북도</a>
							<ul class="collapse list-unstyled" id="pageSubmenu18">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>전주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>군산시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>익산시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>정읍시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>남원시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>김제시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>완주군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>진안군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>무주군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>장수군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>임실군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>순창군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>고창군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>부안군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu19" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">전라남도</a>
							<ul class="collapse list-unstyled" id="pageSubmenu19">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>목포시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>여수시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>순천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>나주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>광양시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>담양군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>곡성군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>구례군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>고흥군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>보성군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>화순군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>장흥군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>강진군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>해남군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영암군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>무안군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>함평군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영광군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>장성군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>완도군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>진도군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>신안군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu20" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">경상북도</a>
							<ul class="collapse list-unstyled" id="pageSubmenu20">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>포항시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>경주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>김천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>안동시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>구미시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>상주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>문경시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>경산시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>군의군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>의성군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>청송군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영양군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>영덕군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>청도군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>고령군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>성주군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>칠곡군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>예천군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>봉화군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>울진군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>울릉군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu21" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">경상남도</a>
							<ul class="collapse list-unstyled" id="pageSubmenu21">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>창원시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>진주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>통영시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>사천시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>김해시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>밀양시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>거제시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>양산시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>의령군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>함안군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>창녕군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>고성군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>남해군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>하동군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>산청군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>함양군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>거창군</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>합천군</a></li>
							</ul></li>
						<li><a href="#pageSubmenu22" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">제주특별자치도</a>
							<ul class="collapse list-unstyled" id="pageSubmenu22">
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>제주시</a></li>
								<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>서귀포시</a></li> 
							</ul>
						</li>-->

					</ul></li>
				<li><a href="#pageSubmenu2" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">가격</a>
					<ul class="collapse list-unstyled" id="pageSubmenu2">
						<li>
							<div class="form-group d-flex">
								<div class="slidecontainer">
									<input type="range" min="10000" max="900000" value="50"
										class="slider" id="myRange">
								</div>
							</div>
						</li>
						<li><div class="mb-5">
								<form action="#" class="subscribe-form">
									<div class="form-group d-flex">
										<!-- <div class="icon"><span class="icon-paper-plane"></span></div> -->
										<input type="text" placeholder="가격입력">
									</div>
								</form>
							</div></li>
						<!-- 						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Football</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Jordan</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Lifestyle</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Running</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Soccer</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Sports</a></li> -->
					</ul></li>
				<li><a href="#pageSubmenu3" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">테마(숙소종류)</a>
					<ul class="collapse list-unstyled" id="pageSubmenu3">
						<!-- <li><div class="mb-5">
                    <form action="#" class="subscribe-form">
                      <div class="form-group d-flex">
                        <input type="checkbox">테마(숙소종류)1<br>
                        <input type="checkbox">테마(숙소종류)2<br>
                        <input type="checkbox">테마(숙소종류)3<br>
                        <input type="checkbox">테마(숙소종류)4<br>
                        <input type="checkbox">테마(숙소종류)5<br>
                        <div class="icon"><span class="icon-paper-plane"></span></div>
                        <input type="text" class="form-control" placeholder="Enter Email Address">
                      </div>
                    </form>
                  </div></li> -->
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">호텔</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">펜션</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">게스트하우스</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">테마(숙소종류)4</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">테마(숙소종류)5</li>
					</ul></li>
				<li><a href="#pageSubmenu4" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">편의시설</a>
					<ul class="collapse list-unstyled" id="pageSubmenu4">
						<!-- <li><div class="mb-5">
                    <form action="#" class="subscribe-form">
                      <div class="form-group d-flex">
                        <input type="checkbox">편의시설1<br>
                        <input type="checkbox">편의시설2<br>
                        <input type="checkbox">편의시설3<br>
                        <input type="checkbox">편의시설4<br>
                        <input type="checkbox">편의시설5
                        <div class="icon"><span class="icon-paper-plane"></span></div>
                        <input type="text" class="form-control" placeholder="Enter Email Address">
                      </div>
                    </form>
                  </div></li> -->
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">편의시설1</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">주차장</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">wifi</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">애완동물동반</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">조식</li>
						<li><span class="fa fa-chevron-right mr-2"></span><input
							type="checkbox">수영장</li>
					</ul></li>
				<li><a href="#pageSubmenu5" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">최대인원</a>
					<ul class="collapse list-unstyled" id="pageSubmenu5">
						<li>
							<div class="mb-5">
								<form action="#" class="subscribe-form">
									<div class="form-group d-flex">
										<!-- <div class="icon"><span class="icon-paper-plane"></span></div> -->
										<input type="text" placeholder="인원입력">
									</div>
								</form>
							</div>
						</li>
					</ul></li>
			</ul>
			<!-- <div class="mb-5">
              <h5>Tag Cloud</h5>
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">dish</a>
                <a href="#" class="tag-cloud-link">menu</a>
                <a href="#" class="tag-cloud-link">food</a>
                <a href="#" class="tag-cloud-link">sweet</a>
                <a href="#" class="tag-cloud-link">tasty</a>
                <a href="#" class="tag-cloud-link">delicious</a>
                <a href="#" class="tag-cloud-link">desserts</a>
                <a href="#" class="tag-cloud-link">drinks</a>
              </div>
            </div> -->
			<!-- <div class="mb-5">
              <h5>Newsletter</h5>
              <form action="#" class="subscribe-form">
                <div class="form-group d-flex">
                  <div class="icon"><span class="icon-paper-plane"></span></div>
                  <input type="text" class="form-control" placeholder="Enter Email Address">
                </div>
              </form>
            </div>-->
		</div>
	</nav>
	<!-- 사이드바끝 -->

	<!-- list -->
	<div style="justify-content: center;">
		<p align="right">
			<a href="#">높은가격순</a> / <a href="#">낮은가격순</a> / <a href="#">이름순</a> /
			<a href="#">인기순</a>
		</p>
		<hr>
		<c:if test="${empty hotelList}">
			<p>호텔 정보가 없습니다.</p>
		</c:if>
		<c:forEach var="hotelList" items="${hotelList}">
			<div style="width:800px">
				<table border="1">
					<tr>
						<td rowspan="4">
							<div style="margin: 10px; width: 205px;">
								<img src="cssMainpage/images/${hotelList.hotelImage}"
									alt="hotelImage" width="200">
							</div>
						</td>
						<td>
							<h3>${hotelList.hotelName}</h3>
						</td>
						<td>${hotelList.hotelThema}</td>
						<td rowspan="4"><div style="width: 200px;"></div></td>
						<td>
							<div>후기개수 : ${hotelList.rcount}</div>
						</td>
						<td></td>
					</tr>
					<tr>
						<td>평점 : ${hotelList.avgpoint}
							<div class="rate">
								<span style="width: ${hotelList.avgstar}%;"></span>
							</div>
						</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>${hotelList.hotelLocation1}${hotelList.hotelLocation2}</td>
						<td></td>
						<td><h4>${hotelList.roomPrice}</h4></td>
						<td><button>
								<a href="hotelInfoPage.do?hotelLocation1=${hotelList.hotelLocation1}&hotelId=${hotelList.hotelId}">예약</a>
							</button></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>할인적용가</td>
						<td></td>
					</tr>
				</table>
			</div>
			<hr>
		</c:forEach>
		<!-- 리스트끝 -->

		<!-- 페이징 20*10 -->
		<div class="center">
			<div class="pagination">
				<c:if test="${pageInfo.prev}">
					<a href="noticeList.do?page=${pageInfo.startPage-1}">Previous</a>
				</c:if>
				<c:forEach var="i" begin="${pageInfo.startPage}"
					end="${pageInfo.endPage}">
					<a class="${i==pageInfo.pageNum ? 'active' : ''}"
						href="noticeList.do?page=${i}">${i}</a>
				</c:forEach>
				<c:if test="${pageInfo.next}">
					<a href="noticeList.do?page=${pageInfo.endPage+1}">Next</a>
				</c:if>
			</div>
		</div>
	</div>
</div>



