<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>								
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  	
  <title>MyEduMySelect </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/include/assets/img/favicon.png" rel="icon">
  <link href="/resources/include/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/include/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/resources/include/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/include/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/include/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/include/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resources/include/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/resources/include/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/resources/include/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: MyEduMySelect
  * Updated: Jan 29 2024 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/MyEduMySelect-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <link rel="stylesheet" type="text/css" href="/resources/include/assets/css/academy.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh3E263XmFcJlSAwiqF/X57qzdN1yW+i" crossorigin="anonymous">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="/">MyEdu<br />MySelect</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="/resources/include/assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
		<ul>
          <li><a class="nav-link scrollto active" href="/mypage">나의 정보</a></li>
          <li><a class="nav-link scrollto" href="/mywrite">내가 작성한 글</a></li>
          <li><a class="nav-link scrollto" href="/update">회원정보 변경</a></li>
          <li class="dropdown"><a href="#"><span>메뉴</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">자유게시판</a></li>
              <li><a href="#">홍보게시판</a></li>
              <li><a href="#">매칭게시판</a></li>
              <li><a href="#">문의게시판</a></li>
              <li><a href="mypage">마이페이지</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
		  <li><a class="getstarted scrollto"> 
		  	  <c:choose>
				<c:when test="${not empty academyLoginVo}">
					<form action="userAccount/logout" method="POST">
						<button type="submit">로그아웃</button>
					</form>
				</c:when>
				<c:otherwise>
					<form action="userAccount/login" method="POST">
						<button type="submit">로그인/회원가입</button>
					</form>
				</c:otherwise>
			  </c:choose>
			  </a>
		  </li>
        </ul>     
        <ul>
          <li><a class="nav-link scrollto active" href="#mypage">나의 정보</a></li>
          <li><a class="nav-link scrollto" href="#mypage">내가 작성한 글</a></li>
          <li><a class="nav-link scrollto" href="#myWrite">회원정보 변경</a></li>
          <li><a class="nav-link scrollto" href="#about">회원탈퇴</a></li>          
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">          
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="/resources/include/assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>
   </section>
  	
  <main id="main">

    <!-- ======= academyPassWd Update Form ======= -->   
    
    <form name="join" id="join">
      <div class="input_group">
        <label for="academy_id">아이디</label>
        <input type="text" name="academy_id" id="academy_id" readonly>        
      </div>
      <br />
      <div id="duplicate-message"></div>
      <div class="input_group">
	    <label for="academy_passwd">기존 비밀번호</label>
	    <input type="password" name="academy_passwd" id="academy_passwd" maxlength="20" placeholder="기존 비밀번호 입력">
	  </div>
	  <br />
	  <div class="input_group">
	    <label for="new_password">새 비밀번호</label>
	    <input type="password" name="new_password" id="new_password" maxlength="20" placeholder="새 비밀번호 입력">
	    <label class="require">(최소 하나의 대문자/소문자/숫자/특수문자 포함  8~20자 이내로 입력) </label>
	    <span id="password-check-message"></span>
	  </div>
	  <br />
	  <div class="input_group">
	    <label for="new_password2">새 비밀번호 확인</label>
	    <input type="password" name="new_password2" id="new_password2" maxlength="20" onkeyup="checkPassword()">
	    <span id="new_password-check-message"></span>
	  </div>
	  <br />
      <div class="input_group">
        <label for="academy_number">사업자 등록번호</label>
        <input type="text" name="academy_number" id="academy_number" maxlength="10" readonly>
      </div>
      <br />      
      <div class="input_group">
        <label for="academy_name">학원명</label>
        <input type="text" name="academy_name" id="academy_name"  maxlength="100" readonly>
      </div>
      <br />
      <div class="input_group">
        <label for="academy_address">학원주소</label>
        <input type="text" name="academy_gu_address" id="academy_gu_address" readonly>
        <input type="text" name="academy_road_address" id="academy_road_address" readonly>
        <input type="text" name="academy_dong_address" id="academy_dong_address" readonly>
        <button id="search-address">검색</button>
      </div>      
      <br />
      <div class="input_group">
        <label for="academy_phone">학원 전화번호</label>
        <input type="text" name="academy_phone" id="academy_phone" readonly>
      </div>
      <br />      
	  <div class="input_group" style="text-align:center">
	    <span>
	        <input type="submit" value="수정하기" class="myButton"/>
	        <input type="reset" value="다시작성" class="myButton"/>
	    </span>
	  </div>
	  <br />
	  
	</form>
	<form action="/completeSignUp">
	    <button type="submit">회원가입 완료 페이지로 이동</button>
	</form>

    <!-- ======= Contact Section ======= -->
  
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>MyEduMySelect</h3>
            <p>
              	서울특별시 강남구 테헤란로14길 6 <br> 남도빌딩 2F, 3F, 4F, 5F, 6F <br> 대한민국 <br>
				<br> <strong>Phone:</strong> +1 5589 55488 55<br> <strong>Email:</strong>
				info@example.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>MyEduMySelect</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/MyEduMySelect-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/resources/include/assets/vendor/aos/aos.js"></script>
  <script src="/resources/include/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/include/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/resources/include/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/resources/include/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/resources/include/assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="/resources/include/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/resources/include/assets/js/main.js"></script>
  <script src="/resources/include/assets/js/academyPasswd.js"></script>
  		
</body>

</html>