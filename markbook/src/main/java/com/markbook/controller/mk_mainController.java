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
		List<mk_bookVO> listall = service.borrBest();
		System.out.println(listall);
		model.addAttribute("listall",listall);
		System.out.println("borrBest 실행");
//		List<mk_bookVO> list1 = service.borrBest1();
		
	}
	
	@RequestMapping(value="index",method=RequestMethod.POST)
	public void mainPOST(String category) throws Exception{
	
		System.out.println("category:"+category);
	}
	
	
	

}
