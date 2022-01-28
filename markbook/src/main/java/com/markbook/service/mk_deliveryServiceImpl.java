package com.markbook.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.markbook.domain.borrowVO;
import com.markbook.persistence.mk_deliveryDAO;

@Service
public class mk_deliveryServiceImpl implements mk_deliveryService {

	@Inject
	private mk_deliveryDAO ddao;

	private static final Logger logger = LoggerFactory.getLogger(mk_deliveryServiceImpl.class);
	
	// 대출 정보 조회
	@Override
	public borrowVO getInfo(Integer bor_num) throws Exception {
		
		logger.info(" S : getInfo() 호출 !");

		borrowVO bvo = ddao.getInfo(bor_num);

		return bvo;
	}

	

}
