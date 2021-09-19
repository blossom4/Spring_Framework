package com.mycompany.webapp.controller;

import java.io.File;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value = "/ch09")
public class Ch09Controller {
	public static final Logger logger = LoggerFactory.getLogger(Ch09Controller.class);
	
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch09/content");
		return "ch09/content";
	}
	
	@RequestMapping(value = "/fileupload", method = RequestMethod.POST)
	public String fileUpload(String title, String desc, MultipartFile attach) throws Exception {
		logger.info("실행");
		
		// 문자 파트 내용 읽기
		logger.info("title: " + title);
		logger.info("desc: " + desc);
		
		// 파일 파트 내용 읽기
		logger.info("file originalname: " + attach.getOriginalFilename());
		logger.info("file contenttype: " + attach.getContentType());
		logger.info("file size: " + attach.getSize());
		
		//파일 파트 데이터를 서버의 파일로 저장
		String savedname = new Date().getTime() + "_" + attach.getOriginalFilename();
		File file = new File("C:\\Users\\cho82\\Desktop\\blossom\\JPA_SpringBoot\\spring_upload_files/" + savedname);
		attach.transferTo(file);
		
		return "redirect:/ch09/content";
	}
}
