package com.markbook.service;

import java.util.List;

import com.markbook.domain.mk_calendarTempVO;
import com.markbook.domain.mk_calendarVO;

public interface mk_calendarService {
	
	// 캘린더 불러오기
	public List<mk_calendarTempVO> selectCal(String m_id) throws Exception;
}
