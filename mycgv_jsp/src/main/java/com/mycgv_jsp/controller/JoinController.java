package com.mycgv_jsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JoinController {
	/**
	 * join.do - È¸¿ø°¡ÀÔ Æû
	 */
	@RequestMapping(value="join.do", method=RequestMethod.GET)
	public String join() {
		return "/join/join";
	}

}
