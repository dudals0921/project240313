window.onload = function() {
	
	// 아이디 중복 체크 로직
	document.getElementById('check-duplicate-btn').addEventListener('click', function() {	    
	 
	    // 중복이 되었을 경우
	    if (duplicate) {
	        document.getElementById('duplicate-message').textContent = '이미 사용 중인 아이디입니다.';
	        document.getElementById('academyId').value = ''; // 아이디 입력란 초기화
	        document.getElementById('academyId').focus(); // 아이디 입력란에 포커스 설정
	        return;
	    } 
	});
	
    // 담당자 전화번호 최대 11자리까지 제한 / 총 9,10,11자리 일 경우에 대한 모든 제어문
    var phoneInput = document.getElementById('academyManagerPhone');
    
    phoneInput.addEventListener('blur', function(event) {
        var input = event.target.value;
        input = input.replace(/\D/g, '');
        
        if (input.length === 9 || input.length === 10 || input.length === 11) {            
            if (/^\d{2}$/.test(input)) { // 앞 두 자리가 두 글자인 경우
            var formattedNumber;
                formattedNumber = input.replace(/(\d{2})(\d{3,4})(\d{4})/, '$1-$2-$3');
            } else if (/^\d{3}$/.test(input)) { // 앞 세 자리가 세 글자인 경우
                formattedNumber = input.replace(/(\d{3})(\d{3,4})(\d{4})/, '$1-$2-$3');
            }
            event.target.value = formattedNumber;
        }
    });
    
    // 담당자 이메일 '직접입력' 클릭 시 텍스트박스 초기화 및 포커싱 
    document.getElementById('domain-list').addEventListener('change', function() {
	    var selectedValue = this.value;
	    var domainTxtInput = document.getElementById('domain-txt');
	
	    if (selectedValue === 'custom') {
	        domainTxtInput.value = ''; // 텍스트 박스 초기화
	        domainTxtInput.focus(); // 텍스트 박스에 포커스 설정
	    }
	});
	
	// 회원가입 버튼 클릭 이벤트 핸들러
	document.getElementById('submit-btn').addEventListener('click', function(event) {
    	event.preventDefault(); // 기본 동작 방지

	    // 필수 입력 사항을 체크할 요소들의 배열
	    var requiredInputs = document.querySelectorAll('input[required]');	
	    // 중복 체크가 필요한 요소들의 배열
	    var duplicateCheckInputs = document.querySelectorAll('.duplicate-check');	
	    // 포커스를 이동할 대상을 담을 변수
	    var targetInput = null;
	
	    // 필수 입력 사항 검사
	    for (var i = 0; i < requiredInputs.length; i++) {
	        if (!requiredInputs[i].value) {
	            targetInput = requiredInputs[i];
	            break; // 첫 번째로 발견된 빈 필드에 포커스 설정
	        }
	    }
	
	    // 중복 체크 검사
	    if (!targetInput) {
	        for (var j = 0; j < duplicateCheckInputs.length; j++) {
	            var duplicateMessage = duplicateCheckInputs[j].nextElementSibling;
	            if (duplicateMessage.textContent) {
	                targetInput = duplicateCheckInputs[j];
	                break; // 첫 번째로 발견된 중복되지 않은 필드에 포커스 설정
	            }
	        }
	    }
	
	    // 포커스 이동
	    if (targetInput) {
	        targetInput.focus();
	    } else {
	        // 모든 조건을 만족했을 경우 회원가입 프로세스 진행
	        document.getElementById('#join').submit();
	    }
	});


    
};
    
