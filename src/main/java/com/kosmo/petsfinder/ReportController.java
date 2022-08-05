package com.kosmo.petsfinder;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petsfinder.abandonedanimal.ReportDAOImpl;
import petsfinder.abandonedanimal.ReportDTO;


@Controller
public class ReportController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/notifyForm.do")
	public String notifyForm() {
		System.out.println("Report Form Clear!");
		return "notifyForm";
	}
	
	@RequestMapping(value = "/notifyForm.do",method = RequestMethod.POST)
	public String notifyForm(ReportDTO reportDTO, Model model,HttpServletRequest req) {
	System.out.println(req.getParameter("dclrAbnd_loc"));
	System.out.println(reportDTO.getDclrAbnd_title());
	System.out.println(reportDTO.getDclrAbnd_content());
    // repRegist()메서드를 호출
    int result = sqlSession.getMapper(ReportDAOImpl.class).notifyForm(reportDTO);
    System.out.println("입력결과:"+ result);
    
    return "redirect:./notifyForm.do";
	}
	


}
