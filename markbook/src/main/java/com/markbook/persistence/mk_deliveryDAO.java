package com.markbook.persistence;

import com.markbook.domain.borrowVO;

public interface mk_deliveryDAO {
	
	// 대출정보 조회
	public borrowVO getInfo(Integer bor_num) throws Exception;
	
	
	

}
