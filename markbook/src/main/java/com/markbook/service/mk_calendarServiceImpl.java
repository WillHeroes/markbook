package com.markbook.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.mk_calendarTempVO;
import com.markbook.domain.mk_calendarVO;
import com.markbook.persistence.mk_calendarDAO;

@Service
public class mk_calendarServiceImpl implements mk_calendarService {

	@Inject
	private mk_calendarDAO cdao;
	
	@Override
	public List<mk_calendarTempVO> selectCal(String m_id) throws Exception {
		
		return cdao.selectCal(m_id);
	}

	@Override
	public void insertCal(mk_calendarTempVO ctvo, String m_id) throws Exception {
		
		cdao.insertCal(ctvo, m_id);
		
	}
	

}
