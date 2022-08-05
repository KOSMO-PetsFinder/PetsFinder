package com.kosmo.petsfinder;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petsfinder.abandonedanimal.AbandonedAnimalDAOImpl;
import petsfinder.abandonedanimal.AbandonedAnimalDTO;
import petsfinder.abandonedanimal.ReportDTO;
import petsfinder.abandonedanimal.ReviewBoardDTO;
import petsfinder.abandonedanimal.ReviewCommentDTO;

@Controller
public class AbandonedAnimalController {
	
	@Autowired
	private SqlSession sqlSession;
	
	//유기동물 신고 폼 
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
    int result = sqlSession.getMapper(AbandonedAnimalDAOImpl.class).notifyForm(reportDTO);
    System.out.println("입력결과:"+ result);
    
    return "redirect:./notifyForm.do";
	}
	
	//유기동물 목록 상세보기 
	@RequestMapping("AbandonedAnimal/adoptView.do")
	public String AdoptView(AbandonedAnimalDTO abandonedAnimalDTO, Model model) {
		
		//상세보기를 위해 유기동물 하나 가져오기
		abandonedAnimalDTO
				= sqlSession.getMapper(AbandonedAnimalDAOImpl.class)
				.abandonedAnimalView(abandonedAnimalDTO);
		//유기동물의 후기가 있는 경우 후기 가져오기
		ArrayList<ReviewBoardDTO> reviewLists
			= sqlSession.getMapper(AbandonedAnimalDAOImpl.class)
			.abaAniReview(abandonedAnimalDTO.getAbani_idx());
		
		//그 입양동물 상세보기에서 쓰인 후기들의 댓글을 모두 가져오기
		ArrayList<ReviewCommentDTO> reviewCommLists
		= sqlSession.getMapper(AbandonedAnimalDAOImpl.class)
		.reviewComment(abandonedAnimalDTO.getAbani_idx());
		
		//유기동물 후기의 띄어쓰기 처리
		for(ReviewBoardDTO dto : reviewLists){
			String temp = dto.getReview_content().replace("\r\n","<br/>");
			dto.setReview_content(temp);
		}
		
		//후기의 댓글의 띄어쓰기 처리
		for(ReviewCommentDTO dto : reviewCommLists){
			String temp = dto.getReviewcomm_content().replace("\r\n","<br/>");
			dto.setReviewcomm_content(temp);
		}
		
		//모델에 저장
		model.addAttribute("abandonedAnimalDTO",abandonedAnimalDTO);
		model.addAttribute("reviewLists",reviewLists);
		model.addAttribute("reviewCommLists",reviewCommLists);
		
		
		
		
		return "AbandonedAnimal/AdoptView";
	}
	
	
	//유기동물 리스트 
	@RequestMapping("AbandonedAnimal/abanAniList.do")
	public String AbanAniList(Model model, HttpServletRequest req) {
		//전체 갯수 가지고 오기
		int totalRecordCount =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).getTotalCount();
		
		//한 블럭에서 보여줄 유기동물 수 
		int pageSize = 12;
		
		//현제 페이지를 받아옴
		int nowPage = (req.getParameter("nowPage")==null 
				|| req.getParameter("nowPage").equals("")) 
					? 1 : Integer.parseInt(req.getParameter("nowPage"))+1;
		//가져올 유기동물의 시작과 끝
		int start = 1;
		int end = nowPage * pageSize;
		
		//모든 유기동물을 불러왔을 때 더보기 버튼을 삭제하기 위한 값
		int moreStop = 0;
		if(totalRecordCount <= end) {
			moreStop =1;
		}
		
		
		//유기동물 리스트 
		ArrayList<AbandonedAnimalDTO> lists =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).listPage(start, end);
		
		//모델에 저장
		model.addAttribute("moreStop", moreStop);
		model.addAttribute("lists", lists);
		model.addAttribute("nowPage", nowPage);
		
		return "AbandonedAnimal/AdoptListForm";
	}
	
	@RequestMapping(value = "AbandonedAnimal/adoptApplicationForm.do")
	public String adoptApplicationForm() {
		
		return "AbandonedAnimal/adoptApplicationForm";
	}
	@RequestMapping(value = "AbandonedAnimal/adoptLatter.do")
	public String adoptLatter() {
		
		return "AbandonedAnimal/AdoptLatter";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
