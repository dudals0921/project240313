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

<title>MyEduMySelect</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="/resources/include/assets/img/favicon.png" rel="icon">
<link href="/resources/include/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/resources/include/assets/vendor/aos/aos.css"
	rel="stylesheet">
<link
	href="/resources/include/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/resources/include/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="/resources/include/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="/resources/include/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="/resources/include/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link
	href="/resources/include/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/resources/include/assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: MyEduMySelect
  * Updated: Jan 29 2024 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/MyEduMySelect-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top ">
		<div class="container d-flex align-items-center">

			<h1 class="logo me-auto">
				<a href="/">MyEdu<br />MySelect
				</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo me-auto"><img src="/resources/include/assets/img/logo.png" alt="" class="img-fluid"></a>-->

			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto active" href="#hero">홈</a></li>
					<li><a class="nav-link scrollto" href="#about">About</a></li>
					<li><a class="nav-link scrollto" href="#team">Team</a></li>
					<li class="dropdown"><a href="#"><span>메뉴</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">홍보게시판</a></li>
							<li><a href="#">매칭게시판</a></li>
							<li><a href="/">공지게시판</a></li>
							<li><a href="/mypage" id="mypageBtn">마이페이지</a></li>
						</ul></li>
					<li><a class="nav-link scrollto" href="#contact">Contact</a></li>
					<li>
					<a class="getstarted scrollto"> 
	                  	<c:choose>
							<c:when test="${not empty personalLoginVO || not empty academyLoginVo}">
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
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero" class="d-flex align-items-center">
		
		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1"
					data-aos="fade-up" data-aos-delay="200">
					<h1>전체 조회 / 빠른검색</h1>
					<h2>여러분의 교육은 여러분이 선택합니다.</h2>
					<form id="mainSearchForm">
					<div class="d-flex justify-content-center justify-content-lg-start">
						<select id="academyGuAddress" name="academyGuAddress" class="form-control form-control-lg">
	        				<option value="">-- 구 선택 --</option>
	        				<option value="강남구">강남구</option>
	        				<option value="강동구">강동구</option>
	       					<option value="강북구">강북구</option>
	      					<option value="강서구">강서구</option>
	      					<option value="관악구">관악구</option>
	      					<option value="광진구">광진구</option>
	        				<option value="구로구">구로구</option>
	        				<option value="금천구">금천구</option>
	        				<option value="노원구">노원구</option>
	        				<option value="도봉구">도봉구</option>
	        				<option value="동대문구">동대문구</option>
	        				<option value="동작구">동작구</option>
	        				<option value="마포구">마포구</option>
	        				<option value="서대문구">서대문구</option>
	        				<option value="서초구">서초구</option>
	        				<option value="성동구">성동구</option>
	        				<option value="성북구">성북구</option>
	        				<option value="송파구">송파구</option>
	        				<option value="양천구">양천구</option>
	        				<option value="영등포구">영등포구</option>
	        				<option value="용산구">용산구</option>
	        				<option value="은평구">은평구</option>
	        				<option value="종로구">종로구</option>
	        				<option value="중구">중구</option>
	        				<option value="중랑구">중랑구</option>
	        			</select>
						<select id="academyDongAddress" name="academyDongAddress" class="form-control form-control-lg">
							<option value="">-- 동 선택 --</option>
	        			</select>
	        			<input id="academyCurriculumName" name="academyCurriculumName" type="text" class="form-control form-control-lg" placeholder="과목을 입력하세요." maxlength=20/>
	        			</form>
					</div>
					<button type="button" id="mainSearchBtn" name="mainSearchBtn" class="btn-get-started scrollto">검색</button>
					
				</div>
				<div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in"
					data-aos-delay="200">
					<img src="/resources/include/assets/img/hero-img.png"
						class="img-fluid animated" alt="">
				</div>
				
			</div>
		</div>
		
	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= Clients Section ======= -->
		<section id="clients" class="clients section-bg">
			<div class="container">

				<div class="row" data-aos="zoom-in">

					<div class="row">
						<div class="col-xl-4 col-md-6 d-flex align-items-stretch"
							data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box">
								<div class="icon">
									<i class="bx bxl-dribbble"></i>
								</div>
								<h4>
									<a href="">자유게시판</a>
								</h4>
								<p>자유롭게 좋은 의견을 말해주세요.</p>
							</div>
						</div>

						<div
							class="col-xl-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0"
							data-aos="zoom-in" data-aos-delay="200">
							<div class="icon-box">
								<div class="icon">
									<i class="bx bx-file"></i>
								</div>
								<h4>
									<a href="">홍보게시판</a>
								</h4>
								<p>멋진 교육 장소를 마음껏 뽐내주세요</p>
							</div>
						</div>
						<div
							class="col-xl-4 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0"
							data-aos="zoom-in" data-aos-delay="300">
							<div class="icon-box">
								<div class="icon">
									<i class="bx bx-tachometer"></i>
								</div>
								<h4>
									<a href="">맞춤형검색/매칭게시판</a>
								</h4>
								<p>내가 선택한 교육을 여기서 확인하세요.</p>
							</div>
						</div>
					</div>
				</div>
		</section>
		<!-- End Cliens Section -->

		<!-- ======= About Us Section ======= -->
		<section id="about" class="about">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>About Us</h2>
				</div>

				<div class="row content">
					<div class="col-lg-6">
						<p>모든 학부모와 학생이 쉽고 효과적으로 오프라인 학원을 선택할 수 있도록 하는 교육 정보 중개 서비스를
							제공하여, 교육의 질적 향상과 부담을 덜어드립니다</p>
						<ul>
							<li><i class="ri-check-double-line"></i> 투명하고 객관적인 정보 제공</li>
							<li><i class="ri-check-double-line"></i> 맞춤형 추천 시스템</li>
							<li><i class="ri-check-double-line"></i> 원스톱 서비스</li>
							<li><i class="ri-check-double-line"></i> 평가 및 리뷰 플랫폼</li>
						</ul>
					</div>
					<div class="col-lg-6 pt-4 pt-lg-0">
						<p>우리 회사는 매년 증가하는 사교육비로 인한 부담을 고려하여, 학부모와 학생들이 올바른 교육 결정을 내리도록
							돕기 위해 설립되었습니다. 현재의 교육 시장에서는 정보 부족과 주관적인 기준으로 인한 불편함이 여전합니다. 따라서,
							우리는 객관적이고 명확한 정보를 제공하고, 학원과 학부모(학생) 간의 원활한 중개를 통해 교육 환경을 개선하고자
							합니다.</p>
						<a href="#" class="btn-learn-more">Learn More</a>
					</div>
				</div>

			</div>
		</section>
		<!-- End About Us Section -->

		<!-- ======= Skills Section ======= -->
		<section id="skills" class="skills">
			<div class="container" data-aos="fade-up">

				<div class="row">
					<div class="col-lg-6 d-flex align-items-center"
						data-aos="fade-right" data-aos-delay="100">
						<img src="/resources/include/assets/img/skills.png"
							class="img-fluid" alt="">
					</div>
					<div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left"
						data-aos-delay="100">
						<h3>tech skills</h3>
						<p class="fst-italic">비교해조 개발팀은 이번 프로젝트에서
							Java/HTML/CSS/JavaScript 기술을 메인으로 개발하였습니다.</p>

						<div class="skills-content">

							<div class="progress">
								<span class="skill">Java <i class="val">100%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>

							<div class="progress">
								<span class="skill">HTML <i class="val">90%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar" role="progressbar" aria-valuenow="90"
										aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>

							<div class="progress">
								<span class="skill">CSS <i class="val">75%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar" role="progressbar" aria-valuenow="75"
										aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>

							<div class="progress">
								<span class="skill">JavaScript <i class="val">55%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar" role="progressbar" aria-valuenow="55"
										aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>

						</div>

					</div>
				</div>

			</div>
		</section>
		<!-- End Skills Section -->

		<!-- ======= Team Section ======= -->
		<section id="team" class="team section-bg">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>Team</h2>
					<p>우리 개발팀은 혁신적인 아이디어와 최신 기술을 활용하여 문제를 해결하고</p>
					<p>사용자들에게 효과적이고 혁신적인 솔루션을 제공하는 열정적인 전문가들의 모임입니다.</p>
				</div>

				<div class="row">

					<div class="col-lg-6 mt-4" data-aos="zoom-in" data-aos-delay="100">
						<div class="member d-flex align-items-start">
							<div class="pic">
								<img src="/resources/include/assets/img/team/team-4.jpg"
									class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<h4>김시온</h4>
								<span>CEO(Chief Executive Officer)</span>
								<p>Explicabo voluptatem mollitia et repellat qui dolorum
									quasi</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 mt-4" data-aos="zoom-in" data-aos-delay="300">
						<div class="member d-flex align-items-start">
							<div class="pic">
								<img src="/resources/include/assets/img/team/team-3.jpg"
									class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<h4>윤덕중</h4>
								<span>CTO(Chief Technology Officer)</span>
								<p>e</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 mt-4" data-aos="zoom-in" data-aos-delay="300">
						<div class="member d-flex align-items-start">
							<div class="pic">
								<img src="/resources/include/assets/img/team/team-1.jpg"
									class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<h4>최영민</h4>
								<span>COO(Chief Operating Officer)</span>
								<p>Aut maiores voluptates amet et quis praesentium qui senda
									para</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 mt-4" data-aos="zoom-in" data-aos-delay="300">
						<div class="member d-flex align-items-start">
							<div class="pic">
								<img src="/resources/include/assets/img/team/team-2.jpg"
									class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<h4>김나연</h4>
								<span>CFO(Chief Financial Officer)</span>
								<p>Quisquam facilis cum velit laborum corrupti fuga rerum
									quia</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 mt-4" data-aos="zoom-in" data-aos-delay="400">
						<div class="member d-flex align-items-start">
							<div class="pic">
								<img src="/resources/include/assets/img/team/team-5.jpg"
									class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<h4>강민호</h4>
								<span>CIO(Chief Information Office)</span>
								<p>Dolorum tempora officiis odit laborum officiis et et
									accusamus</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- End Team Section -->

		<!-- ======= Pricing Section ======= -->
		<section id="pricing" class="pricing">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>Pricing</h2>
					<p>학원 고객님에게 제공하는 서비스 요금을 안내해드립니다.</p>
				</div>

				<div class="center d-flex justify-content-center">
					<div class="col-lg-8" data-aos="fade-up" data-aos-delay="100">
						<div class="box text-center mx-auto">
							<h3>비싼플랜</h3>
							<h4>
								<sup>￦</sup>599,000<span>per day</span>
							</h4>
							<ul>
								<li><i class="bx bx-check"></i> 홍보 서비스</li>
								<li><i class="bx bx-check"></i> 매칭 서비스</li>
								<li><i class="bx bx-check"></i> 상담 서비스</li>
								<li class="na"><i class="bx bx-x"></i> <span>광고서비스</span></li>
								<li class="na"><i class="bx bx-x"></i> <span>홍보 컨설팅</span></li>
							</ul>
							<a href="#" class="buy-btn">Get Started</a>
						</div>
					</div>
				</div>

			</div>
		</section>
		<!-- End Pricing Section -->

		<!-- ======= Contact Section ======= -->

	</main>
	<!-- End #main -->

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
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Social Networks</h4>
						<p>Cras fermentum odio eu feugiat lide par naso tierra videa
							magna derita valies</p>
						<div class="social-links mt-3">
							<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
								href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
								href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
							<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
							<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="container footer-bottom clearfix">
			<div class="copyright">
				&copy; Copyright <strong><span>MyEduMySelect</span></strong>. All
				Rights Reserved
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/MyEduMySelect-free-bootstrap-html-template-corporate/ -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="/resources/include/assets/vendor/aos/aos.js"></script>
	<script
		src="/resources/include/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="/resources/include/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="/resources/include/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script
		src="/resources/include/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script
		src="/resources/include/assets/vendor/waypoints/noframework.waypoints.js"></script>
	<script
		src="/resources/include/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="/resources/include/js/jquery-3.7.1.min.js"></script>
	<script src="/resources/include/js/common.js"></script>
	<script src="/resources/include/assets/js/main.js"></script>

</body>

</html>