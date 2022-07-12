<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Uglory</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="../img/favicon.ico" rel="icon">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    
    <!-- Libraries Stylesheet -->
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
    
    <!-- Product Style sheet -->
    <link href="../css/adminproduct-style.css" rel="stylesheet">

    <!-- Fontawesome cdn 링크 -->
    <script src="https://kit.fontawesome.com/1ef9913073.js" crossorigin="anonymous"></script>

</head>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="index.html" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>UGLORY</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="../img/bananaKoongya.jpg" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">바나나 쿵야</h6>
                        <span>Admin</span>
                    </div>
                </div>

                <!-- 사이드바 내용 -->
                <div class="navbar-nav w-100">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa-solid fa-carrot me-2"></i>상품 관리</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <div class="dropdown-item">
                                <a href="adminProductList.html" class="sub-menu">상품 조회</a>
                            </div>
                            <div class="dropdown-item">
                                <a href="adminProductIn.html" class="sub-menu">상품 등록</a>
                            </div>
                            <div class="dropdown-item">
                                <a href="adminPList.html" class="sub-menu">구독 상품 알림</a>
                            </div>
                        </div>
                    </div>

                    <div class="nav-item dropdown">
                                                                                                <!-- <i class="fa-solid fa-hat-cowboy me-2"></i> -->
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa-solid fa-house me-2"></i>농장 관리</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <div class="dropdown-item">
                                <a href="adminFarmList.html" class="sub-menu">농장 조회</a>
                            </div>
                            <div class="dropdown-item">
                                <a href="adminFarmIn.html" class="sub-menu">농장 등록</a>
                            </div>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa-solid fa-user me-2"></i>Pages</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <div class="dropdown-item">
                                <a href="signin.html" class="sub-menu">Sign In</a>
                            </div>
                            <div class="dropdown-item">
                                <a href="signup.html" class="sub-menu">Sign Up</a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="../img/bananaKoongya.jpg" alt="프로필 사진" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex fw-bold">바나나 쿵야</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item text-center">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->


            <!-- 상품 등록 form태그 -->
            <div class="container-fluid pt-2 px-4">
                <div class="row justify-content-center mx-0">
                    <div class="col-xl-6 col-lg-8 text-center bg-light rounded farmIn-margin p-5">
                        <form action="">
                            <h2 class="text-start">농장 등록</h2>
                            <hr>
                            
                            <div class="product-row">
                                <span class="fw-bold">농장 이름</span>
                                <div class="productWrap">
                                    <input type="text" class="productInput ps-1" placeholder="농장 이름">
                                    <div class="inputMessage text-danger">이미 존재하는 농장 이름입니다</div>
                                </div>
                            </div>

                            <div class="product-row">
                                <span class="fw-bold">생산자 이름</span>
                                <div class="productWrap">
                                    <input type="text" class="productInput ps-1" placeholder="생산자 이름">
                                </div>
                            </div>

                            <div class="product-row">
                                <span class="fw-bold">원산지</span>
                                <div class="productWrap">
                                    <input type="text" class="productInput ps-1" placeholder="원산지">
                                    <div class="inputMessage text-danger">원산지는 한글만 입력해주세요</div>
                                </div>
                            </div>
                       

                            <div class="product-row">
                                <button type="button" class="btn btn-lg btn-primary m-1 w-100">취소</button>
                                <button class="btn btn-lg btn-primary m-1 w-100">등록</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>


            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-light rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="#">Uglory</a>, All Right Reserved. 
                        </div>
                        <div class="col-12 col-sm-6 text-center text-sm-end">
                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../lib/chart/chart.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="../lib/tempusdominus/js/moment.min.js"></script>
    <script src="../lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="../lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
</body>

</html>