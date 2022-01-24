package com.markbook.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.markbook.service.mk_adminService;

@Controller
@RequestMapping("/mk_adminMain/*")
public class mk_adminMainController {

	private static final Logger logger = LoggerFactory.getLogger(mk_adminMainController.class);

	@Inject
	private mk_adminService service;



}
