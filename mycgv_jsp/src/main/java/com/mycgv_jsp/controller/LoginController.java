package com.mycgv_jsp.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycgv_jsp.dao.MemberDao;
import com.mycgv_jsp.vo.MemberVo;

@Controller
public class LoginController {
	/**
	 * login.do - �α��� ��
	 */
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
	
	/** login_proc.do - �α��� ó�� **/
	@RequestMapping(value="login_proc.do", method=RequestMethod.POST)
	public String login_proc(MemberVo memberVo) {
		String viewName = "";
		MemberDao memberDao = new MemberDao();
		int result = memberDao.loginCheck(memberVo);
		
		if(result == 1) {
			// index �̵�
			// viewName = "index"; viewResolver�� ȣ�� -> index.jsp
			viewName = "redirect:/index.do"; // sendRedirect�� ����
			
		} else {
			// login_fail.jsp
			viewName = "redirect:/login_fail.do";
		}
		
		return viewName;
	}
	
	
	/** login_fail.do - �α��� ���� **/
	@RequestMapping(value="login_fail.do", method=RequestMethod.GET)
	public String login_fail() {
		return "/login/login_fail";
	}
	
	

} // class
