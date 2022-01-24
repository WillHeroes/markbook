package com.markbook.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.mk_requestBoardVO;
import com.markbook.domain.mk_memberVO;
import com.markbook.persistence.mk_memberDAO;
import com.markbook.persistence.mk_requestBoardDAO;

@Service
public class mk_requestBoardServiceImpl implements mk_requestBoardService{
	
	@Inject
	private mk_requestBoardDAO rbdao;
	
	@Inject
	private mk_memberDAO mdao;
// 요청게시판 글 등록
	@Override
	public void addBoard(mk_requestBoardVO rbvo) {
		rbdao.addBoard(rbvo);
		
	}
// 게시글 수+ 검색기능
	@Override
	public int count( String searchType, String keyword) throws Exception {
		
		return rbdao.count(searchType,keyword);
	}
	// 게시글 수+ 카테고리 
		@Override
		public int count2(int result) throws Exception {
			
			return rbdao.count2(result);
		}
	// 게시글 수 
		@Override
		public int jcount() throws Exception {
			
			return rbdao.jcount();
		}
	//@@@@@@@@@@@@@@@게시판 목록
	@Override
	public List<mk_requestBoardVO> requestList(int displayPost, int postNum, String searchType, String keyword,int result) {
		
		return rbdao.requestList(displayPost, postNum,searchType,keyword,result);
	}
	//@@@@@@@@@@@@2게시판 상세페이지
	@Override
	public mk_requestBoardVO requestDetail(int r_num) {
		mk_requestBoardVO rvo = rbdao.requestDetail(r_num);
		return rvo;
		
	}
	@Override
	public void reqeustUpdate(mk_requestBoardVO rvo) {
		rbdao.requestUpdate(rvo);
		
	}
	@Override
	public mk_memberVO profile(String m_id) throws Exception {

		return mdao.profile(m_id);
	}
	//요청게시판 특정회원의 요청목록
	@Override
	public List<mk_requestBoardVO>  onelist(String r_m_id) throws Exception {
	
		return rbdao.onelist(r_m_id);
	}
}
