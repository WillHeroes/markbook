package com.markbook.persistence;

import java.util.List;

import com.markbook.domain.mk_2ndhand_bookVO;

public interface mk_2ndtransDAO {
	
	// 중고거래 메인 리스트 조회
	public List<mk_2ndhand_bookVO> getBookList() throws Exception;
	
	// 중고거래 매물 등록
	public void bookRegister(mk_2ndhand_bookVO bvo) throws Exception;
	
	// 중고거래 상세 페이지 조회
	public mk_2ndhand_bookVO getInfo(Integer b2_num) throws Exception;
	
	// 중고거래 상세 페이지 수정하기
	public void bookModify(mk_2ndhand_bookVO bvo) throws Exception;
	
	// 중고거래 상세 페이지 삭제하기
	public void bookDelete(Integer b2_num) throws Exception;
	

}
