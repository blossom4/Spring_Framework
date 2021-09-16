package com.mycompany.webapp.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/ch06")
public class Ch06Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch01Controller.class);
	
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch06/content");
		return "ch06/content";
	}
	
	@RequestMapping(value = "/forward")
	public String forward() {
		logger.info("Run ch06/forward");
		return "ch06/forward";
	}
	
	@RequestMapping(value = "/redirect")
	public String redirect() {
		logger.info("Run ch06/redirect -> Redirect /index");
		return "redirect:/"; // 홈으로 이동
	}
	
	// 해당 url을 호출한 태그에 jsp파일의 내용을 불러온다.
	@RequestMapping(value = "/getFragmentHtml", method = RequestMethod.GET)
	public String getFragmetnHtml() {
		logger.info("Run ch06/getFragmentHtml");
		return "ch06/fragmentHtml";
	}
	
	@RequestMapping(value = "/getJson1", method = RequestMethod.GET)
	public void getJson1(HttpServletResponse response) throws Exception {
		logger.info("Run ch06/getJson1");
		JSONObject jsonObject = new JSONObject();
//		jsonObject.put("fileName", "photo5.jpg");
		// Json 객체형태로 key와 value를 정하고 ajax요청시 자유롭게 태그 내용을 작성하여 불러온다.
		jsonObject.put("string", "Hi! I'm Json :)");
		String json = jsonObject.toString();
		
		// ▼ 응답 HTTP의 body 부분에 json을 포함시켜서 보내는 코드
		response.setContentType("application/json; charset=UTF-8");
		
		PrintWriter pw = response.getWriter(); // 직접 출력 스트림 이용 방법
		pw.println(json);
		pw.flush();
		pw.close();
	}
	
	// 위의 getJson1()과 동일한 동작을 하는 코드
	@GetMapping(value="/getJson2", produces="application/json; charset=UTF-8")
	@ResponseBody // 위의 출력 스트림 부분을 해당 어노테이션에서 처리해줌
	public String getJson2() {
		logger.info("Run ch06/getJson2");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("fileName", "json_icon.png");
		String json = jsonObject.toString();
		return json;
	}

}
