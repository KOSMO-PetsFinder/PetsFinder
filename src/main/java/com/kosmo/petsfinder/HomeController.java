package com.kosmo.petsfinder;

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
	public String myPage() {
		return "myPage";
	}
	@RequestMapping("/passCheck")
	public String passCheck() {
		return "passCheck";
	}
	
	// Petsitters
	@RequestMapping("/Petsitters/petsitters")
	public String sitter() {
		return "./Petsitters/petsitters";
	}
	@RequestMapping("/Petsitters/sitterreview")
	public String sitterreview() {
		return "./Petsitters/sitterreview";
	}
	@RequestMapping("/Petsitters/sitterlist")
	public String sitterlist() {
		return "./Petsitters/sitterlist";
	}
	@RequestMapping("/Petsitters/sitterview")
	public String sitterview() {
		return "./Petsitters/sitterview";
	}
	
}
