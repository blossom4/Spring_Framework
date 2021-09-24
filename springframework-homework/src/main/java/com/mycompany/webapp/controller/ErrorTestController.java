package com.mycompany.webapp.controller;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/error")
public class ErrorTestController {
	private static final Logger logger = LoggerFactory.getLogger(ErrorTestController.class);
	
	@RequestMapping(value = "/500")
	public String content() {
		logger.info("Run error/500");
		return "error/500";
	}

}
