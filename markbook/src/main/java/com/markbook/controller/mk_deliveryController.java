package com.markbook.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.service.mk_2ndtransService;
import com.markbook.service.mk_deliveryService;

@Controller
@RequestMapping("/mk_delivery/*")
public class mk_deliveryController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_deliveryController.class);
	
	@Inject
	private mk_2ndtransService service;
	
	@Inject
	private mk_deliveryService d_service;
	
	// http://localhost:8088/markbook/mk_delivery/deliverycart
	// 택배 주문 장바구니 페이지 호출 (GET)
	@RequestMapping(value = "/deliverycart", method = RequestMethod.GET)
	public String deliverycartGET(HttpSession session, Model model, Integer bor_num) throws Exception {

		logger.info("C: deliverycartGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");

		// 비회원 제어
		if (m_id == null) { return "redirect:/login"; }
		
		// 임시 bor_num
		bor_num = 1;
		
		model.addAttribute("memberInfo", service.getMember(m_id));
		model.addAttribute("deliveryInfo", d_service.getInfo(bor_num));
				
		return "/mk_delivery/deliverycart";
	}
	
	// 택배 주문 결제 페이지 호출 (GET)
	@RequestMapping(value = "/deliverycheckout", method = RequestMethod.GET)
	public String deliverycheckoutGET(HttpSession session, Model model, Integer b2_num) throws Exception {

		logger.info("C: deliverycheckoutGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		
		// 비회원 제어
		if (m_id == null) { return "redirect:/mk_member/login"; }
		
		model.addAttribute("memberInfo", service.getMember(m_id));
				
		return "/mk_delivery/deliverycheckout";
	}
	
	

}
