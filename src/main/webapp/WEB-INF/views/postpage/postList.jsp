<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
 <header class="py-5">
                <div class="container px-5">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-xxl-6">
                            <div class="text-center my-5">
                                <h1 class="fw-bolder mb-3">여행 포스트 페이지입니다.</h1>
                                <p class="lead fw-normal text-muted mb-4">놀러가고 싶죠? 저두요</p>
                                <a class="btn btn-primary btn-lg" href="#scroll-target">Read our story</a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- About section one-->
            <section class="py-5 bg-light" id="scroll-target">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6">
                        <a href="postDetail.do?memberId=${post.memberId}"><img class="img-fluid rounded mb-5 mb-lg-0" src="cssPostList/images/${post.postImages}" alt="..." /></a></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">포스트 제목</h2>
                            <p class="lead fw-normal text-muted mb-0">작성자</p>
                            <p class="lead fw-normal text-muted mb-0">작성내용</p>
                            
                        </div>
                    </div>
                </div>
            </section>
            <!-- About section two-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6 order-first order-lg-last">
                        <a href="postDetail.do?memberId=${post.memberId}"><img class="img-fluid rounded mb-5 mb-lg-0" src="cssPostList/images/${post.postImages}" alt="..." /></a></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">포스트 제목</h2>
                            <p class="lead fw-normal text-muted mb-0">작성자</p>
                            <p class="lead fw-normal text-muted mb-0">작성내용</p>
                        </div>
                    </div>
                </div>
            </section>
             <!-- About section three-->
            <section class="py-5 bg-light" id="scroll-target">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6">
                        <a href="postDetail.do?memberId=${post.memberId}"><img class="img-fluid rounded mb-5 mb-lg-0" src="cssPostList/images/${post.postImages}" alt="..." /></a></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">포스트 제목</h2>
                            <p class="lead fw-normal text-muted mb-0">작성자</p>
                            <p class="lead fw-normal text-muted mb-0">작성내용</p>
                            
                        </div>
                    </div>
                </div>
            </section>
            <!-- About section four-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6 order-first order-lg-last">
                        <a href="postDetail.do?memberId=${post.memberId}"><img class="img-fluid rounded mb-5 mb-lg-0" src="cssPostList/images/${post.postImages}" alt="..." /></a></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">포스트 제목</h2>
                            <p class="lead fw-normal text-muted mb-0">작성자</p>
                            <p class="lead fw-normal text-muted mb-0">작성내용</p>
                        </div>
                    </div>
                </div>
            </section>
              
              
              
            <!-- Team members section-->
            <section class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="text-center">
                        <h2 class="fw-bolder">Our team</h2>
                        <p class="lead fw-normal text-muted mb-5">Dedicated to quality and your success</p>
                    </div>
                    <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                <h5 class="fw-bolder">Ibbie Eckart</h5>
                                <div class="fst-italic text-muted">Founder &amp; CEO</div>
                            </div>
                        </div>
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                <h5 class="fw-bolder">Arden Vasek</h5>
                                <div class="fst-italic text-muted">CFO</div>
                            </div>
                        </div>
                        <div class="col mb-5 mb-5 mb-sm-0">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                <h5 class="fw-bolder">Toribio Nerthus</h5>
                                <div class="fst-italic text-muted">Operations Manager</div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                <h5 class="fw-bolder">Malvina Cilla</h5>
                                <div class="fst-italic text-muted">CTO</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>