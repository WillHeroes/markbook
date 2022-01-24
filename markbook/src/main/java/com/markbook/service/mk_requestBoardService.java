package com.markbook.service;

import java.util.List;

import com.markbook.domain.mk_requestBoardVO;
import com.markbook.domain.mk_memberVO;

public interface mk_requestBoardService {


	//요청게시판 글 등록
	public void addBoard(mk_requestBoardVO rbvo);	
	//요청게시판 총 게시글 수 + 검색
	public int count( String searchType, String keyword) throws Exception;
	//요청게시판 + 결과값
	public int count2(int result) throws Exception;
	//요청게시판 게시글 수 
	public int jcount() throws Exception;
	
	//요청게시판 리스트
	public List<mk_requestBoardVO> requestList(int displayPost, int postNum, String searchType, String keyword,int result);
	
   //요청게시판 상세페이지
	public mk_requestBoardVO requestDetail(int r_num);
	
	//요청게시판 관리자 팝업수정창
	public void reqeustUpdate(mk_requestBoardVO rvo);
	
	//요청게시판 관리자 회원정보
	public mk_memberVO profile(String m_id)throws Exception;
	
	//요청게시판 특정회원의 요청목록
	public List<mk_requestBoardVO>  onelist(String r_m_id)throws Exception;
}
