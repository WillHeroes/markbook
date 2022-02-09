package com.markbook.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.markbook.domain.mk_calendarTempVO;
import com.markbook.domain.mk_calendarVO;

@Repository
public class mk_calendarDAOImpl implements mk_calendarDAO {
	

	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.markbook.mapper.calendarMapper";

	@Override
	public List<mk_calendarTempVO> selectCal(String m_id) throws Exception {
		
		List<Integer> list = sqlSession.selectList(namespace + ".selectNum", m_id);
		System.out.println("list : "+list);
		
		List<mk_calendarTempVO> ctvo = sqlSession.selectList(namespace + ".selectCal", list);
		System.out.println("ctvo : "+ctvo);
		return ctvo;
	}


	
}
