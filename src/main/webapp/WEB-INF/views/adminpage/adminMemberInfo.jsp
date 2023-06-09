<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main id="main" class="main">

	<div class="pagetitle">
		<h1>Profile</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="adminPage.do">관리자 페이지</a></li>
				<li class="breadcrumb-item active">회원정보</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->

	<section class="section profile">
		<div class="row">
			<div class="col-xl-4">

				<div class="card">
					<div
						class="card-body profile-card pt-4 d-flex flex-column align-items-center">
						<c:if test="${memberInfo.memberProfile == null}">
							<img src="assets/img/관리자.png" alt="Profile"
								class="rounded-circle">
						</c:if>
						<c:if test="${memberInfo.memberProfile != null}">
							<img src="images/${memberInfo.memberProfile }" alt="Profile"
								class="rounded-circle">
						</c:if>
						<h2>${memberInfo.memberName}</h2>
						<!-- <div class="social-links mt-2">
                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
              </div> -->
					</div>
				</div>

			</div>

			<div class="col-xl-8">

				<div class="card">
					<div class="card-body pt-3">
						<!-- Bordered Tabs -->
						<ul class="nav nav-tabs nav-tabs-bordered">

							<li class="nav-item">
								<button class="nav-link active" data-bs-toggle="tab"
									data-bs-target="#profile-overview">회원정보</button>
							</li>

							<li class="nav-item">
								<button class="nav-link" data-bs-toggle="tab"
									data-bs-target="#profile-edit">회원 수정</button>
							</li>

							<!-- <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-settings">Settings</button>
                </li> -->

							<!--          <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
                </li> -->

						</ul>
						<div class="tab-content pt-2">

							<div class="tab-pane fade show active profile-overview"
								id="profile-overview">
								<!--  <h5 class="card-title">About</h5>
                  <p class="small fst-italic">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</p>
 -->
								<h5 class="card-title">회원정보</h5>

								<div class="row">
									<div class="col-lg-3 col-md-4 label ">회원이름</div>
									<div class="col-lg-9 col-md-8">${memberInfo.memberName}</div>
								</div>

								<div class="row">
									<div class="col-lg-3 col-md-4 label">회원아이디</div>
									<div class="col-lg-9 col-md-8">${memberInfo.memberId}</div>
								</div>

								<div class="row">
									<div class="col-lg-3 col-md-4 label">회원닉네임</div>
									<div class="col-lg-9 col-md-8">${memberInfo.memberNickname}</div>
								</div>

								<div class="row">
									<div class="col-lg-3 col-md-4 label">회원 등급</div>
									<div class="col-lg-9 col-md-8">${memberInfo.memberGrade}</div>
								</div>

								<div class="row">
									<div class="col-lg-3 col-md-4 label">가입날짜</div>
									<div class="col-lg-9 col-md-8">${memberInfo.memberJoindate}</div>
								</div>

								<div class="row">
									<div class="col-lg-3 col-md-4 label">연락처</div>
									<div class="col-lg-9 col-md-8">${memberInfo.memberPhone}</div>
								</div>

								<div class="row">
									<div class="col-lg-3 col-md-4 label">이메일</div>
									<div class="col-lg-9 col-md-8">${memberInfo.memberEmail}</div>
								</div>

							</div>

							<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

								<!-- Profile Edit Form -->
								<form action="adminModifyMember.do">
									<%-- <div class="row mb-3">
										<label for="profileImage"
											class="col-md-4 col-lg-3 col-form-label">프로필 사진</label>
										<div class="col-md-8 col-lg-9">
											<c:if test="${memberInfo.memberProfile == null}">
												<img src="assets/img/관리자.png" alt="Profile"
													class="rounded-circle">
											</c:if>
											<c:if test="${memberInfo.memberProfile != null}">
												<img src="${memberInfo.memberProfile }" alt="Profile"
													class="rounded-circle">
											</c:if>
											<div class="pt-2">
												<a href="#" class="btn btn-primary btn-sm"
													title="Upload new profile image"><i
													class="bi bi-upload"></i></a>
													<c:if test="${memberInfo.memberProfile != null}">
													 <a href="#"
													class="btn btn-danger btn-sm"
													title="Remove my profile image"><i class="bi bi-trash"></i></a>
													</c:if>
											</div>
										</div>
									</div> --%>

									<div class="row mb-3">
										<label for="fullName" class="col-md-4 col-lg-3 col-form-label">회원
											아이디</label>
										<div class="col-md-8 col-lg-9">
											<input name="memberId" type="text" class="form-control"
												id="memberId" value="${memberInfo.memberId}" readonly>
										</div>
									</div>

									<div class="row mb-3">
										<label for="fullName" class="col-md-4 col-lg-3 col-form-label">회원
											비밀번호</label>
										<div class="col-md-8 col-lg-9">
											<input name="memberPw" type="text" class="form-control"
												id="memberPw" value="${memberInfo.memberPw}">
										</div>
									</div>

									<!-- <div class="row mb-3">
                      <label for="about" class="col-md-4 col-lg-3 col-form-label">회원 비밀번호</label>
                      <div class="col-md-8 col-lg-9">
                        <textarea name="about" class="form-control" id="about" style="height: 100px">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</textarea>
                      </div>
                    </div> -->
									<div class="row mb-3">
										<label for="company" class="col-md-4 col-lg-3 col-form-label">회원이름</label>
										<div class="col-md-8 col-lg-9">
											<input name="memberName" type="text" class="form-control"
												id="memberName" value="${memberInfo.memberName}">
										</div>
									</div>


									<div class="row mb-3">
										<label for="company" class="col-md-4 col-lg-3 col-form-label">이메일</label>
										<div class="col-md-8 col-lg-9">
											<input name="memberEmail" type="text" class="form-control"
												id="memberEmail" value="${memberInfo.memberEmail}">
										</div>
									</div>

									<div class="row mb-3">
										<label for="Job" class="col-md-4 col-lg-3 col-form-label">전화번호</label>
										<div class="col-md-8 col-lg-9">
											<input name="memberPhone" type="text" class="form-control"
												id="memberPhone" value="${memberInfo.memberPhone}">
										</div>
									</div>

									<div class="row mb-3">
										<label for="Country" class="col-md-4 col-lg-3 col-form-label">활동상태</label>
										<div class="col-md-8 col-lg-9">
											<select name="memberStatus" type="text" class="form-control"
												id="memberStatus ">
												<option value="${memberInfo.memberStatus}" selected>${memberInfo.memberStatus}</option>
												<c:if test="${memberInfo.memberStatus == '탈퇴회원'}">
													<option value="활동중">활동중</option>
												</c:if>
												<c:if test="${memberInfo.memberStatus == '활동중'}">
													<option value="탈퇴회원">탈퇴회원</option>
												</c:if>
											</select>
										</div>
									</div>

									<div class="row mb-3">
										<label for="Address" class="col-md-4 col-lg-3 col-form-label">닉네임</label>
										<div class="col-md-8 col-lg-9">
											<input name="memberNickname" type="text" class="form-control"
												id="memberNickname" value="${memberInfo.memberNickname}">
										</div>
									</div>

									<div class="row mb-3">
										<label for="Phone" class="col-md-4 col-lg-3 col-form-label">포인트</label>
										<div class="col-md-8 col-lg-9">
											<input name="memberPoint" type="text" class="form-control"
												id="memberPoint" value="${memberInfo.memberPoint}">
										</div>
									</div>

									<div class="row mb-3">
										<label for="Country" class="col-md-4 col-lg-3 col-form-label">관심테마</label>
										<div class="col-md-8 col-lg-9">
											<select name="memberThema" type="text" class="form-control"
												id="memberThema " value="${memberInfo.memberThema}">
													<option value="${memberInfo.memberThema}" selected>현재 : ${memberInfo.memberThema}</option>
													<option value="호텔">호텔</option>
													<option value="모텔">모텔</option>
													<option value="펜션">펜션</option>
													<option value="게스트하우스">게스트하우스</option>
													<option value="기타">기타</option>
											</select>
										</div>
									</div>

									<div class="row mb-3">
										<label for="Twitter" class="col-md-4 col-lg-3 col-form-label">가입
											날짜</label>
										<div class="col-md-8 col-lg-9">
											<input name="memberJoindate" type="text" class="form-control"
												id="memberJoindate" value="${memberInfo.memberJoindate}">
										</div>
									</div>

									<div class="row mb-3">
										<label for="Twitter" class="col-md-4 col-lg-3 col-form-label">주민번호
											7자리</label>
										<div class="col-md-8 col-lg-9">
											<input name="memberBirth" type="text" class="form-control"
												id="memberBirth" value="${memberInfo.memberBirth}">
										</div>
									</div>
									<div class="row mb-3">
										<label for="Country" class="col-md-4 col-lg-3 col-form-label">관심테마</label>
										<div class="col-md-8 col-lg-9">
											<select name="memberGrade" type="text" class="form-control"
												id="memberThema " value="${memberInfo.memberGrade}">
													<option value="${memberInfo.memberGrade}" selected>현재 : ${memberInfo.memberGrade}</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4(인플루언서)</option>
													<option value="5">5(관리자)</option>
											</select>
										</div>
									</div>



									<div class="text-center">
										<button type="submit" class="btn btn-primary">회원 수정</button>
										<%-- <button type="button" class="btn btn-primary" id="delbtn"
											onclick="location.href='adminDelMember.do?id=${memberInfo.memberId}'">회원
											탈퇴</button> --%>
									</div>
								</form>
								<!-- End Profile Edit Form -->

							</div>

							<!--  <div class="tab-pane fade pt-3" id="profile-settings">

                  <!-- Settings Form
                  <form>

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Email Notifications</label>
                      <div class="col-md-8 col-lg-9">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="changesMade" checked>
                          <label class="form-check-label" for="changesMade">
                            Changes made to your account
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="newProducts" checked>
                          <label class="form-check-label" for="newProducts">
                            Information on new products and services
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="proOffers">
                          <label class="form-check-label" for="proOffers">
                            Marketing and promo offers
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="securityNotify" checked disabled>
                          <label class="form-check-label" for="securityNotify">
                            Security alerts
                          </label>
                        </div>
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Save Changes</button>
                      
                    </div>
                  </form>End settings Form

                </div> -->

							<!--  <div class="tab-pane fade pt-3" id="profile-change-password">
                  Change Password Form
                  <form>

                    <div class="row mb-3">
                      <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="password" type="password" class="form-control" id="currentPassword">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="newpassword" type="password" class="form-control" id="newPassword">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="renewpassword" type="password" class="form-control" id="renewPassword">
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Change Password</button>
                    </div>
                  </form>End Change Password Form

                </div>

              </div>End Bordered Tabs -->

						</div>
					</div>

				</div>
			</div>
	</section>

</main>
