package com.markbook.service;

import java.util.List;

import com.markbook.domain.mk_bookVO;

public interface mk_mainService {
	
	public List<mk_bookVO> borrBest() throws Exception;

}
