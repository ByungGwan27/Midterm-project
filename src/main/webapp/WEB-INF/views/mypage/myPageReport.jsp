<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="en">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- Page content-->
            <section class="py-5">
                <div class="container px-5">
                    <!-- Contact form-->
                    <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                        <div class="text-center mb-5">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                            <h1 class="fw-bolder">불량 업소 신고!</h1>
                            <p class="lead fw-normal text-muted mb-0">불량 업소를 신고해주세요</p>
                        </div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                                <form action="myPageCreateReport.do" method="POST">
                                    <!-- Name input-->
                                    <!-- <div class="form-floating mb-3">
                                        <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                        <label for="name">호텔명</label>
                                        <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                                    </div> -->
                                    <!-- 신고유형-->
                                    <div class="form-floating mb-3">
                                    
                                        <label for="type">신고 유형</label>
                                    	<select name="thema" class="form-control custom-select" id="type" style="width: 200px;">
										<option value="불친절">불친절</option>
										<option value="허위">허위</option>
										<option value="위생">위생</option>
										<option value="기타">기타</option>
										</select>
                                        
                                    </div>
                                    <input type="hidden" name="reporthid" value="${reportHotelId }">
                                    <!-- Message input-->
                                    <div class="form-floating mb-3">
                                        <textarea name="message" class="form-control" id="message" type="text" placeholder="Enter your message here..." style="height: 10rem"></textarea>
                                        <label for="message">Message</label>
                                        <div class="invalid-feedback">A message is required.</div>
                                    </div>
                                    <!-- Submit Button-->
                                    <div class="d-grid"><button class="btn btn-primary btn-lg" type="submit">Submit</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
