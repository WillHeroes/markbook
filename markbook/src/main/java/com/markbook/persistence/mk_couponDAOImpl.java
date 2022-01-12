package com.markbook.persistence;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class mk_couponDAOImpl implements mk_couponDAO{
	//디비연결
	@Inject
	private SqlSession sqlSession;

	private static final String namespace="com.markbook.mapper.requestBoardMapper";
	

	
}
