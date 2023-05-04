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
	<c:forEach var="hotelList" items="${hotelList}">
		<table>
			<tr>
				<td rowspan="4"><img src="cssMainpage/images/${hotelList.hotelImage}" alt="hotelImage" width="200"></td>
				<td>
					<div style="margin: 10px;">
						<h3>${hotelList.hotelName}</h3>
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
				<td><button>수정</button></td>
			</tr>
		</table>
		<hr>
		</c:forEach>
	</div>

<!-- 리스트끝 -->
<div style="justify-content: center; margin: 10px;">
	<button>추가</button>
</div>

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
</main>