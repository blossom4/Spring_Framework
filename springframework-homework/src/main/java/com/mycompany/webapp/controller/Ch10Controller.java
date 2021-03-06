package com.mycompany.webapp.controller;

import java.util.Date;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.exception.Ch10SoldOutException;

@Controller
@RequestMapping(value = "/ch10")
public class Ch10Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch10Controller.class);
	
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch10/content");
		return "ch10/content";
	}
	
	// try-catch로 예외 처리 하는것은 지양해야한다.
	@RequestMapping("/handlingException1")
	public String handlingException1(String data) {
		logger.info("Run ch10/handlingException1");
		
		try {
			if (data.equals("java")) {
				// NullPointerException
			}
		} catch(Exception e) {
			return "error/500";
		}
		
		return "ch10/content";
	}
	
	@RequestMapping("/handlingException2")
	public String handlingException2(String data) {
		logger.info("Run ch10/handlingException2");
			
		if(data.equals("java")) {
			//NullPlointerException
		}
		
		return "ch10/content";
	}
	
	@RequestMapping("/handlingException3")
	public String handlingException3() {
		logger.info("Run ch10/handlingException3");
		
		Object data = "Hi";
		Date date = (Date)data; //ClassCastException 발생
		
		return "ch10/content";
	}
	
	@RequestMapping("/handlingException4")
	public String handlingException4() {
		logger.info("Run ch10/handlingException4");
		
		int[] arr = {10, 20, 30};
		arr[3] = 40; //ArrayIndexOutOfBoundsException 발생
		
		return "ch10/content";
	}
	
	// 사용자 정의 예외 처리 및 발생
	@RequestMapping("/handlingException5")
	public String handlingException5() { //throws Ch10SoldOutException { // RuntimeException으로 만들지 않는 경우 이와 같이 던져줘야 함
		logger.info("Run ch10/handlingException5");
		
		int stock = 0;
		if(stock == 0) {
			// 예외 발생시키는 코드
			throw new Ch10SoldOutException("상품 재고가 없습니다.");
		}
		
		return "ch10/content";
	}
	

}
