package com.kosmo.petsfinder;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petsfinder.abandonedanimal.AbandonedAnimalDAOImpl;
import petsfinder.abandonedanimal.AbandonedAnimalDTO;
import petsfinder.abandonedanimal.AdoptionAppDTO;
import petsfinder.abandonedanimal.ReportDTO;
import petsfinder.abandonedanimal.ReviewBoardDTO;
import petsfinder.abandonedanimal.ReviewCommentDTO;
import petsfinder.abandonedanimal.ReviewLikeDTO;

@Controller
public class AbandonedAnimalController {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	
	//유기동물 목록 상세보기 
	@RequestMapping("AbandonedAnimal/adoptView.do")
	public String AdoptView(AbandonedAnimalDTO abandonedAnimalDTO, Model model, HttpSession session) {
		/*좋아요*/
		//접속중인 사용자의 일련번호 받아오기 
		int member_idx =0;  
		if((String) session.getAttribute("idx")!=null) {
			member_idx = Integer.parseInt((String) session.getAttribute("idx"));
		}
		ArrayList<ReviewLikeDTO> likeLists = null;
		//로그아웃 상태
		if(member_idx==0) {
			
		}
		//로그인 상태
		else {
			//사용자가 좋아요한 후기들을 받아옴
			likeLists = 
					sqlSession.getMapper(AbandonedAnimalDAOImpl.class)
					.likeList(member_idx);
		}
		/*좋아요*/
		
		//상세보기를 위해 유기동물 하나 가져오기
		abandonedAnimalDTO
				= sqlSession.getMapper(AbandonedAnimalDAOImpl.class)
				.abandonedAnimalView(abandonedAnimalDTO);
		//유기동물의 후기가 있는 경우 후기 가져오기
		ArrayList<ReviewBoardDTO> reviewLists
			= sqlSession.getMapper(AbandonedAnimalDAOImpl.class)
			.abaAniReview(abandonedAnimalDTO.getAbani_idx());
		
		//후기가 있는지 확인할 문자
		String revState = "";
		//후기의 댓글을 받을 리스트 선언
		ArrayList<ReviewCommentDTO> reviewCommLists =null;
		
		//후기가 없을 때 
		if(reviewLists.isEmpty()) {
			revState = "nex";
		}
		//후기가 있을 때
		else {
			//유기동물 후기의 띄어쓰기 처리
			for(ReviewBoardDTO dto : reviewLists){
				String temp = dto.getReview_content().replace("\r\n","<br/>");
				dto.setReview_content(temp);
			}
			//그 입양동물 상세보기에서 쓰인 후기들의 댓글을 모두 가져오기
			reviewCommLists = sqlSession.getMapper(AbandonedAnimalDAOImpl.class)
					.reviewComment(abandonedAnimalDTO.getAbani_idx());
			// 후기의 댓글이 없을때 
			if(reviewCommLists.isEmpty()) {
				
			}
			//후기의 댓글이 있을 때 
			else {
				//후기의 댓글의 띄어쓰기 처리
				for(ReviewCommentDTO dto : reviewCommLists){
					String temp = dto.getReviewcomm_content().replace("\r\n","<br/>");
					dto.setReviewcomm_content(temp);
				}	
			}
			revState = "exe";
		}
		
		
		
		
		
		
		
		
		
		
		
		//모델에 저장
		model.addAttribute("abandonedAnimalDTO",abandonedAnimalDTO);
		model.addAttribute("reviewLists",reviewLists);
		model.addAttribute("reviewCommLists",reviewCommLists);
		model.addAttribute("revState",revState);
		model.addAttribute("likeLists",likeLists);
		
		return "AbandonedAnimal/AdoptView";
	}
	
	
	//유기동물 리스트 
	@RequestMapping("AbandonedAnimal/abanAniList.do")
	public String AbanAniList(Model model, HttpServletRequest req) {
		//전체 갯수 가지고 오기
		int totalRecordCount =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).abAniGetTotalCount();
		
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
	
	//후기 댓글 입력
	@RequestMapping(value = "AbandonedAnimal/commentInsert.do")
	public String CommentInsert(ReviewCommentDTO reviewCommentDTO,HttpServletRequest req) {
		//이전페이지로 돌아가기 위한 유기동물 일련번호
		String idx = req.getParameter("abani_idx");
		 
		int result = 
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).commentInsert(reviewCommentDTO);
		if(result==1) {
			System.out.println("저장성공!");
		}
		
		return "redirect:/AbandonedAnimal/adoptView.do?abani_idx="+idx;
	}
	
	//좋아요 처리 
	@RequestMapping(value = "AbandonedAnimal/like")
	public String Like(ReviewLikeDTO reviewLikeDTO,HttpServletRequest req) {
		//이전페이지로 돌아가기 위한 유기동물 일련번호
		String idx = req.getParameter("abani_idx");
		
		//좋아요가 이미 있는지 여부 확인 
		ReviewLikeDTO dto = 
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).likeStatus(reviewLikeDTO);
		//좋아요가 없다면
		if(dto==null) {
			//좋아요 상태를 1로 새롭게 등록
			sqlSession.getMapper(AbandonedAnimalDAOImpl.class).insertLike(reviewLikeDTO);
			
		}
		//좋아요가 있다면
		else {
			//좋아요 상태(1)  
			if(dto.getReviewlike_stt()==1) {
				//좋아요 상태를 0으로 바꾼다.
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).likeOntToZero(reviewLikeDTO);
			}
			//좋아요 상태X(0)
			else {
				//좋아요 상태를 1로 바꾼다.
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).likeZeroToOne(reviewLikeDTO);
			}
		}
	
		
		return "redirect:/AbandonedAnimal/adoptView.do?abani_idx="+idx;
	}
	
	
	
	
	/*원재님*/
	/*
	member_idx session에서 받아오는거 처리해야됨 
	*/
	//입양 신청 폼
	@RequestMapping("AbandonedAnimal/AdoptApplicationForm.do")
	public String AdoptApplicationForm() {
		System.out.println("Adoption Form Clear!");
		return "AbandonedAnimal/AdoptApplicationForm";
	}
	
	@RequestMapping(value = "AbandonedAnimal/AdoptApplicationForm.do",method = RequestMethod.POST)
	public String AdoptApplicationForm(AdoptionAppDTO adoptionAppDTO, Model model, HttpServletRequest req) {
		System.out.println(req.getParameter("ADPAPL_name"));
		System.out.println(adoptionAppDTO.getADPAPL_gender());
		System.out.println(adoptionAppDTO.getADPAPL_birth());
		
	    int result = sqlSession.getMapper(AbandonedAnimalDAOImpl.class).AdoptApplicationForm(adoptionAppDTO);
	    System.out.println("입력결과:"+ result);
	    
	    return "redirect:../";
	}
	
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
	
	
	
	
}
