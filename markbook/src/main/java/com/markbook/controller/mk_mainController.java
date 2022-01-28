package com.markbook.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.markbook.domain.mk_bookVO;
import com.markbook.service.mk_mainService;


@Controller
@RequestMapping("/*")
public class mk_mainController {
	
	@Inject private mk_mainService service;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public void mainGet(Model model) throws Exception{
		System.out.println("메인도착");

		model.addAttribute("listall",service.borrBest());
		model.addAttribute("listnovel",service.borrBest("novel"));
		model.addAttribute("listunnovel",service.borrBest("unnovel"));
		model.addAttribute("listessay",service.borrBest("essay"));
		model.addAttribute("liststudy",service.borrBest("study"));
		
		System.out.println("borrBest 실행");
//		List<mk_bookVO> list1 = service.borrBest1();
		
	}
	
	@RequestMapping(value="index2",method=RequestMethod.GET)
	public void mainPOST(String category) throws Exception{
	
		System.out.println("category:"+category);
	}
	
	//http://localhost:8088/markbook/mk_main/review
	//별점게시판
	@RequestMapping(value="/mk_main/review",method=RequestMethod.GET)
	public void reviewGET(Model model)throws Exception{
		
		mk_bookVO book=service.review(1);
		
		model.addAttribute("book",book);
	}
	

}
