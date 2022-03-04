package com.markbook.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		return sqlSession.selectList(namespace + ".selectCal", list);
	}

	@Override
	public void insertCal(mk_calendarTempVO ctvo, String m_id) throws Exception {
		
		String tmp = sqlSession.selectOne(namespace + ".selectMaxNum");
		int num = 0; // 1부터 시작
		
		if (tmp != null) num = Integer.parseInt(tmp);
		
		ctvo.setId(++num);
		sqlSession.insert(namespace + ".insertCaltmp", ctvo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", ctvo.getId());
		map.put("m_id", m_id);
		
		sqlSession.insert(namespace + ".insertCal", map);
	}

	@Override
	public boolean deleteCal(String id) throws Exception {
		boolean checkId = sqlSession.selectOne(namespace + ".selectId", id);
		
		if (checkId) { // 개인 일정
			sqlSession.delete(namespace + ".deleteCal", id);
			return true;
		}
		else return false;
	}


	
}
