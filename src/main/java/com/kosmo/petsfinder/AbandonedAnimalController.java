package com.kosmo.petsfinder;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import petsfinder.abandonedanimal.AbandonedAnimalDAOImpl;
import petsfinder.abandonedanimal.AbandonedAnimalDTO;
import petsfinder.abandonedanimal.AdoptionAppDTO;
import petsfinder.abandonedanimal.ParameterDTO;
import petsfinder.abandonedanimal.ReportDTO;
import petsfinder.review.ReviewBoardDTO;
import petsfinder.review.ReviewCommentDTO;
import petsfinder.review.ReviewLikeDTO;

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
		if(session.getAttribute("idx")!=null) {
			member_idx = Integer.parseInt(session.getAttribute("idx").toString());
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
	public String AbanAniList(Model model, HttpServletRequest req,ParameterDTO parameterDTO) {
		
		String insUrl = ""; 
		
		//날짜가 있다면
		if(!"".equals(parameterDTO.getsD()) && parameterDTO.getsD()!=null && !"".equals(parameterDTO.geteD()) && parameterDTO.geteD()!=null ) {
			System.out.println("날짜 넘어옴 ");
			insUrl += "sD="+parameterDTO.getsD()+"&eD="+parameterDTO.geteD()+"";
			
		}
		//날짜가 없다면
		else {
			parameterDTO.setsD(null);
			parameterDTO.seteD(null);
		}
		//종, 성별이 있다면
		if( !"".equals(parameterDTO.getSpecies()) && parameterDTO.getSpecies()!=null && !"".equals(parameterDTO.getGender()) && parameterDTO.getGender()!=null) {
			System.out.println("종, 성별 넘어옴");
			insUrl += "species="+parameterDTO.getSpecies()+"&gender="+parameterDTO.getGender()+"";
			
		}
		//종, 성별이 없다면
		else {
			parameterDTO.setSpecies(null);
			parameterDTO.setGender(null);
		}
		
		
		
		
		
		//전체 갯수 가지고 오기
		int totalRecordCount =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).abAniGetTotalCount(parameterDTO);
		
		System.out.println("ddd"+ totalRecordCount);
		
		//한 블럭에서 보여줄 유기동물 수 
		int pageSize = 12;
		
		//현제 페이지를 받아옴
		int nowPage = (req.getParameter("nowPage")==null 
				|| req.getParameter("nowPage").equals("")) 
					? 1 : Integer.parseInt(req.getParameter("nowPage"))+1;
		//가져올 유기동물의 시작과 끝
		int start = 1;
		int end = nowPage * pageSize;
		//parameterDTO에 start와 end값 저장
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		//모든 유기동물을 불러왔을 때 더보기 버튼을 삭제하기 위한 값
		int moreStop = 0;
		if(totalRecordCount <= end) {
			moreStop =1;
		}
		
		
		//유기동물 리스트 
		ArrayList<AbandonedAnimalDTO> lists =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).abAniListPage(parameterDTO);
		
		//모델에 저장
		model.addAttribute("moreStop", moreStop);
		model.addAttribute("lists", lists);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("insUrl", insUrl);
		model.addAttribute("parameterDTO", parameterDTO);
		
		return "AbandonedAnimal/AdoptListForm";
	}
	
	
	
	
	
	
	
	//-----------------------------------------------------------------------ing
	//json데이터를 반환해서 .. 
	@RequestMapping(value = "AbandonedAnimal/abAniList",method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<AbandonedAnimalDTO> abAniList(AbandonedAnimalDTO abandonedAnimalDTO , 
			HttpServletRequest req, ParameterDTO parameterDTO) {
		
		//날짜가 있다면
		if(!"".equals(parameterDTO.getsD()) && parameterDTO.getsD()!=null && !"".equals(parameterDTO.geteD()) && parameterDTO.geteD()!=null ) {
			System.out.println("날짜 넘어옴 ");
			
		}
		//날짜가 없다면
		else {
			parameterDTO.setsD(null);
			parameterDTO.seteD(null);
		}
		//종, 성별이 있다면
		if( !"".equals(parameterDTO.getSpecies()) && parameterDTO.getSpecies()!=null && !"".equals(parameterDTO.getGender()) && parameterDTO.getGender()!=null) {
			System.out.println("종, 성별 넘어옴");
			
		}
		//종, 성별이 없다면
		else {
			parameterDTO.setSpecies(null);
			parameterDTO.setGender(null);
		}
		
		
		
		
		
		//전체 갯수 가지고 오기
		int totalRecordCount =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).abAniGetTotalCount(parameterDTO);
		
		
		//한 블럭에서 보여줄 유기동물 수 
		int pageSize = 12;
		
		//현제 페이지를 받아옴
		int nowPage = (req.getParameter("nowPage")==null 
				|| req.getParameter("nowPage").equals("")) 
					? 1 : Integer.parseInt(req.getParameter("nowPage"))+1;
		
		
		//가져올 유기동물의 시작과 끝
		int start = ((nowPage-1) * pageSize) +1; //13
		int end = nowPage * pageSize; // 24
		//parameterDTO에 start와 end값 저장
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		//모든 유기동물을 불러왔을 때 더보기 버튼을 삭제하기 위한 값
		int moreStop = 0;
		if(totalRecordCount <= end) {
			moreStop =1;
		}
		
		
		//유기동물 리스트 
		ArrayList<AbandonedAnimalDTO> lists =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).abAniListPage(parameterDTO);
		
		return lists;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "AbandonedAnimal/adoptLatter.do")
	public String adoptLatter() {
		
		return "AbandonedAnimal/AdoptLatter";
	} 
	
	//후기 댓글 입력
	@RequestMapping(value = "AbandonedAnimal/commentInsert.do",method = RequestMethod.GET)
	@ResponseBody
	public ReviewCommentDTO CommentInsert(ReviewCommentDTO reviewCommentDTO, HttpSession session) {
		//글쓴 사람의 정보를 불러옴
		String sIdx = (String) session.getAttribute("idx");
		int idx =Integer.parseInt(sIdx);
		String name = (String) session.getAttribute("name");
		String photo = (String) session.getAttribute("photo");
		
		//등록한 날짜
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		
		//댓글 저장
		int result = 
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).commentInsert(reviewCommentDTO);
		if(result==1) {
			System.out.println("저장성공!");
		}
		//반환할 dto에 필요한 정보 저장
		reviewCommentDTO.setMember_idx(idx);
		reviewCommentDTO.setMember_namec(name);
		reviewCommentDTO.setMember_photo(photo);
		reviewCommentDTO.setReviewcomm_regdate(date.format(today));
		reviewCommentDTO.setReview_idx(1);
		return reviewCommentDTO;
	}
	
	//좋아요 처리 
	@RequestMapping(value = "AbandonedAnimal/abanilike")
	public String abaniLike(ReviewLikeDTO reviewLikeDTO,HttpServletRequest req) {
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
	
	
	
	
	
	
	
	//유기동물 등록
	@RequestMapping(value = "AbandonedAnimal/abandonedAnimalRegistration.do",method = RequestMethod.GET)
	public String abandonedAnimalReg() {
		
		return "AbandonedAnimal/AbandonedAnimalRegistration";
	}
	@RequestMapping(value = "AbandonedAnimal/abandonedAnimalRegistration.do",method = RequestMethod.POST)
	public String abAniRegAction(AbandonedAnimalDTO abandonedAnimalDTO) {
		System.out.println("ddd"+abandonedAnimalDTO.getAbani_neut());
		
		
		int result = 
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class).abAniRegist(abandonedAnimalDTO);
		if(result ==1) {
			System.out.println("등록성공!");
		}
		
		
		return "redirect:../";
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
	
	//입양 신청 
	@RequestMapping(value = "AbandonedAnimal/AdoptApplicationForm.do",method = RequestMethod.POST)
	public String AdoptApplicationForm(AdoptionAppDTO adoptionAppDTO, Model model, HttpServletRequest req,HttpSession session) {
		//System.out.println(req.getParameter("ADPAPL_name"));
		//System.out.println(adoptionAppDTO.getADPAPL_gender());
		//System.out.println(adoptionAppDTO.getADPAPL_birth());
		//멤버 idx를 받아서 dto에 저장
		int member_idx = Integer.parseInt((String) session.getAttribute("idx"));
		adoptionAppDTO.setMember_idx(member_idx);
		int abani_idx = Integer.parseInt(req.getParameter("abani_idx"));
		adoptionAppDTO.setAbani_idx(abani_idx);
		
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
	//유기동물 신고 
	@RequestMapping(value = "/notifyForm.do",method = RequestMethod.POST)
	public String notifyForm(ReportDTO reportDTO, Model model,HttpServletRequest req,HttpSession session) {
		
		
//		System.out.println(req.getParameter("dclrAbnd_loc"));
//		System.out.println(reportDTO.getDclrAbnd_title());
//		System.out.println(reportDTO.getDclrAbnd_content());
		
		//멤버 idx를 받아서 dto에 저장
		int member_idx = Integer.parseInt((String) session.getAttribute("idx"));
		reportDTO.setMember_idx(member_idx);
		
		// repRegist()메서드를 호출
	    int result = sqlSession.getMapper(AbandonedAnimalDAOImpl.class).notifyForm(reportDTO);
	    System.out.println("입력결과:"+ result);
	    
	    return "myPage";
	}
	
	
	
	/*택수*/
	//입양후기 목록 매퍼쪽 고치고 리스트 받고 어돕트레터 jsp 모델이던 뭐던 전송
	@RequestMapping("AbandonedAnimal/adoptlatter.do")
	public String adoptLatter(Model model, HttpServletRequest req) {
		
		int totalRecordCount =
				sqlSession.getMapper(AbandonedAnimalDAOImpl.class)
					.reviewGetTotalCount();
		
		int pageSize = 4;
		int blockPage = 2;
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);
		
		int nowPage = (req.getParameter("nowPage")==null 
						|| req.getParameter("nowPage").equals(""))
							? 1 : Integer.parseInt(req.getParameter("nowPage"));
		
		int start = (nowPage-1) * pageSize + 1;
		int end = nowPage * pageSize;
		  

		ArrayList<ReviewBoardDTO> lists =
			sqlSession.getMapper(AbandonedAnimalDAOImpl.class).listPage(start, end);
		
		
		String pagingImg =
			petsfinder.utils.PagingUtil.pagingImg(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath()+"/AbandonedAnimal/adoptLatter.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		for(ReviewBoardDTO dto : lists)
		{
			String temp = 
				dto.getReview_content().replace("\r\n", "<br/>");
			dto.setReview_content(temp);
		}
		model.addAttribute("lists", lists);
		
		return "AbandonedAnimal/AdoptLatter";
	}
	
	
	
	
	
	

	
	
	
	
	
}
