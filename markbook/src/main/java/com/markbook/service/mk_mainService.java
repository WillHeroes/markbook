package com.markbook.service;

import java.util.List;

import com.markbook.domain.mk_bookVO;

public interface mk_mainService {
	
	public List<mk_bookVO> borrBest() throws Exception;
	public List<mk_bookVO> borrBest(String category) throws Exception;
	// 별점게시판
    public mk_bookVO review(int b_num)throws Exception;
}
