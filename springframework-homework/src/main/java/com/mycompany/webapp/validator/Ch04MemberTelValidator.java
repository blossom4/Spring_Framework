package com.mycompany.webapp.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.mycompany.webapp.dto.Ch04Member;

public class Ch04MemberTelValidator implements Validator {
	private static final Logger logger = LoggerFactory.getLogger(Ch04MemberTelValidator.class);

	@Override
	public boolean supports(Class<?> clazz) {
		logger.info("Run supports Tel");
		boolean check = Ch04Member.class.isAssignableFrom(clazz);
		return check;
	}

	@Override
	public void validate(Object target, Errors errors) {
		logger.info("Run validate Tel");
		Ch04Member member = (Ch04Member)target;
		
		if(member.getMtel() == null || member.getMtel().trim().equals("")) {
			errors.rejectValue("mtel", "errors.mtel.required");
		} else {
			String regex = "^\\d{3}-\\d{3,4}-\\d{4}$";
			Pattern pattern = Pattern.compile(regex);
			Matcher metcher = pattern.matcher(member.getMtel());
			if(!metcher.matches()) {
				errors.rejectValue("mtel", "errors.mtel.invalid");
			}
		}
		
	}

}
