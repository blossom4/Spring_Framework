package com.mycompany.webapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
@RequestMapping(value = "/ch08")
public class Ch08Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch08Controller.class);
	
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch08/content");
		return "ch08/content";
	}
	
	@RequestMapping(value = "/saveData", method = RequestMethod.GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String saveData(String name, HttpServletRequest request, HttpSession session) {
		logger.info("Run ch08/saveData");
		logger.info("Save name: " + name);
		
//		HttpSession session = request.getSession(); // HttpServletRequest 사용시
		session.setAttribute("name", name);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("Result", "Success");
		String json = jsonObject.toString(); // {"Result": "Success"}
		return json; // 응답으로 보낸다
	}
	
	@RequestMapping(value="/readData",method = RequestMethod.GET, produces="application/json; charset=UTF-8")
	@ResponseBody 
	public String readData(HttpSession session, @SessionAttribute String name) { //@SessionAttribute("name") String username) {
		logger.info("Run ch08/readData");
		
		//방법1
//		String name = (String)session.getAttribute("name");
//		logger.info("name: " + name);
		
		//방법2
		logger.info("name" + name);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("Read name: ", name);
		String json = jsonObject.toString();
		return json; 
	}
}