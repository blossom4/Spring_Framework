package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/ch02")
public class Ch02Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch02Controller.class);
	
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch02/content");
		return "ch02/content";
	}
	
	// GET
	@RequestMapping(value = "/getMethod", method = RequestMethod.GET)
	public String getMethod() {
		logger.info("Run ch02/getMethod -> Redirect to ch02/content");
		return "redirect:/ch02/content";
	}
	
	// POST
	@RequestMapping(value = "/postMethod", method = RequestMethod.POST)
	public String postMethod() {
		logger.info("Run ch02/postMethod -> Redirect to ch02/content");
		return "redirect:/ch02/content";
	}
	
	// PUT
	@RequestMapping(value = "/putMethod", method = RequestMethod.PUT)
	public String putMethod() {
		logger.info("Run ch02/putMethod -> Redirect to ch02/content");
		return "redirect:/ch02/content";
	}
	
	// DELETE
	@RequestMapping(value = "/deleteMethod", method = RequestMethod.DELETE)
	public String deleteMEthod() {
		logger.info("Run ch02/deleteMethod -> Redirect to ch02/content");
		return "redirect:/ch02/content";
	}
	
	@RequestMapping(value = "/modelAndView", method = RequestMethod.GET)
	public String modelandview() {
		logger.info("Run ch02/modelAndView");
		return "ch02/modelAndView";
	}
	
	// 로그인
	@RequestMapping(value = "/login")
	public String login() {
		logger.info("Run ch02/login");
		return "ch02/login";
	}
	
	// 게시물 목록
	@RequestMapping(value = "/boardList")
	public String boardList() {
		logger.info("Run ch02/boardList");
		return "ch02/boardList";
	}
	
	// 게시물 작성 form
	@RequestMapping(value = "/boardWriteForm")
	public String boardWriteForm() {
		logger.info("Run ch02/boardWriteForm");
		return "ch02/boardWriteForm";
	}
}
