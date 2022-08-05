package com.kosmo.petsfinder;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import petsfinder.abandonedanimal.AbandonedAnimalDAOImpl;
import petsfinder.abandonedanimal.AbandonedAnimalDTO;

@Controller
public class AbandonedAnimalController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/AbandonedAnimal/adoptView.do")
	public ModelAndView AdoptView(AbandonedAnimalDTO abandonedAnimalDTO, Model model) {
		
		abandonedAnimalDTO
				= sqlSession.getMapper(AbandonedAnimalDAOImpl.class)
				.abandonedAnimalView(abandonedAnimalDTO);
		
		ModelAndView mv = new ModelAndView();
		if(abandonedAnimalDTO==null) {
			System.out.println("하나 가져오기 실패 ㅠㅠ");
		} else {
			System.out.println("하나 가져오기 성공!");
			mv.setViewName("AbandonedAnimal/AdoptView");
		}

		model.addAttribute("abandonedAnimalDTO",abandonedAnimalDTO);
		
		return mv;
	}
	
	@RequestMapping("/AbandonedAnimal/abanAniList.do")
	public String AbanAniList(Model model, HttpServletRequest req) {
		
		int totalRecordCount =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).getTotalCount();
		
		int pageSize = 12;
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);
		
		int nowPage = (req.getParameter("nowPage")==null 
				|| req.getParameter("nowPage").equals("")) 
					? 1 : Integer.parseInt(req.getParameter("nowPage"))+1;
		
		int start = 1;
		int end = nowPage * pageSize;
		int moreStop = 0;
		if(totalRecordCount <= end) {
			moreStop =1;
		}
		
		ArrayList<AbandonedAnimalDTO> lists =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).listPage(start, end);
		
		model.addAttribute("moreStop", moreStop);
		model.addAttribute("lists", lists);
		model.addAttribute("nowPage", nowPage);
		
		return "AbandonedAnimal/AdoptListForm";
	}
	
}
