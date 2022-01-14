package com.markbook.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.domain.mk_bookVO;
import com.markbook.service.mk_mainService;


@Controller
@RequestMapping("/*")
public class mk_mainController {
	
	@Inject private mk_mainService service;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public void mainGet(Model model) throws Exception{
		System.out.println("메인도착");
		String novel = "novel";
		String unnovel = "unnovel";
		String essay = "essay";
		String study = "study";
		
		List<mk_bookVO> listall = service.borrBest();
		List<mk_bookVO> listnovel = service.borrBest(novel);
		List<mk_bookVO> listunnovel = service.borrBest(unnovel);
		List<mk_bookVO> listessay = service.borrBest(essay);
		List<mk_bookVO> liststudy = service.borrBest(study);

		model.addAttribute("listall",listall);
		model.addAttribute("listnovel",listnovel);
		model.addAttribute("listunnovel",listunnovel);
		model.addAttribute("listessay",listessay);
		model.addAttribute("liststudy",liststudy);
		
		System.out.println("borrBest 실행");
//		List<mk_bookVO> list1 = service.borrBest1();
		
	}
	
	@RequestMapping(value="index2",method=RequestMethod.GET)
	public void mainPOST(String category) throws Exception{
	
		System.out.println("category:"+category);
	}
	
	
	

}
