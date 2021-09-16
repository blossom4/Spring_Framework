package com.mycompany.webapp.controller;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/ch01")
public class Ch01Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch01Controller.class);
	
	// 실제로 주소창에 보이는 주소
	@RequestMapping(value = "/content")
	public String content() {
		
		logger.info("Run ch01/content");
		
		// 파일이 존재하는 경로
		return "ch01/content";
	}

}
