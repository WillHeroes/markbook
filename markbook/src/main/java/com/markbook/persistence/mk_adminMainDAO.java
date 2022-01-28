package com.markbook.persistence;

import java.util.List;

import com.markbook.domain.mk_adminVO;

public interface mk_adminMainDAO {
	
	public List<mk_adminVO> getBorrow() throws Exception;


	
}
