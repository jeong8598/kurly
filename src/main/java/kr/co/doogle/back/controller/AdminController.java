package kr.co.doogle.back.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("/admin")
	public String admin() {
		return "/back/admin";
	}

	@RequestMapping("/admin/member")
	public String member() {
		return "/back/member/member";
	}

}