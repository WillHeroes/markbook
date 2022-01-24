package com.markbook.persistence;



import java.util.List;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_requestBoardVO;
import com.markbook.domain.Page;

public interface mk_requestBoardDAO {

	//요청게시판 글 등록
	public void addBoard(mk_requestBoardVO rbvo);
	
	//요청게시판 게시글 총 갯수+검색
	public int count( String searchType, String keyword) throws Exception;
	//요청게시판 게시글 총 갯수 + 카테고리 
	public int count2(int result) throws Exception;
	
	//요청게시판 게시글 총 갯수
	public int jcount() throws Exception;
	
	//요청게시판 관리자 목록
	public List<mk_requestBoardVO> requestList(int displayPost, int postNum, String searchType, String keyword,int result);
	
	//요청게시판 관리자 상세페이지
	public mk_requestBoardVO requestDetail(int r_num);
	
	//요청게시판 관리자 팝업수정창
	public void requestUpdate(mk_requestBoardVO rvo);

	//요청게시판 특정회원의 요청목록
	public List<mk_requestBoardVO>  onelist(String r_m_id);
}
