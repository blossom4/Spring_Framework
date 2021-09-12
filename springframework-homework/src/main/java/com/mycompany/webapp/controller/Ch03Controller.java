package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.webapp.dto.Ch03Dto;

@Controller
@RequestMapping(value = "/ch03")
public class Ch03Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch03Controller.class);
	
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch03/content");
		return "ch03/content";
	}
	
	@RequestMapping(value = "/getMethodRequest", method = RequestMethod.GET)
	public String getMethodRequest(Ch03Dto dto) {
		logger.info("Run ch03/getMethodRequest -> Redirect ch03/content");
		logger.info("String param1: " + dto.getParam1());
		logger.info("int param2: " + dto.getParam2());
		logger.info("double param3: " + dto.getParam3());
		logger.info("boolean param4: " + dto.isParam4());
		logger.info("Date param5: " + dto.getParam5());
		return "redirect:/ch03/content";
	}
	
	@RequestMapping(value = "/postMethodRequest", method = RequestMethod.POST)
	public String postMethodRequest(Ch03Dto dto) {
		logger.info("Run ch03/postMethodRequest -> Redirect ch03/content");
		logger.info("String param1: " + dto.getParam1());
		logger.info("int param2: " + dto.getParam2());
		logger.info("double param3: " + dto.getParam3());
		logger.info("boolean param4: " + dto.isParam4());
		logger.info("Date param5: " + dto.getParam5());
		return "redirect:/ch03/content";
	}

}
