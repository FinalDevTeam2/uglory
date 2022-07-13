<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>상품상세페이지</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

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
    <link href="${contextPath}/resources/css/product/product-detail-style.css" rel="stylesheet">

</head>

<body>

    <main>
       <jsp:include page="/WEB-INF/views/common/header-1.jsp" />

        <section class="product-detail">
            <!-- 상품, 옵션, FARM, 별점, 상품이미지, 리뷰 테이블 필요 -->

            <form>
                <div class="product-detail-area">
                    <!-- 상품 이미지 영역 최대 4개(썸네일 포함)-->
                    <div class="product-detail-img">
                        <table border="0">
                            <tbody>
                                <tr>
                                    <!-- 썸네일 이미지 -->
                                    <td><img src="${contextPath}/resources/images/main/famer.png" width="400" height="400"/></td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td>
                                        <img src="${contextPath}/resources/images/main/famer.png" width="75" height="75"/>
                                        <img src="${contextPath}/resources/images/main/famer.png" width="75" height="75"/>
                                        <img src="${contextPath}/resources/images/main/famer.png" width="75" height="75"/>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>

                    <!-- 상품 정보  -->
                    <div class="product-detail-info">

                        <!-- 상품명 옵션명 -->
                        <h3 class="product-name" style="color: gray;"><span>${detail.productName}</span></h3>

                        <h3 class="option-name" style="color: gray;"><span>(
                            <c:forEach var="option_type" items="${optionList}"> ${option_type.optionName}</span>
                            </c:forEach>
                        )
                        </h3>

                        <!-- 상품가격, 별점, 리뷰 영역 -->
                        <div class="detail-name-area">
                            <h3 class="product-price"><span>${detail.productPrice}</span>원</h3>

                            <div class="detail-star-area">
                                <img src="${contextPath}/resources/images/main/star.png" width="30px" height="30px">
                                <img src="${contextPath}/resources/images/main/star.png" width="30px" height="30px">
                                <img src="${contextPath}/resources/images/main/star.png" width="30px" height="30px">
                                <img src="${contextPath}/resources/images/main/star-2.png" width="30px" height="30px">
                                <img src="${contextPath}/resources/images/main/star-2.png" width="30px" height="30px">

                                <!-- 별점 평균 -->
                                <span>3</span>
                                <!-- 해당 상품에 대한 리뷰 페이지로 이동 -->
                                <a href="#"><span>325</span>개의 리뷰 &gt;</a>
                            </div>
                        </div>
                        <hr>

                        <!-- fram 정보, 옵션 영역 -->
                        <div class="detail-product-farm">
                            <p>배송비 : <span>3,000원 (30,000원 이상부터 무료배송)</span> </p>
                            <p>원산지 : <span>${detail.origin}</span> </p>
                            <p>생산자 : <span>${detail.producer}</span> </p>

                            <select name="product-option" class="product-option" onchange="optionSelectBox(this)">

                                <!-- 옵션 선택 for문으로 가져오기 -->
                                <option value="option-0" selected>옵션 선택</option>
                                <c:forEach var="option_type" items="${optionList}">
                                    <option value="${option_type.optionCode}" >${option_type.optionName} - 
                                        <%-- 옵션 가격이 0원이 아닐때만 가격 조회 --%>
                                        <c:if test="${option_type.optionPrice != 0}">
                                            ${option_type.optionPrice}
                                        </c:if>
                                    </option>
                                </c:forEach>
                            </select>
                        </div>

                        <hr>
                        <!-- 상품 금액 + 옵션금액 + 배송비 -->
                        <div class="total-amount-area">
                            <p>총 상품 금액 <span class="total-amount">${result}</span> </p>
                        </div>

                        <!-- 상품 상세조회 버튼 영역 -->
                        <div class="detail-product-btnArea">
                            <button id="buy-btn" onclick="productOrder()">구매하기</button>
                            <button type="button" class="cartBtn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">장바구니</button>
                            <button id="share-btn" onclick="clip(); return false;">공유하기</button>
                        </div>
                    </div>
                </div>

                <hr>
                <!-- 상품 상세 조회, 리뷰 페이지 이동 -->
                <a href="#">Detail</a>
                <a href="#">Review</a>
                <hr>

                <!-- 썸머노트 조회 영역(확인 필요) -->
                <div>
                    <span>조회</span>
                </div>
                <!-- 썸머노트 조회 영역 끝 -->

                <hr>

                <!-- 후기  -->
                <h3><span id="detail-review-count">325</span> 개의 이용후기를 확인해보세요!</h3>

                <!-- 별점 및 평균 조회 및 리뷰 페이지 이동 영역 -->
                <div class="product-review-area">
                    <img src="img/star.png" width="40px" height="40px">
                    <img src="img/star.png" width="40px" height="40px">
                    <img src="img/star.png" width="40px" height="40px">
                    <img src="img/star.png" width="40px" height="40px">
                    <img src="img/star.png" width="40px" height="40px">


                    <!-- 별점 평균 -->
                    <h4 style="color: gray"><span id="product-review-avg">3</span>/5</h4>
                    <a href="#"><span>325</span>개의 리뷰 &gt;</a>
                </div>

                <%-- 장바구니 모달창 --%>
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                선택하신 상품이 장바구니에 담겼습니다.
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">쇼핑 계속하기</button>
                                <button type="button" class="btn btn-primary" id="productCartBtn">장바구니보기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </section>
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
        <script src="${contextPath}/resources/js/main.js"></script>
        <script src="${contextPath}/resources/js/product/product-detail.js"></script>
</body>
</html>