package com.mycompany.webapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.support.SessionStatus;

import com.mycompany.webapp.dto.Ch08InputForm;

@Controller
@RequestMapping(value = "/ch08")
public class Ch08Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch08Controller.class);
	
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch08/content");
		return "ch08/content";
	}
	
	@RequestMapping(value = "/saveData", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
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
	
	@RequestMapping(value = "/readData",method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
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
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String logiForm() {
		logger.info("Run ch08/login");
		return "ch08/loginForm";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String mid, String mpassword, HttpSession session) {
		logger.info("Run ch08/login -> Redirect ch08/content");
		if(mid.equals("admin") && mpassword.equals("123")) {
			session.setAttribute("sessionMid", mid);
		}
		return "redirect:/ch08/content";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("Run ch08/logout -> Redirect ch08/content");
		
		//방법1
		session.removeAttribute("sessionMid");
		
		//방법2 : session 안에 모든 데이터를 날리는 방법
//		session.invalidate();
		
		return "redirect:/ch08/content";
	}
	
	@RequestMapping(value="/loginAjax", method = RequestMethod.POST, produces="apllication/json; charset=UTF-8")
	@ResponseBody
	public String loginAjax(String mid, String mpassword, HttpSession session) {
		logger.info("Run ch08/loginAjax");
		String result = "";
		
		if(!mid.equals("admin")) {
			result ="wrongMid";
		} else if (!mpassword.equals("123")) {
			result = "wrongMpassword";
		} else {
			result = "success";
			session.setAttribute("sessionMid", mid);
		}
			
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", result);
		String json = jsonObject.toString();
		return json; 
	}
	
	@RequestMapping(value = "/logoutAjax", method = RequestMethod.GET)
	public void logoutAjax(HttpSession session, HttpServletResponse response) throws IOException {
		logger.info("Run ch08/logoutAjax");
		
		session.invalidate();
//		session.removeAttribute("sessionMid");
		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		String json = jsonObject.toString();
		
		pw.println(json);
//		pw.flush();
//		pw.close();
	}
	
	//세션 input 이름이 존재하지 않을 경우 딱 한번 실행
	@ModelAttribute("inputForm")
	public Ch08InputForm getInputForm() {
		logger.info("Run ch08/inputForm");
		Ch08InputForm inputForm = new Ch08InputForm();
		return inputForm;
	}
	
	@RequestMapping(value = "/inputStep1", method = RequestMethod.GET)
	public String inputStep1(@ModelAttribute("inputForm") Ch08InputForm inputForm) {
		logger.info("Run ch08/inputStep1");
		return "ch08/inputStep1";
	}
	
	@RequestMapping(value = "/inputStep2", method = RequestMethod.POST)
	public String inputStep2(@ModelAttribute("inputForm") Ch08InputForm inputForm) {
		logger.info("Run ch08/inputStep2");
		
		logger.info("data1: " + inputForm.getData1());
		logger.info("data2: " + inputForm.getData2());
		logger.info("data3: " + inputForm.getData3());
		logger.info("data4: " + inputForm.getData4());
		
		return "ch08/inputStep2";
	}
	
	@RequestMapping(value = "/inputDone", method = RequestMethod.POST)
	public String inputDone(@ModelAttribute("inputForm") Ch08InputForm inputForm, SessionStatus sessionStatus) {
		logger.info("Run ch08/inputDone");
		
		logger.info("data1: " + inputForm.getData1());
		logger.info("data2: " + inputForm.getData2());
		logger.info("data3: " + inputForm.getData3());
		logger.info("data4: " + inputForm.getData4());
		//처리 내용
		//세션에 저장되어 있는 inpurForm을 제거
		sessionStatus.setComplete();
		
		return "redirect:/ch08/content";
	}
}