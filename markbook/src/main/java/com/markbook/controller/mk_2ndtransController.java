package com.markbook.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonParser;
import com.markbook.domain.SearchVO;
import com.markbook.domain.book_orderVO;
import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.model.sjCriteria;
import com.markbook.model.sjPageMaker;
import com.markbook.service.mk_2ndtransService;

@Controller
@RequestMapping("/mk_2ndTrans/*")
public class mk_2ndtransController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_2ndtransController.class);
	
	@Inject
	private mk_2ndtransService service;
	
	// 중고책 거래 메인 페이지 호출 (GET)
	// http://localhost:8088/markbook/mk_2ndTrans/booklist
	@RequestMapping(value = "/booklist", method = RequestMethod.GET)
	public String booklistGET(HttpSession session, Model model, sjCriteria cri) throws Exception {
		
		logger.info(" C: booklistGET() 호출 ");
		
		String m_id = (String) session.getAttribute("m_id");
		
		//임시 아이디 설정
		m_id = "tempId";
		
		model.addAttribute("m_id", m_id);
				
		// 페이징 처리 정보 생성
		sjPageMaker pm = new sjPageMaker();
		pm.setCri(cri);
		pm.setTotalCount(service.count(cri));
				
		// Criteria 객체 정보 저장(pageStart/pageSize)
		model.addAttribute("bookList", service.getlistCri(cri));
		model.addAttribute("pm", pm);
		
		return "/mk_2ndTrans/booklist";
	}
	
	// 중고책 상품 등록 페이지 호출 (GET)
	@RequestMapping(value = "/bookregister", method = RequestMethod.GET)
	public String registerGET(HttpSession session, Model model) throws Exception {

		logger.info("C: registerGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		//임시 아이디 설정
		m_id = "tempId";
		
		// 비회원 제어
		/*
		 * if (m_id == null) { return "redirect:/login"; }
		 */
		
		model.addAttribute("m_id", m_id);

		return "/mk_2ndTrans/bookregister";
	}
	
	// 중고책 상품 등록(POST)
	@RequestMapping(value = "/bookregister", method = RequestMethod.POST)
	public String registerPOST(mk_2ndhand_bookVO bvo) throws Exception {

		logger.info("C: registerPOST() 호출");
		
		bvo.setB2_highestprice(bvo.getB2_startprice());
		service.bookRegister(bvo);

		return "redirect:/mk_2ndTrans/booklist";
	}

	// 중고책 판매 사진업로드(POST)
	@RequestMapping(value = "/imgregister", method = RequestMethod.POST)
	public void imgRegisterPOST(MultipartFile b2_image, HttpServletRequest request) throws Exception {

		logger.info("imgRegisterPOST() 실행");
		
		ServletContext servletContext = request.getSession().getServletContext();
		String uploadFolder = servletContext.getRealPath("./resources/upload");
		 
		// 폴더생성
		File uploadPath = new File(uploadFolder);
		
		// 파일 디렉토리 생성
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		// 파일 이름
		String uploadFileName = b2_image.getOriginalFilename();

		// 파일 위치, 파일 이름을 합친 File 객체
		File saveFile = new File(uploadPath, uploadFileName);

		// 파일 저장
		try {
			b2_image.transferTo(saveFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 중고책 판매 상세 페이지 호출 (GET)
	@RequestMapping(value = "/bookinfo", method = RequestMethod.GET)
	public String infoGET(HttpSession session, Model model, Integer b2_num) throws Exception {

		logger.info("C: infoGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		
		//임시 아이디 설정
		m_id = "tempId";
		
		model.addAttribute("bvo", service.getInfo(b2_num));
		model.addAttribute("m_id", m_id);
		
		return "/mk_2ndTrans/bookinfo";
	}
	
	// 중고책 판매 상품 수정 페이지 호출 (GET)
	@RequestMapping(value = "/bookmodify", method = RequestMethod.GET)
	public String modifyGET(HttpSession session, Model model, Integer b2_num) throws Exception {

		logger.info("C: modifyGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		
		//임시 아이디 설정
		m_id = "tempId";
		
		// 비회원 제어
		/*
		 * if (m_id == null) { return "redirect:/login"; }
		 */

		model.addAttribute("bvo", service.getInfo(b2_num));
		model.addAttribute("m_id", m_id);
		
		return "/mk_2ndTrans/bookmodify";
	}
	
	// 중고책 판매 페이지 상품 수정(POST)
	@RequestMapping(value = "/bookmodify", method = RequestMethod.POST)
	public String bookModifyPOST(mk_2ndhand_bookVO bvo) throws Exception {

		logger.info("C: bookModifyPOST() 호출");
		
		System.out.println("이미징"+bvo.getB2_image());
		
		service.bookModify(bvo);

		return "redirect:/mk_2ndTrans/booklist";
	}
	
	// 중고책 판매 페이지 상품 삭제(GET)
	@RequestMapping(value = "/bookdelete", method = RequestMethod.GET)
	public String deleteGET(Integer b2_num) throws Exception {

		logger.info("C: deleteGET() 호출");

		service.bookDelete(b2_num);

		return "redirect:/mk_2ndTrans/booklist";
	}
	
	// 중고책 입찰하기 페이지 호출(GET)
	@RequestMapping(value = "/bookbid", method = RequestMethod.GET)
	public String bidGET(HttpSession session, Model model, Integer b2_num) throws Exception {

		logger.info("C: bidGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		
		//임시 아이디 설정
		m_id = "tempId";
		
		// 비회원 제어
		/*
		 * if (m_id == null) { return "redirect:/login"; }
		 */

		model.addAttribute("bvo", service.getInfo(b2_num));
		model.addAttribute("m_id", m_id);
		
		return "/mk_2ndTrans/bookbid";
	}
	
	
	// 중고책 입찰하기 등록 (POST)
	@RequestMapping(value = "/bookbid", method = RequestMethod.POST)
	public String bookbidPOST(HttpSession session,mk_2ndhand_bookVO bvo, String bid_price) throws Exception {
		
		logger.info("C: bookbidPOST() 호출");
		
		String m_id = (String) session.getAttribute("m_id");		
		m_id = "tempId";
		
		bvo.setB2_highestprice(Integer.parseInt(bid_price));
		bvo.setB2_buyer_id(m_id);
		service.bookBid(bvo);
		
		logger.info("입찰완료");
		
		return "redirect:/mk_2ndTrans/booklist";
	}
	
	// 중고책 판매 카트 페이지 호출 (GET)
	@RequestMapping(value = "/bookcart", method = RequestMethod.GET)
	public String cartGET(HttpSession session, Model model) throws Exception {

		logger.info("C: cartGET() 호출");
		
		String b2_buyer_id= (String) session.getAttribute("m_id");
		
		b2_buyer_id = "tempId";
		
		// 비회원 제어
		/*
		 * if (m_id == null) { return "redirect:/login"; }
		 */

		model.addAttribute("cartList", service.getCart(b2_buyer_id));
				
		return "/mk_2ndTrans/bookcart";
	}
	
	// 중고책 판매 결제 페이지 호출 (GET)
	@RequestMapping(value = "/bookcheckout", method = RequestMethod.GET)
	public String checkoutGET(HttpSession session, Model model, Integer b2_num) throws Exception {

		logger.info("C: checkoutGET() 호출");
		
		String b2_buyer_id = (String) session.getAttribute("m_id");
		
		b2_buyer_id = "tempId";
		
		// 비회원 제어
		/*
		 * if (b2_buyer_id == null) { return "redirect:/login"; }
		 */
		
		model.addAttribute("memberInfo", service.getMember(b2_buyer_id));
		model.addAttribute("OrderInfo", service.getInfo(b2_num));
				
		return "/mk_2ndTrans/bookcheckout";
	}
	
	// 중고책 결제
	@RequestMapping(value = "/bookcheckout", method = RequestMethod.POST)
	public String bookcheckoutPOST(HttpSession session, book_orderVO bvo) throws Exception {
		
		logger.info("C: bookcheckout() 호출");
		
		service.bookchechout(bvo);
		service.soldupdate(bvo.getOrder_b2_num());
		
		logger.info("결제 정보 입력 완료");
		
		return "redirect:/mk_2ndTrans/booklist";
	}
	
	// 중고책 카테고리 검색
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchlist (SearchVO svo, sjCriteria cri, Model model) throws Exception {
		
		logger.info("C: searchlist() 호출");
		
		// 페이징 처리 정보 생성 
		sjPageMaker pm = new sjPageMaker(); 
		pm.setCri(cri);
		pm.setTotalCount(service.countSearch(svo));
		
		// Criteria 객체 정보 저장(pageStart/pageSize) 
		model.addAttribute("bookList", service.searchListAll(svo, cri)); 
		model.addAttribute("pm", pm);
		model.addAttribute("option", svo.getOption()); 
		model.addAttribute("b2_bookstatus", svo.getB2_bookstatus()); 
		model.addAttribute("b2_category", svo.getB2_category()); 
		model.addAttribute("b2_sellstatus", svo.getB2_sellstatus()); 
		model.addAttribute("count", service.countSearch(svo));
		

		return "/mk_2ndTrans/search";				
	}

}