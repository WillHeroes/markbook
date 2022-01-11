package com.markbook.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.persistence.mk_couponDAO;

@Service
public class mk_couponServiceImpl implements mk_couponService{
	
	@Inject
	private mk_couponDAO cdao;
	


}
