package com.markbook.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.markbook.domain.mk_bookVO;

@Repository
public class mk_mainDAOImpl implements mk_mainDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.markbook.mapper.mainMapper";

	@Override
	public List<mk_bookVO> borrbest() throws Exception {
		System.out.println("dao 도착");
		List<mk_bookVO> list = sqlSession.selectList(namespace+".borrbest");
		return list;
	}

	@Override
	public List<mk_bookVO> borrbest(String category) throws Exception {
		System.out.println("dao2 도착");
		List<mk_bookVO> list = sqlSession.selectList(namespace+".borrbest2",category);
		return list;
	}
    
	//별점게시판
	@Override
	public mk_bookVO bookreview(int b_num) throws Exception {
		
		return sqlSession.selectOne(namespace+".bookreview",b_num);
	}

}
