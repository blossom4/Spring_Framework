package com.mycompany.webapp.controller;

import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.JwtParser;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Controller
@RequestMapping("/ch05")
public class Ch05Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch05Controller.class);
	@RequestMapping(value = "/content")
	public String content() {
		logger.info("Run ch05/content");
		return "ch05/content";
	}
	
	@GetMapping("/getHeaderValue")
	public String getHeaderValue(HttpServletRequest request) {
		logger.info("Run ch05/getHeaderValue");
		
		logger.info("method: " + request.getMethod());
		logger.info("requestURI: " + request.getRequestURI());
		logger.info("client IP: " + request.getRemoteAddr());
		logger.info("contextRoot: " + request.getContextPath());
		
		String userAgent = request.getHeader("User-Agent");
		logger.info("User-Agent: " + userAgent);
		if(userAgent.contains("Windows NT")) {
			logger.info("client OS: Windows");
		} else if(userAgent.contains("Macintosh")) {
			logger.info("client OS: macOS");
		}
			
		if(userAgent.contains("Edg")) {
			logger.info("client Browser: Edge");
		} else if(userAgent.contains("Trident")) {
			logger.info("client Browser: IE11");
		} else if(userAgent.contains("Chrome")) {
			logger.info("client Browser: Chrome");
		} else if(userAgent.contains("Safari")) {
			logger.info("client Browser: Safari");
		}
		
		
		return "redirect:/ch05/content";
	}
	
	@GetMapping("/createCookie")
	public String createCookie(HttpServletResponse response) {
		logger.info("Run ch05/createCookie");
		
		Cookie cookie = new Cookie("useremail", "blossom3@gmail.com"); // ????????? ?????? ??? ?????????????????? ???!!
		cookie.setDomain("localhost");
		cookie.setPath("/");
		cookie.setMaxAge(30*60); // ????????? ?????? ???????????? ??????
		cookie.setHttpOnly(true); // js?????? ???????????? ??????! ?????? ?????? ??? -> httpOnly
		cookie.setSecure(true);  // https://??? ?????? ??????????????? ???
		response.addCookie(cookie);
		
		return "redirect:/ch05/content";
	}
	
	@GetMapping("/getCookie1")
	public String getCookie1(// @CookieValue String useremail, // ?????????????????? ?????? ????????? ?????? ??????
							 @CookieValue("useremail") String userEmail) { // ?????????????????? ?????? ????????? ????????? ???????????? ?????? ??????
		logger.info("Run ch05/getCookie1");
		
//		logger.info("useremail: " + useremail);
		logger.info("useremail: " + userEmail);
		
		return "redirect:/ch05/content";
	}
	
	@GetMapping("/getCookie2")
	public String getCookie2(HttpServletRequest request) {
		logger.info("Run ch05/getCookie2");
		
		Cookie[] cookies = request.getCookies();
		
		for(Cookie cookie : cookies) {
			String cookieName = cookie.getName();
			String cookieValue = cookie.getValue();
			if(cookieName.equals("useremail")) {
				logger.info("useremail: " + cookieValue);
				break;
			}
		}
		
		return "redirect:/ch05/content";
	}
	
	@GetMapping("/createJsonCookie")
	public String createjsonCookie(HttpServletResponse response) throws Exception {
		logger.info("Run ch05/createJsonCookie");
		
		// String json = "{\"userid\":\"fall\", \"useremail\":\"fall@company.com\", \"username\":\"?????????\"}";
		
		// ?????? ????????? ????????? ?????? ??? ??????!
		JSONObject jsonObject = new JSONObject(); // ??????
		jsonObject.put("userid", "jsonCookie3");
		jsonObject.put("useremail", "jsonCookie3@gmail.com");
		jsonObject.put("username", "??????");
		String json = jsonObject.toString();
		logger.info("json: " + json);
		json = URLEncoder.encode(json, "UTF-8"); // "??? ?????? ?????? ??????????????????!
		logger.info("json: " + json);
		
//		Cookie cookie = new Cookie("user", URLEncoder.encode("?????????", "UTF-8"));  // ????????? ????????? ??? ?????? ??????????????? ?????????... ?????????...
		Cookie cookie = new Cookie("user", json);
		response.addCookie(cookie);
		
		return "redirect:/ch05/content";		
	}
	
	@GetMapping("/getJsonCookie")
	public String getJsonCookie(@CookieValue String user) {
		logger.info("Run ch05/getJsonCookie");
		
		logger.info("user: " + user);
		
		JSONObject jsonObject = new JSONObject(user); // ????????? ?????? ??????
		String userid = jsonObject.getString("userid");
		String useremail = jsonObject.getString("useremail");
		String username = jsonObject.getString("username");
		logger.info("userid: " + userid);
		logger.info("useremail: " + useremail);
		logger.info("username: " + username);
		
		return "redirect:/ch05/content";
	}
	
	@GetMapping("/createJwtCookie")
	public String createJwtCookie(HttpServletResponse response) throws Exception {
		logger.info("??????");
		
		String userid = "jwtCookie3";
		String useremail = "jwtCookie3@gmail.com";
		String username = "??????";
		
		JwtBuilder builder = Jwts.builder();
		// ??? Header
		builder.setHeaderParam("alg", "HS256");
		builder.setHeaderParam("typ", "JWT");
		builder.setExpiration(new Date(new Date().getTime() + 1000*60*30)); // ?????????????????? 30??? ?????? ?????? ??????
		// long ????????? 1970??? ???????????? 1/1000 ????????? ???????????? ??????
		// ??? Payloadl
		builder.claim("userid", userid);
		builder.claim("useremail", useremail);
		builder.claim("username", username);
		// ??? Signature
		String scretKey = "abc12345";
		builder.signWith(SignatureAlgorithm.HS256, scretKey.getBytes("UTF-8")); 
		String jwt = builder.compact();
		logger.info("jwt: " + jwt);
		
		Cookie cookie = new Cookie("jwt", jwt);
		response.addCookie(cookie);
		
		return "redirect:/ch05/content";
	}
	
	@GetMapping("/getJwtCookie")
	public String getJwtCookie(@CookieValue String jwt) throws Exception {
		logger.info("??????");
		
		logger.info(jwt);
		
		JwtParser parser = Jwts.parser();
		String scretKey = "abc12345";
		parser.setSigningKey(scretKey.getBytes("UTF-8"));
		Jws<Claims> jws = parser.parseClaimsJws(jwt);
		Claims claims = jws.getBody();
		String userid = claims.get("userid", String.class);
		String useremail = claims.get("useremail", String.class);
		String username = claims.get("username", String.class);		
		logger.info("userid: " + userid);
		logger.info("useremail: " + useremail);
		logger.info("username: " + username);
		
		return "redirect:/ch05/content";
	}
}
