<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>

    <%-- favicon --%>
    <link rel="icon" href="${contextPath}/resources/img/main/logo/favicon.ico" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${contextPath}/resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />


    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${contextPath}/resources/css/style-1.css" rel="stylesheet">
    
    <link href="${contextPath}/resources/css/member/member.css" rel="stylesheet">


</head>
<body>
    
    <main class="main">

        <jsp:include page="/WEB-INF/views/common/header-1.jsp" />

        <div class="secession">

            <div>
                <h1 class="secession-text">탈퇴하기</h1>
            </div>

            <div>
                <p>1. 탈퇴 시, 구독 정보와 회원 정보 ,보유 쿠폰 등 모든 정보가 영구적으로 삭제되며 복구가 불가능합니다.</p>
                <p>2.탈퇴 후 24시간 동일한 계정으로 재가입이 불가능합니다.</p>
            </div>

            <form action="secession" method="POST" name="myPage-form" onsubmit="return secessionValidate()" >
                <div>
                    <p class="secessionText-bold">정말 탈퇴를 진행하시겠습니까?</p>
                </div>

                <!-- Button trigger modal -->
                <div class="secessionBtn">
                            <button type="button" id="exception-btn" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                탈퇴하기
                            </button>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">탈퇴 사유를 알려주세요.</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                <br>
                        
                            </div>


                            <div class="modal-body">

                                <div class="row">
                                    <div class="col">
                                        <input class="form-check-input" name="choice" onclick="count_check(this);" type="radio" id="secession_cnt1" value="1" >
                                        <label class="form-check-label" for="secession_cnt1">더 이상 서비스가 필요하지 않아요.</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <input class="form-check-input" name="choice" onclick="count_check(this);" type="radio" id="secession_cnt2" value="2"  >
                                        <label class="form-check-label" for="secession_cnt2">서비스가 마음에 들지 않아요.</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <input class="form-check-input" name="choice" onclick="count_check(this);" type="radio" id="secession_cnt3" value="3"  >
                                        <label class="form-check-label" for="secession_cnt3">구독료가 부담스러워요.</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <input class="form-check-input" name="choice" onclick="count_check(this);" type="radio" id="secession_cnt4" value="4" >
                                        <label class="form-check-label" for="secession_cnt4"> 비밀!!</label>
                                    </div>
                                </div>

                            </div>


                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">탈퇴 안할래요</button>
                                <button class="btn btn-primary">탈퇴할께요</button>
                            </div>

                        </div>

                    </div>

                </div>

            </form>

        </div>

    </main>



    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

        
    <%-- <!— jQuery 추가 —> --%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
    <script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/lib/counterup/counterup.min.js"></script>
    <script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="${contextPath}/resources/lib/tempusdominus/js/moment.min.js"></script>
    <script src="${contextPath}/resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="${contextPath}/resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    
    
    <%-- Template Javascript --%>
    <%-- <script src="${contextPath}/resources/js/main.js"></script> --%>
    <script src="${contextPath}/resources/js/member/secession.js"></script>
</body>
</html>