package com.markbook.controller;


import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.markbook.service.mk_couponService;

@Controller
@RequestMapping("/*")
public class mk_couponController {

	
	



		private static final Logger logger =  LoggerFactory.getLogger(mk_couponController.class);
		  
		@Inject
		   private mk_couponService service;
		
		   
}
