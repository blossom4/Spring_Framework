package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.webapp.dto.Ch07Board;
import com.mycompany.webapp.dto.Ch07City;
import com.mycompany.webapp.dto.Ch07Cloth;
import com.mycompany.webapp.dto.Ch07Member;

@Controller
@RequestMapping(value = "/ch07")
public class Ch07Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch07Controller.class);
	
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch07/content");
		return "ch07/content";
	}
	
	@RequestMapping(value = "/saveData", method = RequestMethod.GET)
	public String saveData(HttpServletRequest request) {
		logger.info("Run ch07/saveData");
		
		// request 범위에 데이터 저장
		// forward시 값을 유지할 때 사용
		request.setAttribute("requestData", "🔥 자바");
		
		// sessiong 범위에 데이터 저장
		// 사용자별로 유지가 되어야 할 정보가 있을 때 사용
		HttpSession session = request.getSession();
		session.setAttribute("sessionData", "📒 자바스크립트");
		
		// application 범위에 데이터 저장
		// 모든 클라이언트가 공통으로 사용해야 할 값들이 있을 때 사용
		ServletContext application = request.getServletContext();
		application.setAttribute("applicationData", "🍏 스프링프레임워크");
				
		return "ch07/readData";
	}
	
	@RequestMapping(value = "/readData", method = RequestMethod.GET)
	public String readData() {
		logger.info("Run ch07/readData");
		return "ch07/readData";
	}
	
	@RequestMapping(value = "/objectSaveAndRead1", method = RequestMethod.GET)
	public String objectSaveAndRead1(HttpServletRequest request) {
			logger.info("Run ch07/objectSaveAndRead1");
			
			Ch07Member member = new Ch07Member();
			member.setMethod("Http Servelet Request");
			member.setName("Youngshin Jo");
			member.setAge(29);
			member.setJob("Developler");
			Ch07City city = new Ch07City();
			city.setName("Seoul");
			member.setCity(city);
			
			request.setAttribute("member", member);
			
			return "ch07/objectRead";
	}

	@RequestMapping(value = "/objectSaveAndRead2", method = RequestMethod.GET)
	public String objectSaveAndRead2(Model model) {
			logger.info("Run ch07/objectSaveAndRead2");
			
			Ch07Member member = new Ch07Member();
			member.setMethod("Model");
			member.setName("Youngshin Jo");
			member.setAge(29);
			member.setJob("Developler");
			Ch07City city = new Ch07City();
			city.setName("Seoul");
			member.setCity(city);
			
			model.addAttribute("member", member);
			
			return "ch07/objectRead";
	}
	
	@RequestMapping(value = "/useJstl1", method = RequestMethod.GET)
	public String useJstl1(Model model) {
		logger.info("Run ch07/useJstl1");
		
		String[] languages = {"C", "Python", "JavaScript", "Java"};
		model.addAttribute("langs", languages);
		
		return "ch07/useJstl1";
	}
	
	@RequestMapping(value = "/useJstl2", method = RequestMethod.GET)
	public String useJstl2(Model model) {
		logger.info("Run ch07/useJstl2");
			
			List<Ch07Board> list = new ArrayList<>();
			for(int i=1; i<=5; i++) {
				list.add(new Ch07Board(i, "제목" + i, "내용" + i, "글쓴이" + i, new Date()));
			}
			
			model.addAttribute("boardList", list); // request 범위에 저장
			
			return "ch07/useJstl2";
	}
	
	// 공통 데이터 정의, request 범위: 요청할 때마다 실행됨
	@ModelAttribute("colors")
	public String[] getColors() {
		logger.info("Run ModelAttribute(\"colors\") - getColors");
		
		String[] colors = {"🧡Orange", "💛Yellow", "💚Green", "💙Blue",  "💜Violet"};
		
		return colors;
	}
	
	@RequestMapping(value = "/useModelAttribute", method = RequestMethod.GET)
	public String useModelAttribute() {
		logger.info("Run ch07/useModelAttribute");

		return "ch07/useModelAttribute";
	}
	
	@RequestMapping(value = "/argumentSaveAndRead", method = RequestMethod.GET)
		public String argumentSaveAndRead(@ModelAttribute("cloth") Ch07Cloth cloth) { // 명확하게 하기 위해서는 넣어주는 것이 좋음
		logger.info("Run ch07/argumentSaveAndRead");
		
		logger.info("Kind: " + cloth.getKind());
		logger.info("Sex: " + cloth.getSex());
		
		return "ch07/argumentRead";
	}
	
	
}
