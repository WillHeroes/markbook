package com.markbook.service;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.markbook.domain.mk_memberVO;
import com.markbook.persistence.mk_memberDAO;

@Service
public class mk_memberServiceImpl implements mk_memberService {

	@Inject
	private mk_memberDAO mdao;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public int memberIdChk(String m_id) throws Exception {
		
		return mdao.memberIdChk(m_id);
	}

	@Override
	public void memberInsert(mk_memberVO mvo) throws Exception {
		
		mdao.memberInsert(mvo);
	}

	@Override
	public boolean memberLoginChk(mk_memberVO mvo) throws Exception {

		return mdao.memberLoginChk(mvo);
	}

	@Override
	public int socialCheck(mk_memberVO mvo) throws Exception {
		
		return mdao.socialCheck(mvo);
	}

	@Override
	public void findPw(HttpServletResponse response, mk_memberVO vo) throws Exception {
		
		response.setContentType("text/html;charset=utf-8");
		mk_memberVO ck = mdao.readMember(vo.getM_id());
		PrintWriter out = response.getWriter();
		
		//가입된 아이디가 없으면
		if(mdao.memberIdChk(vo.getM_id()) == 0) {
			out.print("<script>alert('등록되지 않은 아이디입니다.'); history.back();</script>");
			out.close();
		}
		//가입된 아이디의 이메일과 입력한 이메일이 다르면
		else if(!vo.getM_email().equals(ck.getM_email())) {
			out.print("<script>alert('등록되지 않은 이메일입니다.'); history.back();</script>");
			out.close();

		}else {

		String pw = "";
		for (int i = 0; i < 12; i++) {
			pw += (char) ((Math.random() * 26) + 97);
		}
		vo.setM_pw(pw);
		// 비밀번호 변경
		mdao.updatePw(vo);
		// 비밀번호 변경 메일 발송
		sendEmail(vo);
		out.print("<script>alert('임시비밀번호가 이메일로 발송되었습니다.'); location.href='/markbook/mk_member/login';</script>");
		out.close();
		}
	}

	@Override
	public void sendEmail(mk_memberVO vo) throws Exception {


		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "willheroes@naver.com";
		String subject = "";
		String msg = "";


			subject = "markbook 임시 비밀번호 입니다.";
			
			msg = "<div align='center' style='border:1px solid black; font-family:verdana'>"
					+"<h3 style='color: blue;'>"
					+ vo.getM_id() + "님의 임시 비밀번호 입니다.</h3>"
			        + "<br><p>임시 비밀번호 : "
			        + vo.getM_pw()
					+ "<br>" +"비밀번호를 변경하여 사용하세요."
					+ "</p></div>";


		// 받는 사람 E-Mail 주소
		String to = vo.getM_email();

		try {
			// 메일 내용 넣을 객체와, 이를 도와주는 Helper 객체 생성
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");

			// 메일 내용을 채워줌
			mailHelper.setFrom(fromEmail);	// 보내는 사람 셋팅
			mailHelper.setTo(to);		// 받는 사람 셋팅
			mailHelper.setSubject(subject);	// 제목 셋팅
			mailHelper.setText(msg, true);	// 내용 셋팅

			// 메일 전송
			mailSender.send(mail);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	//네이버 소셜로그인 회원가입
	@Override
	public void naverJoin(mk_memberVO mvo) throws Exception {
		mdao.naverJoin(mvo);
	}

	@Override
	public String findId(mk_memberVO mvo) throws Exception {
		
		return mdao.findId(mvo);
	}

	@Override
	public mk_memberVO profile(String m_id) throws Exception {

		return mdao.profile(m_id);
	}

	@Override
	public boolean passChk(mk_memberVO mvo) throws Exception {
	
		return mdao.passChk(mvo);
	}

	@Override
	public void editPro(mk_memberVO mvo) throws Exception {
		
		mdao.editPro(mvo);
	}

	@Override
	public String profileName(String m_id) throws Exception {
		
		return mdao.profileName(m_id);
	}

	@Override
	public void changePass(mk_memberVO mvo) throws Exception {
		
		mdao.changePass(mvo);
	}

	@Override
	public void deleteMember(String m_id) throws Exception {
		
		mdao.deleteMember(m_id);
	}


}
