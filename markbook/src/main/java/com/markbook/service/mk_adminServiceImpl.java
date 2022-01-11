package com.markbook.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_bookVO;
import com.markbook.domain.mk_memberVO;
import com.markbook.persistence.mk_adminDAO;

@Service
public class mk_adminServiceImpl implements mk_adminService {

	@Inject
	private mk_adminDAO madao;
	
	// 도서 등록
	@Override
	public void bookRegister(mk_bookVO bvo) throws Exception {
		
		System.out.println(" S : bookRegister(bookVO bvo) 호출 -> DAO - bookRegister(mk_bookVO bvo) 호출 ");
		
		madao.bookRegister(bvo);
		
		System.out.println(" 도서등록 완료 -> 컨트롤러 이동 ");
	}


	// 도서 목록
	@Override
	public List<mk_bookVO> getBookList() throws Exception {
		
		System.out.println(" S : getBookList() 호출 ");
		
		List<mk_bookVO> bookList = madao.getBookList();
		
		return bookList;
	}

	// 도서 목록 페이징처리
	@Override
	public List<mk_bookVO> bListCri(Criteria cri) throws Exception {
		System.out.println(" S : listCri(Criteria cri) 호출 ");
		
		return madao.bListCri(cri);
	}
	
	// 도서 목록 전체 갯수 조회
	@Override
	public int countBook(Criteria cri) throws Exception {
		
		return madao.countBook(cri);
	}

	// 도서 수정
	@Override
	public void updateBook(mk_bookVO bvo) throws Exception {
		
		System.out.println(" S : updateBook(mk_bookVO bvo) 호출 -> DAO : updateBook(mk_bookVO bvo) 호출 ");
		
		madao.updateBook(bvo);
	}


	// 도서 삭제
	@Override
	public void deleteBook(Integer b_num) throws Exception {

		System.out.println(" S : deleteBook(Integer b_num) 호출 -> DAO : deleteBook(Integer b_num) 호출 ");
		
		madao.deleteBook(b_num);
	}


	// 도서 목록 개별 정보 조회 
	@Override
	public mk_bookVO getBInfo(Integer b_num) throws Exception {
		
		System.out.println(" S : getBInfo(Integer b_num) 호출 -> DAO : getBInfo(Integer b_num) 호출 ");
	
		mk_bookVO bvo = madao.getBInfo(b_num);
		
		return bvo;
	}

	
	// 회원 목록 페이징처리
	@Override
	public List<mk_memberVO> mListCri(Criteria cri) throws Exception {
		
		return madao.mListCri(cri);
	}

	
	// 전체 회원 목록 갯수 조회
	@Override
	public int countMember(Criteria cri) throws Exception {

		return madao.countMember(cri);
	}

	
	// 회원 개별 정보 조회
	@Override
	public mk_memberVO memberInfo(String m_id) throws Exception {
		
		mk_memberVO mvo = madao.memberInfo(m_id);
		
		return mvo;
	}


	// 회원 개별 정보 수정
	@Override
	public void updateMember(mk_memberVO uvo) throws Exception {

		madao.updateMember(uvo);
	}

	
	// 회원 개별 정보 삭제
	@Override
	public void deleteMember(String m_id) throws Exception {

		madao.deleteMember(m_id);
	}

	
	
	





	


	

	
	
	
	
	
}
