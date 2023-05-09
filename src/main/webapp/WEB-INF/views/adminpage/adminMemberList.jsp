<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main id="main" class="main">

	<div class="pagetitle">
		<h1>회원관리</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="adminPage.do">관리자 페이지</a></li>
				<li class="breadcrumb-item active">회원관리</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->

	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">회원목록</h5>

						<!-- Table with stripped rows -->
						<table class="table datatable">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">회원아이디</th>
									<th scope="col">회원이름</th>
									<th scope="col">회원닉네임</th>
									<th scope="col">회원등급</th>
									<th scope="col">활동상태</th>

								</tr>
							</thead>
							<tbody id="tbody">
								<c:forEach var="member" items="${allMemberInfo}">
									<tr class='member'>
										<th scope="row"></th>
										<td>${member.memberId}</td>
										<td>${member.memberName}</td>
										<td>${member.memberNickname}</td>
										<td>${member.memberGrade}</td>
										<td>${member.memberStatus}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<!-- End Table with stripped rows -->

					</div>
				</div>

			</div>
		</div>
	</section>

</main>
<script>
document.addEventListener('DOMContentLoaded', function(){
	
	let mem = document.querySelectorAll("table tbody tr");
	console.log(mem)
	mem.forEach(function(mem) {
		mem.addEventListener("dblclick", function() {
			location.href = "adminMemberInfo.do?id="+this.children[1].innerText;
		})

	})
})
	
	// 	let tr = document.getElementById("member");
	// 	let table =document.getElementById("member").parentElement;
	// 	fetch("allMemberList.do")
	// 	.then(resolve => resolve.json())
	// 	.then(result => {
	// 		allMemberInfo = result;
	// 		for(let member of allMemberInfo){
	// 			let clone = tr.cloneNode(true);
	// 			console.log(clone);
	// 			clone.childNodes[1].innerHTML = member.MemberId;
	// 			clone.childNodes[2].innerHTML = member.MemberName;
	// 			clone.childNodes[3].innerHTML = member.MemberNickname;
	// 			clone.childNodes[4].innerHTML = member.MemberGrade;
	// 			clone.childNodes[5].innerHTML = member.MemberStatus;
				
	// 			table.append(clone);
		
	// 	}
	// })

</script>

