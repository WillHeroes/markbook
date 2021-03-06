package com.markbook.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.markbook.controller.mk_adminController;
import com.markbook.domain.mk_adminVO;
import com.markbook.persistence.mk_adminDAO;
import com.markbook.persistence.mk_adminMainDAO;
import com.markbook.persistence.mk_adminMainDAOImpl;

@Service
public class mk_adminMainServiceImpl implements mk_adminMainService {

	private static final Logger logger = LoggerFactory.getLogger(mk_adminController.class);
	
	@Inject
	private mk_adminMainDAO madao;

	@Override
	public List<mk_adminVO> getBorrow() throws Exception {
		return madao.getBorrow();
	}
	


	
	
	
}
