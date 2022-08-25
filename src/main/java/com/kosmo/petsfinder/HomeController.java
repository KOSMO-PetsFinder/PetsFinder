package com.kosmo.petsfinder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import petsfinder.member.MemberDAOImpl;
import petsfinder.member.MemberDTO;

@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
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
			return "Login";
		}
	}
	
	@RequestMapping("/default")
	public String myPageDefault(HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession();
		MemberDTO mto = sqlSession.getMapper(MemberDAOImpl.class).memberInfo(Integer.parseInt(session.getAttribute("idx").toString()));
		
		model.addAttribute("m_info", mto);
		return "default";
	}
	
	@RequestMapping("/passCheck")
	public String passCheck() {
		return "passCheck";
	}
	
	//Admin page
	@RequestMapping("/Admin/adminMain")
	public String adminMainPage() {
		return "./Admin/adminMain";
	}
	

}
