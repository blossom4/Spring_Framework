package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Ch01Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch01Controller.class);
	
	// 실제로 주소창에 보이는 주소
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("실행1");
		logger.warn("실행2");
		logger.debug("실행3");
		logger.error("실행4");
		
		// 파일이 존재하는 경로
		return "ch01/home";
	}

}
