package com.markbook.service;

import java.util.List;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_bookVO;
import com.markbook.domain.mk_memberVO;

public interface mk_adminService {
	
	
	// 도서 등록
	public void bookRegister(mk_bookVO bvo) throws Exception;
	
	// 도서 목록
	public List<mk_bookVO> getBookList() throws Exception;
	
	// 도서 목록 페이징처리 (Cri)
	//public List<mk_bookVO> bListCri(Criteria cri) throws Exception;
	List<mk_bookVO> bookListCri(Criteria criteria) throws Exception;
	
	// 도서 목록 전체 갯수 조회
	public int countBook(Criteria criteria) throws Exception;
	
	// 도서 목록 개별 정보 조회 
	public mk_bookVO getBInfo(Integer b_num) throws Exception;
	
	// 도서 수정
	public void updateBook(mk_bookVO bvo) throws Exception;
	
	// 도서 삭제
	public void deleteBook(Integer b_num) throws Exception;
	
	// 전체 회원 목록 
	public List<mk_memberVO> getMList() throws Exception;
	
	// 회원 목록 페이징처리
	public List<mk_memberVO> mListCri(Criteria cri) throws Exception;
	
	// 전체 회원 목록 갯수 조회
	public int countMember(Criteria cri) throws Exception;
	
	// 회원 개별 정보 조회
	public mk_memberVO memberInfo(String m_id) throws Exception;
	
	// 회원 개별 정보 수정
	public void updateMember(mk_memberVO mvo) throws Exception;
	
	// 회원 개별 정보 삭제
	public void deleteMember(String m_id) throws Exception;

	
	
	
		

}
