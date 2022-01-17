package com.markbook.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.markbook.controller.mk_adminController;
import com.markbook.persistence.mk_adminDAO;

@Service
public class mk_adminMainServiceImpl implements mk_adminMainService {

	private static final Logger logger = LoggerFactory.getLogger(mk_adminController.class);
	
	@Inject
	private mk_adminDAO madao;
	


	
	
	
}
