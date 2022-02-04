package com.markbook.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.service.mk_calendarService;

@Controller
@RequestMapping("/mk_calendar/*")
public class mk_calendarController {
	
	/*
	@Inject
	private mk_calendarService service;
	*/
	
	@RequestMapping(value="/calendar", method=RequestMethod.GET)
	public void test(Model model) throws Exception {
		
		System.out.println("calendar ");

	}
	
}
