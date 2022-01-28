package com.markbook.service;

import com.markbook.domain.borrowVO;

public interface mk_deliveryService {
	
	// 대출정보 조회
	public borrowVO getInfo(Integer bor_num) throws Exception;

	

}
