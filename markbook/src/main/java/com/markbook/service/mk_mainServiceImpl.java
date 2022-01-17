package com.markbook.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.mk_bookVO;
import com.markbook.persistence.mk_mainDAO;

@Service
public class mk_mainServiceImpl implements mk_mainService {

	@Inject
	private mk_mainDAO madao;

	@Override
	public List<mk_bookVO> borrBest() throws Exception {
		
		List<mk_bookVO> list = madao.borrbest();
		System.out.println("서비스 도착");
		return list;
	}

	@Override
	public List<mk_bookVO> borrBest(String category) throws Exception {
		
		List<mk_bookVO> list = madao.borrbest(category);
		System.out.println("서비스 도착2");
		return list;
	}


}
