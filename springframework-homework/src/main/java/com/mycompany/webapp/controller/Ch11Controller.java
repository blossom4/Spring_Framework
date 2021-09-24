package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.webapp.dto.Ch11Member;

@Controller
@RequestMapping("/ch11")
public class Ch11Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch11Controller.class);
	
	@RequestMapping("/content")
	public String content(String data) {
		logger.info("Run ch11/content");
		return "ch11/content";
	}
	
	// form1을 요청하는 메서드
	@RequestMapping(value = "/form1", method = RequestMethod.GET)
	// 매개변수로 DTO가 오게 되면 request 범위에서 클래스명을 첫자를 소문자한 값으로 자동으로 관리됨
	// 기본으로 저장되는 이름을 변경하고 싶을 때는 @ModelAttribute 어노테이션 사용
	public String form1(@ModelAttribute("member") Ch11Member member) { 
		logger.info("Run ch11/form1");
		
		member.setMnation("Repulbic Of Korea");
				
		return "ch11/form1";
	}
	
	// form을 통해 입력 받은 데이터를 가져오는 메서드
	@RequestMapping(value = "/form1", method = RequestMethod.POST)
	public String handleForm1(@ModelAttribute("member") Ch11Member member) {
		logger.info("Run ch11/form1 -> Redirect ch11/content");
		
		logger.info("mid: " + member.getMid());
		logger.info("mname: " + member.getMname());
		logger.info("mpassword: " + member.getMpassword());
		logger.info("mnation: " + member.getMnation());
		
		return "redirect:/ch11/content";
	}
}
