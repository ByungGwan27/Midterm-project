<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<h3>여행 포스트 상세 페이지</h3>
		<div class="row gx-4 gx-lg-5 align-items-center">

			
				<table class="table">
					<tr>
						<td>${postmain.postTitle }</td>
						<tr>
						<td>${postmain.memberNickName }</td>
						</tr>
					<tr>
						<td><img src="cssPostList/images/${postmain.postImages }"
							class="testimonial-img" alt=""></td>

					</tr>

					<tr>
						<td colspan="3">${postmain.postContent }</td>
					</tr>
				</table>

		</div>
	</div>
</section>