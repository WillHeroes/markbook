package com.markbook.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_bookVO;
import com.markbook.domain.mk_memberVO;

@Repository
public class mk_adminDAOImpl implements mk_adminDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(mk_adminDAOImpl.class);
	
	private static final String namespace = "com.markbook.mapper.adminMapper";

	
	// 도서 등록
	@Override
	public void bookRegister(mk_bookVO bvo) throws Exception {
		
		System.out.println(" DAO - bookRegister(mk_bookVO bvo) 호출 ");
		
		sqlSession.insert(namespace+".bookRegister",bvo);
		
		System.out.println(" bookRegister(mk_bookVO bvo) 등록 ");
	}


	// 도서 목록 전체 조회
	@Override
	public List<mk_bookVO> getBookList() throws Exception {
		
		System.out.println( " DAO : getBookList() 호출 ");
		
		List<mk_bookVO> bookList = sqlSession.selectList(namespace+".bookList");
		
		return bookList;
	}

	
	// 전체 도서 목록 페이징 처리
	@Override
	public List<mk_bookVO> listPaging(int page) throws Exception {
		
		System.out.println(" DAO : listPaging(int page) 호출 ");
		
		if (page <= 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
		
		return sqlSession.selectList(namespace+".listPaging",page);
	}
	
	@Override
	public List<mk_bookVO> bookListCri(Criteria criteria) throws Exception {
		
		return sqlSession.selectList(namespace+".bookListCri", criteria);
	}


	
	// 도서 목록 전체 갯수 조회 
	@Override
	public int countBook() throws Exception {
		
		System.out.println(" DAO : countBook(Criteria cri) 호출 ");
		
		return sqlSession.selectOne(namespace+".countBook");
	}
	
	// 도서 목록 개별 정보 조회 
	@Override
	public mk_bookVO getBInfo(Integer b_num) throws Exception {
		
		System.out.println(" DAO : getBInfo(Integer b_num) 호출 ");
		
		mk_bookVO bvo = sqlSession.selectOne(namespace+".bInfo", b_num);
		
		return bvo;
	}
	
	// 도서 수정
	@Override
	public void updateBook(mk_bookVO bvo) throws Exception {

		System.out.println(" DAO : updateBook(mk_bookVO bvo) 호출 ");
		
		sqlSession.update(namespace+".bookUpdate", bvo);
	}


	// 도서 삭제
	@Override
	public void deleteBook(Integer b_num) throws Exception {
		
		System.out.println(" DAO : deleteBook(Integer b_num) 호출 ");
		
		sqlSession.delete(namespace+".bookDelete",b_num);
	}


	// 회원 데이터
	@Override
	public void insertMember(mk_memberVO mvo) throws Exception {

		sqlSession.delete(namespace+".insertMember", mvo);
		
	}

	// 전체 회원 목록
	@Override
	public List<mk_memberVO> getMList() throws Exception {
		
		logger.info(" DAO : getMList() -> mapper ");
		
		logger.info(" mapper -> S : getMList() ");
		
		//List<mk_memberVO> memberList = sqlSession.selectList(namespace+".memberList");
		
		return sqlSession.selectList(namespace+".memberList");
	}

	// 전체 회원 목록 갯수 조회
	@Override
	public int countMember(Criteria cri) throws Exception {
		
		return sqlSession.selectOne(namespace+".countMember", cri);
	}


	// 전체 회원 목록 페이징 처리 조회
	@Override
	public List<mk_memberVO> mListCri(Criteria cri) throws Exception {
		
		return sqlSession.selectList(namespace+".mListCri", cri);
	}

	// 회원 개별 정보 조회
	@Override
	public mk_memberVO memberInfo(String m_id) throws Exception {
		
		mk_memberVO mvo = sqlSession.selectOne(namespace+".mInfo", m_id);
		
		return mvo;
	}

	// 회원 개별 정보 수정
	@Override
	public void updateMember(mk_memberVO mvo) throws Exception {

		sqlSession.update(namespace+".mUpdate", mvo);
	}

	// 회원 개별 정보 삭제
	@Override
	public void deleteMember(String m_id) throws Exception {

		sqlSession.delete(namespace+".mDelete", m_id);
	}















	
	
	
	
	
	
	
	
	
	
	
	
}
