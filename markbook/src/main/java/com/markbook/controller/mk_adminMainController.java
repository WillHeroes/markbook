package com.markbook.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.markbook.domain.mk_adminVO;
import com.markbook.domain.mk_memberVO;
import com.markbook.service.mk_adminMainService;

@Controller
@RequestMapping("/mk_admin/*")
public class mk_adminMainController {

	private static final Logger logger = LoggerFactory.getLogger(mk_adminMainController.class);

	@Inject
	private mk_adminMainService service;

	@RequestMapping(value = "/chart", method = RequestMethod.GET)
	public void chartGET(HttpServletResponse response) throws Exception {
	
		System.out.println("chart 도착");
		Gson gson = new Gson();
		List<mk_adminVO> list = service.getBorrow();
		System.out.println(list.toString());
		
		response.getWriter().print(gson.toJson(list));
	}
	
	@RequestMapping(value = "/messenger", method = RequestMethod.GET)
	public void messengertGET(Model model) throws Exception {
		System.out.println("messenger 도착");
		
//		mk_memberVO user = session.get
//	
//		logger.info("@ChatController, GET Chat / Username : " + user.getUsername());
//		
//		model.addAttribute("userid", user.getUsername());
	}

}
