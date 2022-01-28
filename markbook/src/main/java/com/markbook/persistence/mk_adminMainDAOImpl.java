package com.markbook.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.markbook.domain.mk_adminVO;

@Repository
public class mk_adminMainDAOImpl implements mk_adminMainDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(mk_adminMainDAOImpl.class);
	
	private static final String namespace = "com.markbook.mapper.adminMainMapper";

	@Override
	public List<mk_adminVO> getBorrow() throws Exception {
		
		List<mk_adminVO> list = sqlSession.selectList(namespace + ".getBorrow");
		System.out.println(list.toString());
		
		return sqlSession.selectList(namespace + ".getBorrow");
	}


}
