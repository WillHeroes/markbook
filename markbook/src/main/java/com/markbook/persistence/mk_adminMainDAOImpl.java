package com.markbook.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class mk_adminMainDAOImpl implements mk_adminMainDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(mk_adminMainDAOImpl.class);
	
	private static final String namespace = "com.markbook.mapper.adminMapper";


}
