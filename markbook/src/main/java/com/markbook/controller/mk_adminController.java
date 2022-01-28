package com.markbook.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_bookVO;
import com.markbook.domain.mk_memberVO;
import com.markbook.domain.pageMaker;
import com.markbook.service.mk_adminService;

@Controller
@RequestMapping("/mk_admin/*")
public class mk_adminController {

	private static final Logger logger = LoggerFactory.getLogger(mk_adminController.class);

	@Inject
	private mk_adminService service;

	/*
	 * @Inject private mk_memberService mService;
	 */
	

	// 관리자 메인 페이지 (GET)
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String adminMainGET(HttpSession session, Model model) throws Exception {

		System.out.println(" C : adminMainGET() 호출 ");

		int pageNum = 1;

		model.addAttribute("pageNum", pageNum);

		return "/mk_admin/main";
	}

	// 도서 등록 (GET)
	// http://localhost:8088/markbook/mk_admin/bookRegister
	@RequestMapping(value = "/bookRegister", method = RequestMethod.GET)
	public String bookRegisterGET(Model model, Criteria criteria) throws Exception {

		System.out.println(" bookRegisterGET() 호출 ");
		
		int count = service.countBook(criteria);
	
		count += 1;
		
		model.addAttribute("b_num", count);
		
		return "/mk_admin/bookRegister";
	}

	// 도서 등록 (POST)
	@RequestMapping(value = "/bookRegister", method = RequestMethod.POST)
	public String bookRegisterPOST(mk_bookVO bvo) throws Exception {

		System.out.println(" bookRegisterPOST() 호출 ");

		service.bookRegister(bvo);

		return "redirect:/mk_admin/listPaging";
	}

	
	// 도서 등록 사진 업로드
	public void imgUpload(MultipartFile b_image) throws Exception {
		
		logger.info(" imgUpload 실행 ");
		
		String uploadFolder = "C:\\upload";
		
		// 
		
		
		
	}

	 
	// 도서 목록 (GET) 
	// http://localhost:8088/markbook/mk_admin/listPaging
	@RequestMapping(value = "/listPaging", method = RequestMethod.GET) 
	public String listPaging(Model model, Criteria criteria) throws Exception {
		
		pageMaker pageMaker = new pageMaker(); 
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(service.countBook(criteria));
	  
		model.addAttribute("bookList", service.bookListCri(criteria));
		model.addAttribute("pageMaker", pageMaker);
	  
		return "/mk_admin/listPaging"; 
	}
	

	// 도서 목록 개별 정보 조회 (GET)
	@RequestMapping(value = "/bookDetail", method = RequestMethod.GET)
	public String bookInfoGET(Integer b_num, Model model) throws Exception {

		mk_bookVO bvo = service.getBInfo(b_num);
		
		model.addAttribute("bvo", service.getBInfo(b_num));
		model.addAttribute("bvo", bvo);

		return "/mk_admin/bookDetail";
	}

	// 도서 수정 (GET)
	// http://localhost:8088/markbook/mk_admin/bookUpdate
	@RequestMapping(value = "/bookUpdate", method = RequestMethod.GET)
	public String bookUpdateGET(HttpSession session, Integer b_num, Model model) throws Exception {

		System.out.println(" C : bookUpdateGET() 호출 ");

		// String admin_id = (String) session.getAttribute("m_id");
		
		// model 객체에 저장
		model.addAttribute("bvo", service.getBInfo(b_num));

		return "/mk_admin/bookUpdate";
	}

	// 도서 수정 (POST)
	@RequestMapping(value = "/bookUpdate", method = RequestMethod.POST)
	public String bookUpdatePOST(mk_bookVO bvo) throws Exception {

		System.out.println(" C : bookUpdatePOST() 호출 ");

		service.updateBook(bvo);

		System.out.println(" 도서 정보 수정 완료 ");

		return "redirect:/mk_admin/bookList";
	}

	// 도서 삭제 (GET)
	@RequestMapping(value = "/bookDelete", method = RequestMethod.GET)
	public String bookDeleteGET(Integer b_num) throws Exception {

		System.out.println(" C : bookDeleteGET() 호출 ");

		service.deleteBook(b_num);

		System.out.println(" 삭제 완료 ");

		return "redirect:/mk_admin/listPaging";
	}

	// 전체 회원 목록 조회 (GET)
	// http://localhost:8088/markbook/mk_admin/memberList
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList(Model model, Criteria criteria) throws Exception {

		logger.info("memberList() 호출");
		
		pageMaker pageMaker = new pageMaker(); 
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(service.countMember(criteria));
	  
		model.addAttribute("memberList", service.mListCri(criteria));
		model.addAttribute("pageMaker", pageMaker);
		

		return "/mk_admin/memberList";
	}

	// 회원 개별 정보 조회 (GET)
	// http://localhost:8088/markbook/mk_admin/memberInfo
	@RequestMapping(value = "/memberInfo", method = RequestMethod.GET)
	public String memberInfoGET(HttpSession session, String m_id, Model model) throws Exception {

		logger.info("memberInfo() 호출");
		
		mk_memberVO mvo = service.memberInfo(m_id);

		model.addAttribute("mvo", mvo);

		return "/mk_admin/memberInfo";
	}

	// 회원 개별 정보 수정 (GET)
	// http://localhost:8088/markbook/mk_admin/memberUpdate
	@RequestMapping(value = "/memberUpdate", method = RequestMethod.GET)
	public String memberUpdateGET(String m_id, Model model) throws Exception {

		model.addAttribute("mvo", service.memberInfo(m_id));

		return "/mk_admin/memberUpdate";
	}

	// 회원 개별 정보 수정 (POST)
	@RequestMapping(value = "/memberUpdate", method = RequestMethod.POST)
	public String memberUpdatePOsST(mk_memberVO mvo) throws Exception {

		service.updateMember(mvo);

		return "redirect:/mk_admin/memberList";
	}

	// 회원 개별 정보 삭제 (GET)
	@RequestMapping(value = "/memberDelete", method = RequestMethod.GET)
	public String memberDeleteGET(String m_id) throws Exception {

		service.deleteMember(m_id);

		return "redirect:/mk_admin/memberList";
	}

}
