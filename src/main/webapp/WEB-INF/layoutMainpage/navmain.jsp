<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- 5.11 강병관 nav 영역 분리 작업 -->
<div class="hero">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-7">
				<div class="intro-wrap">
					<h1 class="mb-5">
						<span class="d-block">Let's Enjoy Your</span> Trip In <span
							class="typed-words"></span>
					</h1>

					<div class="row">
						<div class="col-12">
							<form class="form">
								<div class="row mb-2">
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
										<select name="" id="" class="form-control custom-select">
											<option value="">서울특별시</option>
											<option value="">부산광역시</option>
											<option value="">대구광역시</option>
											<option value="">인천광역시</option>
											<option value="">광주광역시</option>
											<option value="">대전광역시</option>
											<option value="">울산광역시</option>
											<option value="">세종특별자치시</option>
											<option value="">경기도</option>
											<option value="">강원도</option>
											<option value="">충청북도</option>
											<option value="">충청남도</option>
											<option value="">전라북도</option>
											<option value="">전라남도</option>
											<option value="">경상북도</option>
											<option value="">경상남도</option>
											<option value="">제주특별자치도</option>
										</select>
									</div>
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-5">
										<input type="text" class="form-control" name="daterange">
									</div>
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-3">
										<input type="text" class="form-control" placeholder="인원수">
									</div>

								</div>
								<div class="row align-items-center">
									<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
										<input type="submit" class="btn btn-primary btn-block"
											value="검색">
									</div>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="slides" style="height: 705px;">
					<img src="cssMainpage/images/jeju.jpg" alt="Image"
						class="img-fluid active" style="height: 705px;"> <img
						src="cssMainpage/images/busan.jpg" alt="Image" class="img-fluid"
						style="height: 705px;"> <img
						src="cssMainpage/images/Gyeongju.jpg" alt="Image"
						class="img-fluid" style="height: 705px;"> <img
						src="cssMainpage/images/Seoul.jpg" alt="Image" class="img-fluid"
						style="height: 705px;"> <img
						src="cssMainpage/images/Jeonju.jpg" alt="Image" class="img-fluid"
						style="height: 705px;">
				</div>
			</div>
		</div>
	</div>
</div>