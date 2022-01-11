package com.markbook.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.markbook.domain.SearchVO;
import com.markbook.domain.book_orderVO;
import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.domain.mk_memberVO;
import com.markbook.model.sjCriteria;

@Repository
public class mk_2ndtransDAOImpl implements mk_2ndtransDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(mk_2ndtransDAOImpl.class);
	
	// 2ndTransMapper.xml 파일에 접근가능한 이름(주소)
	private static final String namespace = "com.markbook.mapper.2ndTransMapper";

	// 페이징 리스트 불러오기
	@Override
	public List<mk_2ndhand_bookVO> getlistCri(sjCriteria cri) throws Exception {
		
		logger.info(" DAO : getListCri(sjCriteria cri) 호출 !");

		return sqlSession.selectList(namespace + ".getListCri", cri);
	}
	
	// 중고거래 총 갯수 조회
	@Override
	public int count(sjCriteria cri) throws Exception {
		
		logger.info(" DAO : count(sjCriteria cri) 호출 !");
		
		return sqlSession.selectOne(namespace+".count", cri);
	}
	
	
	// 상품 등록
	@Override
	public void bookRegister(mk_2ndhand_bookVO bvo) throws Exception {
		
		logger.info(" DAO : bookRegister() 호출 ");
				
		sqlSession.insert(namespace + ".bookregister", bvo);
		
		logger.info(" DAO : 매물 데이터 입력완료");
				
	}
	
	// 상세 페이지 조회
	@Override
	public mk_2ndhand_bookVO getInfo(Integer b2_num) throws Exception {
		
		logger.info(" DAO : getInfo() 호출 " );
		
		mk_2ndhand_bookVO bvo = sqlSession.selectOne(namespace+".getinfo",b2_num);
						
		return bvo;
	}
	
	// 상세 페이지 수정하기
	@Override
	public void bookModify(mk_2ndhand_bookVO bvo) throws Exception {
		
		logger.info(" DAO : bookModify() 호출 ");
		
		sqlSession.update(namespace + ".bookupdate", bvo);
		
		logger.info(" DAO : 페이지 수정완료");	
	}
	
	// 상세 페이지 삭제하기
	@Override
	public void bookDelete(Integer b2_num) throws Exception {
		
		logger.info(" DAO : bookDelete() 호출 ");
		
		sqlSession.delete(namespace + ".bookdelete", b2_num);
		
		logger.info(" DAO : 삭제완료");	
		
	}
	
	// 중고책 입찰하기
	@Override
	public void bookBid(mk_2ndhand_bookVO bvo) throws Exception {
		
		logger.info(" DAO : bookBid() 호출 ");
		
		sqlSession.update(namespace + ".priceupdate", bvo);
		
		logger.info(" DAO : 입찰 완료");	
	}
	
	// 카트 리스트 조회
	@Override
	public List<mk_2ndhand_bookVO> getCart(String b2_buyer_id) throws Exception {
		
		logger.info(" DAO : getCart() 호출 ");
		
		List<mk_2ndhand_bookVO> cartList = sqlSession.selectList(namespace+".getcart", b2_buyer_id);
				
		return cartList;
	}
	
	
	// 결제창 회원정보 조회
	@Override
	public mk_memberVO getMember(String m_id) throws Exception {
		
		logger.info(" DAO : getMember() 호출 " );
		
		mk_memberVO mvo = sqlSession.selectOne(namespace+".getmember",m_id);
						
		return mvo;
		
	}
	
	// 판매정보 업데이트
	@Override
	public void soldupdate(Integer b2_num) throws Exception {
		
		logger.info(" DAO : soldupdate() 호출 ");
		
		sqlSession.update(namespace + ".soldupdate", b2_num);
		
		logger.info(" DAO : 판매완료 업데이트");
			
	}
	
	// 주문 정보 등록
	@Override
	public void bookchechout(book_orderVO bvo) throws Exception {
		
		logger.info(" DAO : bookchechout() 호출 ");
		
		sqlSession.insert(namespace + ".bookchechout", bvo);
		
		logger.info(" DAO : 주문 입력완료");
	}
	
	// 상단검색바 조회 결과 리스트
	@Override
	public List<mk_2ndhand_bookVO> searchListAll(SearchVO svo, sjCriteria cri) throws Exception {
		
		logger.info(" DAO : searchListAll() 호출 ");
						
		// 검색옵션과 페이징 값을 맵에 저장
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("option", svo.getOption());
		map.put("skip", cri.getSkip());
		map.put("pageAmount", cri.getPageAmount());
				
		return sqlSession.selectList(namespace + ".searchlist", map);
	}
	
	// 상단 검색 서치 카운트
	@Override
	public int countSearch(SearchVO svo) throws Exception {
		
		logger.info(" DAO : countSearch() 호출 ");
		
		return sqlSession.selectOne(namespace + ".countsearch", svo);
	}
	
	// 왼쪽 카테고리 검색 결과 리스트
	@Override
	public List<mk_2ndhand_bookVO> cateList(SearchVO svo, sjCriteria cri) throws Exception {
		
		logger.info(" DAO : cateList() 호출 ");
	
		// 검색옵션과 페이징 값을 맵에 저장
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("b2_category", svo.getB2_category());
		map.put("b2_bookstatus", svo.getB2_bookstatus());
		map.put("b2_sellstatus", svo.getB2_sellstatus());
		map.put("skip", cri.getSkip());
		map.put("pageAmount", cri.getPageAmount());
		
		System.out.println(map);
				
		return sqlSession.selectList(namespace + ".catelist", map);
	}
	
	// 왼쪽 카테고리 검색 결과 리스트 갯수
	@Override
	public int countCate(SearchVO svo) throws Exception {
		
		logger.info(" DAO : countCate() 호출 ");
		
		// 검색옵션 저장
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("b2_category", svo.getB2_category());
		map.put("b2_bookstatus", svo.getB2_bookstatus());
		map.put("b2_sellstatus", svo.getB2_sellstatus());
		
		System.out.println(map);
		
		return sqlSession.selectOne(namespace + ".countcate", map);
	}

	
	

}
