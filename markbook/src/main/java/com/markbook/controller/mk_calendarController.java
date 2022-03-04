package com.markbook.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.markbook.domain.mk_calendarTempVO;
import com.markbook.domain.mk_calendarVO;
import com.markbook.service.mk_calendarService;

@Controller
@RequestMapping("/mk_calendar/*")
public class mk_calendarController {
	
	@Inject
	private mk_calendarService service;
	
	@RequestMapping(value="/calendar", method=RequestMethod.GET)
	public void calendarView(Model model, HttpSession session) throws Exception {
		
		System.out.println("calendar ");
		
	}
	
	@ResponseBody
	@RequestMapping(value="/selectCal", method=RequestMethod.POST, produces="application/text; charset=UTF-8")
	public String calendarSelect(Model model, HttpSession session, HttpServletResponse response) throws Exception {
		
		String m_id = (String)session.getAttribute("m_id");
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(service.selectCal(m_id));
	}
	
	@ResponseBody
	@RequestMapping(value="/insertCal", method=RequestMethod.POST, produces="application/text; charset=UTF-8")
	public void calendarInsert(HttpSession session, mk_calendarTempVO ctvo) throws Exception {
		
		System.out.println("insert calendar");
		// System.out.println(""+ctvo);
		String m_id = (String)session.getAttribute("m_id");
		
		service.insertCal(ctvo, m_id);
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteCal", method=RequestMethod.POST)
	public boolean checkPublicId(String id) throws Exception {
		System.out.println("delete calendar");
		
		return service.deleteCal(id);
		
	}
}
