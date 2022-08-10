package com.kosmo.petsfinder;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	// main
	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	// member
	@RequestMapping("/Login")
	public String login() {
		return "Login";
	}
	@RequestMapping("/Logout")
	public String logout() {
		return "Logout";
	}
	@RequestMapping("/Regist")
	public String regist() {
		return "registration";
	}
	@RequestMapping("/idEmailSend")
	public String idEmailSend() {
		return "idEmailSend";
	}
	@RequestMapping("/id_Search")
	public String id_Search() {
		return "id_Search";
	}
	@RequestMapping("/pw_Search")
	public String pw_Search() {
		return "pw_Search";
	}
	@RequestMapping("/pw_Reset")
	public String pwReset() {
		return "pw_Reset";
	}
	
	// My page
	@RequestMapping("/myPage")
	public String myPage(HttpSession session) {
		
		if(session.getAttribute("idx") != null) {
			return "myPage";			
		} else {
			return "main";
		}
	}
	@RequestMapping("/passCheck")
	public String passCheck() {
		return "passCheck";
	}
	

}
