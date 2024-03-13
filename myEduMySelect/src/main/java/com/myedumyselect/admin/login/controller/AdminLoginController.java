package com.myedumyselect.admin.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myedumyselect.admin.login.service.AdminLoginService;
import com.myedumyselect.admin.login.vo.AdminLoginVO;

import jakarta.servlet.http.HttpSession;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

/**
 * @SessionAttribute : 모델(Model) 정보를 HTTP 세션에 저장해주는 어노테이션
 * HttpSession을 직접 사용할 수도있지만 이 어노테이션에 설정한 이름에 해당하는 모델 정보를 자동으로 세선에 넣어준다.
 */

@Controller
/**
 * @SessionAttributes 파라미터로 지정된 이름과 같은 이름이
 * @ModelAttribute에 지저오디어 있을 겨웅 메소드가 반환되는 값은 세션에 저장된다.
 */
@SessionAttributes("adminLogin")
@RequestMapping("/admin/*")
@Slf4j
public class AdminLoginController {
	@Setter(onMethod_ = @Autowired)
	private AdminLoginService adminLoginService;

	/**
	 * 로그인 화면[관리자 메인] 메서드.
	 * 요청 URL : http://localhost:8080/admin/login 으로 요청
	 */
	@GetMapping("/login")
	public String loginProcess() {
		log.info("admin 로그인 화면 호출");
		return "admin/login/adminMain"; 
	}

	/***********************************************************************************
	 * 로그인 처리 메서드 참고 : 자바단에서 세션의 값을 사용할 경우 로그인을 처리하는 컨트롤러 클래스
	 * 위에 @SessionAttributes("adminLogin") 명시해 준 이름을 로그인 정보가 필요한 Controller 내 메서드에서
	 * 다음과 같이 매개변수를 명시해 주면 된다.
	 * public 반환형 메서드명(@SessionAttribute("adminLogin") VO클래스명 참조변수)로
	 * 정의하고 사용하면 된다.
	 * 
	 * RedirectAttributes 객체는 리다이렉트 시점(return "redirect:/경로")에 한번만 사용되는 데이터를 전송할 수
	 * 있는 addFlashAttribute()라는 기능을 지원한다. addFlashAttribute() 메서드는 브라우저까지 전송되기는 하지만,
	 * URI에는 보이지 않는 숨겨진 데이터의 형태로 전달된다. redirect:/admin/login?errorMsg=error이라고 전송을
	 * 하여야 하는데 이때 ras.addFlashAttribute("errorMsg", "error");
	 * redirect:/admin/login으로 명시하면 된다.
	 ***********************************************************************************/
	@PostMapping("/login")
	public String loginProcess(AdminLoginVO login, Model model, RedirectAttributes ras) {
		AdminLoginVO adminLogin = adminLoginService.loginProcess(login);
		log.info(login.toString());
		
		/* 로그인 확인 */
		if (adminLogin != null) {
			model.addAttribute("adminLogin", adminLogin);
		} else {
			
			ras.addFlashAttribute("errorMsg", "로그인 실패");
		}
		return "redirect:/admin/login";

		/*
		 * 실제 로직
		 * String url = "";
		 * if (adminLogin != null) {
		 * 	model.addAttribute("adminLogin", adminLogin);
		 *  // url = "/admin/board/boardList";
		 *  url = "/admin/member/memberList";
		 *  } else {
		 *  ras.addFlashAttribute("errorMsg", "로그인 실패");
		 *  }
		 *  return "redirect:" + url;
		 */
	}

	/**
	 * 로그아웃 처리 메서드
	 * setComplete() 메서드를 활용하여 세션을 할당 해지
	 */
	@GetMapping("/logout")
	public String logoutProcess(SessionStatus sessionStatus) {
		log.info("admin 로그인 아웃 처리");
		sessionStatus.setComplete();
		return "redirect:/admin/login";
	}
	
	@GetMapping(value="/myPage")
	public String myPageView(HttpSession session) {
		
		AdminLoginVO adminLoginVO = (AdminLoginVO) session.getAttribute("adminLogin");
		
		if (adminLoginVO == null) {
			return "redirect:/admin/login";
		}
		
		
		return "/admin/login/myPage";
	}
}