(function() {
	"use strict";

	/**
	 * Easy selector helper function
	 */
	const select = (el, all = false) => {
		el = el.trim()
		if (all) {
			return [...document.querySelectorAll(el)]
		} else {
			return document.querySelector(el)
		}
	}

	/**
	 * Easy event listener function
	 */
	const on = (type, el, listener, all = false) => {
		let selectEl = select(el, all)
		if (selectEl) {
			if (all) {
				selectEl.forEach(e => e.addEventListener(type, listener))
			} else {
				selectEl.addEventListener(type, listener)
			}
		}
	}

	/**
	 * Easy on scroll event listener 
	 */
	const onscroll = (el, listener) => {
		el.addEventListener('scroll', listener)
	}

	/**
	 * Navbar links active state on scroll
	 */
	let navbarlinks = select('#navbar .scrollto', true)
	const navbarlinksActive = () => {
		let position = window.scrollY + 200
		navbarlinks.forEach(navbarlink => {
			if (!navbarlink.hash) return
			let section = select(navbarlink.hash)
			if (!section) return
			if (position >= section.offsetTop && position <= (section.offsetTop + section.offsetHeight)) {
				navbarlink.classList.add('active')
			} else {
				navbarlink.classList.remove('active')
			}
		})
	}
	window.addEventListener('load', navbarlinksActive)
	onscroll(document, navbarlinksActive)

	/**
	 * Scrolls to an element with header offset
	 */
	const scrollto = (el) => {
		let header = select('#header')
		let offset = header.offsetHeight

		let elementPos = select(el).offsetTop
		window.scrollTo({
			top: elementPos - offset,
			behavior: 'smooth'
		})
	}

	/**
	 * Toggle .header-scrolled class to #header when page is scrolled
	 */
	let selectHeader = select('#header')
	if (selectHeader) {
		const headerScrolled = () => {
			if (window.scrollY > 100) {
				selectHeader.classList.add('header-scrolled')
			} else {
				selectHeader.classList.remove('header-scrolled')
			}
		}
		window.addEventListener('load', headerScrolled)
		onscroll(document, headerScrolled)
	}

	/**
	 * Back to top button
	 */
	let backtotop = select('.back-to-top')
	if (backtotop) {
		const toggleBacktotop = () => {
			if (window.scrollY > 100) {
				backtotop.classList.add('active')
			} else {
				backtotop.classList.remove('active')
			}
		}
		window.addEventListener('load', toggleBacktotop)
		onscroll(document, toggleBacktotop)
	}

	/**
	 * Mobile nav toggle
	 */
	on('click', '.mobile-nav-toggle', function(e) {
		select('#navbar').classList.toggle('navbar-mobile')
		this.classList.toggle('bi-list')
		this.classList.toggle('bi-x')
	})

	/**
	 * Mobile nav dropdowns activate
	 */
	on('click', '.navbar .dropdown > a', function(e) {
		if (select('#navbar').classList.contains('navbar-mobile')) {
			e.preventDefault()
			this.nextElementSibling.classList.toggle('dropdown-active')
		}
	}, true)

	/**
	 * Scrool with ofset on links with a class name .scrollto
	 */
	on('click', '.scrollto', function(e) {
		if (select(this.hash)) {
			e.preventDefault()

			let navbar = select('#navbar')
			if (navbar.classList.contains('navbar-mobile')) {
				navbar.classList.remove('navbar-mobile')
				let navbarToggle = select('.mobile-nav-toggle')
				navbarToggle.classList.toggle('bi-list')
				navbarToggle.classList.toggle('bi-x')
			}
			scrollto(this.hash)
		}
	}, true)

	/**
	 * Scroll with ofset on page load with hash links in the url
	 */
	window.addEventListener('load', () => {
		if (window.location.hash) {
			if (select(window.location.hash)) {
				scrollto(window.location.hash)
			}
		}
	});

	/**
	 * Preloader
	 */
	let preloader = select('#preloader');
	if (preloader) {
		window.addEventListener('load', () => {
			preloader.remove()
		});
	}

	/**
	 * Initiate  glightbox 
	 */
	const glightbox = GLightbox({
		selector: '.glightbox'
	});

	/**
	 * Skills animation
	 */
	let skilsContent = select('.skills-content');
	if (skilsContent) {
		new Waypoint({
			element: skilsContent,
			offset: '80%',
			handler: function(direction) {
				let progress = select('.progress .progress-bar', true);
				progress.forEach((el) => {
					el.style.width = el.getAttribute('aria-valuenow') + '%'
				});
			}
		})
	}

	/**
	 * Porfolio isotope and filter
	 */
	window.addEventListener('load', () => {
		let portfolioContainer = select('.portfolio-container');
		if (portfolioContainer) {
			let portfolioIsotope = new Isotope(portfolioContainer, {
				itemSelector: '.portfolio-item'
			});

			let portfolioFilters = select('#portfolio-flters li', true);

			on('click', '#portfolio-flters li', function(e) {
				e.preventDefault();
				portfolioFilters.forEach(function(el) {
					el.classList.remove('filter-active');
				});
				this.classList.add('filter-active');

				portfolioIsotope.arrange({
					filter: this.getAttribute('data-filter')
				});
				portfolioIsotope.on('arrangeComplete', function() {
					AOS.refresh()
				});
			}, true);
		}

	});

	/**
	 * Initiate portfolio lightbox 
	 */
	const portfolioLightbox = GLightbox({
		selector: '.portfolio-lightbox'
	});

	/**
	 * Portfolio details slider
	 */
	new Swiper('.portfolio-details-slider', {
		speed: 400,
		loop: true,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false
		},
		pagination: {
			el: '.swiper-pagination',
			type: 'bullets',
			clickable: true
		}
	});

	/**
	 * Animation on scroll
	 */
	window.addEventListener('load', () => {
		AOS.init({
			duration: 1000,
			easing: "ease-in-out",
			once: true,
			mirror: false
		});
	});

})()	