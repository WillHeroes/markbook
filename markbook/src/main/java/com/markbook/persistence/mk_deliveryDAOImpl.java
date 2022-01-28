package com.markbook.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.markbook.domain.borrowVO;

@Repository
public class mk_deliveryDAOImpl implements mk_deliveryDAO {

	@Inject
	private SqlSession sqlSession;

	private static final Logger logger = LoggerFactory.getLogger(mk_deliveryDAOImpl.class);

	// 2ndTransMapper.xml 파일에 접근가능한 이름(주소)
	private static final String namespace = "com.markbook.mapper.deliveryMapper";

	@Override
	public borrowVO getInfo(Integer bor_num) throws Exception {
		
		logger.info(" DAO : getInfo() 호출 ");

		borrowVO bvo = sqlSession.selectOne(namespace + ".deliveryinfo", bor_num);

		return bvo;
	}
	
	

	

}
