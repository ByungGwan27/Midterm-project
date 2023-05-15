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
			</style>
			
	<!-- list -->
	<main id="main" class="main">
	<div style="justify-content: center;">
	
	<div style="justify-content: center; margin: 10px;">
	<a href="adminAddHotelForm.do"><button>추가</button></a>
</div>
<hr>
	<c:forEach var="adminHotelList" items="${adminHotelList}">
		<table>
			<tr>
				<td rowspan="4"><img src="cssMainpage/images/${adminHotelList.hotelImage}" alt="hotelImage" width="200"></td>
				<td>
					<div style="margin: 10px;">
						<h3>${adminHotelList.hotelName}</h3>
					</div>
				</td>
				<td><div style="width: 200px;"></div></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>			
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td><a href="adminHotelInfoPage.do?hotelId=${adminHotelList.hotelId}"><button>확인</button></a></td>
			</tr>
		</table>
		<hr>
		</c:forEach>
	</div>

<!-- 리스트끝 -->


<!-- 페이징 20*10 -->
<div class="center">
	<div class="pagination">
		<c:if test="${pageInfo.prev}">
			<a href="adminHotelList.do?page=${pageInfo.startPage-1}">Previous</a>
		</c:if>
		<c:forEach var="i" begin="${pageInfo.startPage}"
			end="${pageInfo.endPage}">
			<a class="${i==pageInfo.pageNum ? 'active' : ''}"
				href="adminHotelList.do?page=${i}">${i}</a>
		</c:forEach>
		<c:if test="${pageInfo.next}">
			<a href="adminHotelList.do?page=${pageInfo.endPage+1}">Next</a>
		</c:if>
	</div>
</div>

</main>