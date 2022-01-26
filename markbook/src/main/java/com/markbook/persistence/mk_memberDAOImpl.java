package com.markbook.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.markbook.domain.mk_memberVO;

@Repository
public class mk_memberDAOImpl implements mk_memberDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.markbook.mapper.memberMapper";
	
	@Override
	public int memberIdChk(String m_id) throws Exception {

		return sqlSession.selectOne(namespace + ".idChk", m_id);
	}

	@Override
	public void memberInsert(mk_memberVO mvo) throws Exception {
		
		sqlSession.insert(namespace + ".insertMember", mvo);
		
	}

	@Override
	public boolean memberLoginChk(mk_memberVO mvo) throws Exception {
				
		boolean flag = sqlSession.selectOne(namespace + ".loginChk", mvo);
		
		return flag;
	}

	@Override
	public boolean socialCheck(mk_memberVO mvo) throws Exception {
		
		boolean isJoin = sqlSession.selectOne(namespace + ".socialChk", mvo);
		
		if (!isJoin) {
			memberInsert(mvo);
			System.out.println("회원가입 완료");
			return false;
		}
		else {
			System.out.println("이미 존재하는 아이디입니다.");
			return true;
		}
	}

	@Override
	public void updatePw(mk_memberVO vo) throws Exception {
		 sqlSession.update(namespace+".updatePw", vo);
	}

	@Override
	public void naverJoin(mk_memberVO mvo) throws Exception {
				
		sqlSession.insert(namespace+".insertNaver", mvo);
	}

	@Override
	public String findId(mk_memberVO mvo) throws Exception {
		
		String tmp = sqlSession.selectOne(namespace + ".findId", mvo);
		
		if (tmp == null) tmp = "none";
		
		return tmp;
	}

	@Override
	public mk_memberVO readMember(String m_id) throws Exception {
		
		mk_memberVO mvo = sqlSession.selectOne(namespace+".readMember", m_id);
		
		return mvo;
	}

	@Override
	public mk_memberVO profile(String m_id) throws Exception {
		
		return sqlSession.selectOne(namespace + ".profile", m_id);
	}

	@Override
	public boolean passChk(mk_memberVO mvo) throws Exception {
		
		return sqlSession.selectOne(namespace + ".passChk", mvo);
	}

	@Override
	public void editPro(mk_memberVO mvo) throws Exception {
		
		sqlSession.update(namespace + ".editPro", mvo);
	}

	@Override
	public String profileName(String m_id) throws Exception {
		
		return sqlSession.selectOne(namespace + ".profileName", m_id);
	}


}
