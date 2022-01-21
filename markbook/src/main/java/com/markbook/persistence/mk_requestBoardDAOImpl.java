package com.markbook.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_requestBoardVO;
import com.markbook.domain.Page;
import com.mysql.cj.x.protobuf.MysqlxCrud.Update;

@Repository
public class mk_requestBoardDAOImpl implements mk_requestBoardDAO{
	//디비연결
	@Inject
	private SqlSession sqlSession;

	private static final String namespace="com.markbook.mapper.requestBoardMapper";
	
	//요청 게시판 글 등록
	@Override
	public void addBoard(mk_requestBoardVO rbvo) {
		System.out.println("DAO:addBoard 호출@@@");
		sqlSession.insert(namespace+".addBoard",rbvo);
		
		
	}

	//게시글 총 갯수
	@Override
	public int count( String searchType, String keyword) throws Exception {
	System.out.println("DAO:countBoard 호출 @@");
	HashMap<String, Object> data = new HashMap<String, Object>();
	 
	 data.put("searchType", searchType);
	 data.put("keyword", keyword);
	 
	return sqlSession.selectOne(namespace+".requestCount",data);
	}
	//게시글 총 갯수
	@Override
	public int count2(int result) throws Exception {
		System.out.println("DAO:countBoard 호출 @@");

		
		return sqlSession.selectOne(namespace+".requestCount2",result);
	}
	@Override
	public int jcount() throws Exception {
		return sqlSession.selectOne(namespace+".Count");
	}

	@Override
	public List<mk_requestBoardVO> requestList(int displayPost, int postNum, String searchType, String keyword,int result) {
		System.out.println("DAO:list 호출 @@");
		
  HashMap<String, Object> data = new HashMap<String,  Object>();
		  
		  data.put("displayPost", displayPost);
		  data.put("postNum", postNum);
		
		  data.put("searchType", searchType);
		  data.put("keyword", keyword);
		  
		  data.put("result", result);
		
		return sqlSession.selectList(namespace+".requestList",data);
	}
	
	
    //요청게시판 관리자 상세페이지mk_requestBoardDAOImpl.java
	@Override
	public mk_requestBoardVO requestDetail(int r_num) {
		mk_requestBoardVO rvo= sqlSession.selectOne(namespace+".requestDetail",r_num);
		
		return rvo;
		
	}

	@Override
	public void requestUpdate(mk_requestBoardVO rvo) {
	sqlSession.update(namespace+".requestUpdate",rvo);
		
	}
	//요청게시판 특정회원의 요청목록
	@Override
	public List<mk_requestBoardVO> onelist(String r_m_id) {
		return sqlSession.selectList(namespace+".onelist",r_m_id);
	}


	
}
