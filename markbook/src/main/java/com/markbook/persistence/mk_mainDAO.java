package com.markbook.persistence;

import java.util.List;

import com.markbook.domain.mk_bookVO;

public interface mk_mainDAO {
	
	public List<mk_bookVO> borrbest() throws Exception;
	public List<mk_bookVO> borrbest(String category) throws Exception;
    //별점게시판
	public mk_bookVO bookreview(int b_num)throws Exception;
}
