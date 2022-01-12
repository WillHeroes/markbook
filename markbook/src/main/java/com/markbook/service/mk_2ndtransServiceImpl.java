package com.markbook.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.markbook.domain.SearchVO;
import com.markbook.domain.book_orderVO;
import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.domain.mk_memberVO;
import com.markbook.model.sjCriteria;
import com.markbook.persistence.mk_2ndtransDAO;
import com.markbook.persistence.mk_2ndtransDAOImpl;

@Service
public class mk_2ndtransServiceImpl implements mk_2ndtransService {

	@Inject
	private mk_2ndtransDAO tdao;
	
	private static final Logger logger = LoggerFactory.getLogger(mk_2ndtransDAOImpl.class);

	// 중고 책 리스트 페이징
	@Override
	public List<mk_2ndhand_bookVO> getlistCri(sjCriteria cri) throws Exception {
		
		logger.info(" S : getListCri(sjCriteria cri) 호출 !");

		return tdao.getlistCri(cri);
	}

	// 중고책 리스트 총 갯수
	@Override
	public int count(sjCriteria cri) throws Exception {
		
		logger.info(" S : count(sjCriteria cri) 호출 !");

		return tdao.count(cri);
	}

	// 중고책 매물 등록
	@Override
	public void bookRegister(mk_2ndhand_bookVO bvo) throws Exception {

		logger.info(" S : bookRegister() 호출 !");
		
		tdao.bookRegister(bvo);
		
		logger.info(" S : bookRegister() 등록완료 !");

	}

	// 중고책 상세 페이지 조회
	@Override
	public mk_2ndhand_bookVO getInfo(Integer b2_num) throws Exception {

		logger.info(" S : getInfo() 호출 !");
		
		mk_2ndhand_bookVO bvo = tdao.getInfo(b2_num);

		return bvo;
	}

	// 중고책 상세 페이지 수정
	@Override
	public void bookModify(mk_2ndhand_bookVO bvo) throws Exception {
		
		logger.info(" S : bookModify() 호출 !");

		tdao.bookModify(bvo);

		logger.info(" S : bookModify() 완료 !");

	}

	// 중고책 상세 페이지 삭제
	@Override
	public void bookDelete(Integer b2_num) throws Exception {

		logger.info(" S : bookDelete() 호출 !");

		tdao.bookDelete(b2_num);

		logger.info(" S : bookDelete() 삭제 !");
	}

	// 중고책 입찰하기
	@Override
	public void bookBid(mk_2ndhand_bookVO bvo) throws Exception {

		logger.info(" S : bookBid() 호출 !");

		tdao.bookBid(bvo);

		logger.info(" S : bookBid() 완료 !");

	}

	// 카트 조회
	@Override
	public List<mk_2ndhand_bookVO> getCart(String b2_buyer_id) throws Exception {

		logger.info(" S : getCart() 호출 !");

		List<mk_2ndhand_bookVO> cartList = tdao.getCart(b2_buyer_id);

		return cartList;
	}

	// 결제창 멤버 정보 조회
	@Override
	public mk_memberVO getMember(String m_id) throws Exception {
		
		logger.info(" S : getMember() 호출 !");

		mk_memberVO mvo = tdao.getMember(m_id);

		return mvo;
	}

	// 판매정보 업데이트
	@Override
	public void soldupdate(Integer b2_num) throws Exception {
		
		logger.info(" S : soldupdate() 호출 !");

		tdao.soldupdate(b2_num);

		logger.info(" S : soldupdate() 완료 !");

	}

	// 주문입력
	@Override
	public void bookchechout(book_orderVO bvo) throws Exception {
		
		logger.info(" S : bookchechout() 호출 !");

		tdao.bookchechout(bvo);

		logger.info(" S : bookchechout() 완료 !");
	}

	// 서치 리스트
	@Override
	public List<mk_2ndhand_bookVO> searchListAll(SearchVO svo, sjCriteria cri) throws Exception {
		
		logger.info(" S : searchListAll() 호출 !");
		
		return tdao.searchListAll(svo, cri);

	}

	// 서치 카운트
	@Override
	public int countSearch(SearchVO svo) throws Exception {
		
		logger.info(" S : countSearch() 호출 !");

		return tdao.countSearch(svo);
	}

}
