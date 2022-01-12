package com.markbook.service;

import java.util.List;

import com.markbook.domain.SearchVO;
import com.markbook.domain.book_orderVO;
import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.domain.mk_memberVO;
import com.markbook.model.sjCriteria;

public interface mk_2ndtransService {
	
	// 중고거래 전체 정보 페이징 처리 조회
	public List<mk_2ndhand_bookVO> getlistCri(sjCriteria cri) throws Exception;
		
	// 중고거래 목록 전체 갯수 조회
	public int count(sjCriteria cri) throws Exception;
	
	// 중고거래 매물 등록
	public void bookRegister(mk_2ndhand_bookVO bvo) throws Exception;
	
	// 중고거래 상세 페이지 조회
	public mk_2ndhand_bookVO getInfo(Integer b2_num) throws Exception;
	
	// 중고거래 상세 페이지 수정하기
	public void bookModify(mk_2ndhand_bookVO bvo) throws Exception;
	
	// 중고거래 상세 페이지 삭제하기
	public void bookDelete(Integer b2_num) throws Exception;
	
	// 중고책 상품 입찰하기
	public void bookBid(mk_2ndhand_bookVO bvo) throws Exception;
	
	// 카트 리스트 조회
	public List<mk_2ndhand_bookVO> getCart(String b2_buyer_id) throws Exception;
	
	// 중고거래 결제창 회원정보 조회
	public mk_memberVO getMember(String m_id) throws Exception;
	
	// 중고책 판매정보 업데이트
	public void soldupdate(Integer b2_num) throws Exception;
	
	// 주문정보 등록
	public void bookchechout(book_orderVO bvo) throws Exception;
	
	// 서치 리스트
	public List<mk_2ndhand_bookVO> searchListAll(SearchVO svo, sjCriteria cri) throws Exception;
	
	// 서치 레코드 갯수
	public int countSearch(SearchVO svo) throws Exception;
	

}
