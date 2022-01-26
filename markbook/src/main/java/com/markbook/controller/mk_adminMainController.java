package com.markbook.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.service.mk_adminService;

@Controller
@RequestMapping("/mk_admin/*")
public class mk_adminMainController {

	private static final Logger logger = LoggerFactory.getLogger(mk_adminMainController.class);

	@Inject
	private mk_adminService service;

	@RequestMapping(value = "/chart", method = RequestMethod.GET)
	public String chartGET(HttpSession session, Model model) throws Exception {
	
		
		return "";
	}
	


}
