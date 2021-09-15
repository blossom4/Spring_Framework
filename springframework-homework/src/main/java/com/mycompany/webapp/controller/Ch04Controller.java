package com.mycompany.webapp.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Ch04Member;
import com.mycompany.webapp.validator.Ch04MemberEmailValidator;
import com.mycompany.webapp.validator.Ch04MemberIdValidator;
import com.mycompany.webapp.validator.Ch04MemberPasswordValidator;
import com.mycompany.webapp.validator.Ch04MemberTelValidator;

@Controller
@RequestMapping(value = "/ch04")
public class Ch04Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch04Controller.class);
	
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch04/content");
		return "ch04/content";
	}
	
	@PostMapping("/postValidate")
	public String loginRedirect() {
		logger.info("Run ch04/postValidate");
		return "ch04/content";
	}
	
	@InitBinder("signupForm")
	public void joinFormSetValidate(WebDataBinder binder) {
		logger.info("Run signupForm");
		binder.addValidators(
				new Ch04MemberIdValidator(),
				new Ch04MemberPasswordValidator(),
				new Ch04MemberEmailValidator(),
				new Ch04MemberTelValidator()
		);
	}
	
	@PostMapping("/signup")
	public String join(@ModelAttribute("signupForm") @Valid Ch04Member member, Errors errors) { // BindingResult bidingResult) {
		logger.info("Run ch04/signup");
		if(errors.hasErrors()) { // errors 안에 에러 정보가 있는가(에러가 발생했는가)
			logger.info("Rewrite forms + Error messages");
			return "ch04/content";
		}
		logger.info("Server Signup Success :)");
		return "redirect:/";
	}
	
	@InitBinder("loginForm")
	public void loginFormSetValidate(WebDataBinder binder) {
		logger.info("실행");
		
		binder.addValidators(
			new Ch04MemberIdValidator(),
			new Ch04MemberPasswordValidator()
		);
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute("loginForm") @Valid Ch04Member member, Errors errors) {
		logger.info("실행");
		if(errors.hasErrors()) {
			logger.info("Rewrite forms + Error messages");
			return "ch04/content"; // forward(포워드) 에러 메시지 포함 후 돌아가는 것
		} else {
			logger.info("Server Login Success :)");
			return "redirect:/"; // redirect 완전히 새롭게 갱신하는 것
		}
		
	}
}
