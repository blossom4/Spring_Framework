package com.mycompany.webapp.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.mycompany.webapp.dto.Ch04Member;

public class Ch04MemberEmailValidator implements Validator {
	private static final Logger logger = LoggerFactory.getLogger(Ch04MemberEmailValidator.class);
	
	@Override
	public boolean supports(Class<?> clazz) {
		logger.info("Run supports Email");
		boolean check = Ch04Member.class.isAssignableFrom(clazz);
		return check;
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		logger.info("Run validate Email");
		Ch04Member member = (Ch04Member) target;
		
		if(member.getMemail() == null || member.getMemail().trim().equals("")) {
			errors.rejectValue("memail", "errors.memail.required");
		} else {
			String regex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
			Pattern pattern = Pattern.compile(regex);
			Matcher metcher = pattern.matcher(member.getMemail());
			if(!metcher.matches()) {
				errors.rejectValue("memail", "errors.memail.invalid");
			}
		}
	}
	
}
