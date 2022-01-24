package com.markbook.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mk_delivery/*")
public class mk_deliveryController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_deliveryController.class);
	
	// http://localhost:8088/markbook/mk_delivery/deliverycart
	// 택배 주문 장바구니 페이지 호출 (GET)
	@RequestMapping(value = "/deliverycart", method = RequestMethod.GET)
	public String cartGET(HttpSession session, Model model) throws Exception {

		logger.info("C: cartGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		//임시 아이디 설정
		m_id = "tempId";
		
		// 비회원 제어
		/*
		 * if (m_id == null) { return "redirect:/login"; }
		 */
		
		model.addAttribute("m_id", m_id);
		
		return "/mk_delivery/deliverycart";
	}

}
