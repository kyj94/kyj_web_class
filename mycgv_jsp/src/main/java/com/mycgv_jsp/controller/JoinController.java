package com.mycgv_jsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycgv_jsp.dao.MemberDao;
import com.mycgv_jsp.vo.MemberVo;

@Controller
public class JoinController {
	/**
	 * join.do - ȸ������ ��
	 */
	@RequestMapping(value="join.do", method=RequestMethod.GET)
	public String join() {
		return "/join/join";
	}
	
	/** join_proc.do - ȸ������ ó�� **/
	@RequestMapping(value="join_proc.do", method=RequestMethod.POST)
	public String join_proc(MemberVo memverVo) {
		String viewName ="";
		MemberDao memberDao = new MemberDao();
		int result = memberDao.insert(memverVo);
		
		if(result == 1) {
			viewName = "redirect:/index.do";
		} else {
			// ȸ������ ���� - ���������� ȣ��
		}
		
		return viewName;
	}

}
