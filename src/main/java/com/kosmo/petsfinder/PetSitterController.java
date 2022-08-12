package com.kosmo.petsfinder;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import petsfinder.petsitter.ParameterDTO;
import petsfinder.petsitter.PetSitterDAOImpl;
import petsfinder.petsitter.PetSitterDTO;
import petsfinder.review.ReviewBoardDAOImpl;
import petsfinder.review.ReviewBoardDTO;
import petsfinder.review.ReviewCommentDTO;
import petsfinder.review.ReviewLikeDTO;
import petsfinder.utils.PagingUtil;
import smtp.SMTPAuth;

@Controller
public class PetSitterController {

    @Autowired
    private SqlSession sqlSession;
	
	@RequestMapping("/petsitterForm")
	public String petsitterForm(Model model, HttpServletRequest req, HttpSession session) throws Exception {
		
		PetSitterDTO petsitterDTO = sqlSession.getMapper(PetSitterDAOImpl.class).sitterView(Integer.parseInt(session.getAttribute("idx").toString()));
		if (petsitterDTO != null) {
			List<String> tags = new ArrayList<String>();
			tags = sqlSession.getMapper(PetSitterDAOImpl.class).sit_tag(petsitterDTO.getSit_idx());			
			ArrayList<Integer> services = sqlSession.getMapper(PetSitterDAOImpl.class).sit_service(petsitterDTO.getSit_idx());
			model.addAttribute("tags", tags);
			model.addAttribute("services", services);
		}
		
		model.addAttribute("s_info", petsitterDTO);
		
		return "petsitterForm";
	}
    
	@RequestMapping(value="/petsitterRegist", method = RequestMethod.POST)
	public String petsitterRegist(Model model, HttpServletRequest req, MultipartHttpServletRequest mr) {
		
		PetSitterDTO petsitterDTO = new PetSitterDTO();
		
		String sit_title = req.getParameter("sit_title");
		String typTag = req.getParameter("typTag");
		String sit_intro = req.getParameter("sit_intro");
		String s_fee = req.getParameter("s_fee");
		String m_fee = req.getParameter("m_fee");
		String b_fee = req.getParameter("b_fee");
		
		for (int i = 1; i <= 10; i++) {
			petsitterDTO.setTypSrv_service(req.getParameter("option" + i));
			System.out.println(req.getParameter("option" + i));
			if ((petsitterDTO.getTypSrv_service()).equals("play")) {
				
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("실내놀이(터그놀이, 노즈워크 등)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
				
			} else if ((petsitterDTO.getTypSrv_service()).equals("walk")) {
				
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("매일산책(산책 및 실외 배변 가능)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
				
			} else if ((petsitterDTO.getTypSrv_service()).equals("emergency")) {
				
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("응급처치(응급시 병원 이동 가능)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
				
			} else if ((petsitterDTO.getTypSrv_service()).equals("pickup")) {
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("집앞 픽업(비용은 협의)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
			} else if ((petsitterDTO.getTypSrv_service()).equals("hair")) {
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("모발관리(눈물 또는 빗질관리 가능)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
			} else if ((petsitterDTO.getTypSrv_service()).equals("pills")) {
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("약물 복용(경구(입)복용 가능)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
			} else if ((petsitterDTO.getTypSrv_service()).equals("bath")) {
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("목욕 가능(비용은 협의)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
			} else if ((petsitterDTO.getTypSrv_service()).equals("longcare")) {
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("장기예약(14일 이상)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
			} else if ((petsitterDTO.getTypSrv_service()).equals("oldcare")) {
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("노견케어(8년이상)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
			} else if ((petsitterDTO.getTypSrv_service()).equals("puppycare")) {
				System.out.println(i);
				petsitterDTO.setTypSrv_expln("퍼피케어(1년미만의 퍼피)");
				System.out.println("설명 : " + petsitterDTO.getTypSrv_expln());
			} else {
				continue;
			}
		}
//		
		return "default";
	}
	
	//시터 상세보기
	//인파라미터에 DTO를 넣으면 전체가 들어가는건데 일단 전부가 아닐수도 있기에 다 넣지는 말자. 
	@RequestMapping("/Petsitters/sitterView.do") 
	public String SitterViewmemberInfo(PetSitterDTO petSitterDTO, Model model, HttpServletRequest req, HttpSession session) {
		
		int member_idx =0;  
		if(session.getAttribute("idx") != null){
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
					sqlSession.getMapper(PetSitterDAOImpl.class)
					.likeList1(member_idx);
		}
		int sit_idx = Integer.parseInt(req.getParameter("sit_idx"));
//		System.out.println("sit_idx:"+sit_idx);
		
		//Sitter 테이블 정보 추출
//		petSitterDTO.setMember_idx(member_idx);
//		member_idx = Integer.parseInt(req.getParameter("member_idx"));
		PetSitterDTO sitterView = sqlSession.getMapper(PetSitterDAOImpl.class).sitterView(sit_idx);
		
		
		//sitterReview 테이블 정보 추출
		ArrayList<ReviewBoardDTO> stReview = sqlSession.getMapper(PetSitterDAOImpl.class).stReview(sit_idx);
		
		//후기가 있는지 확인할 문자
		String revState = "";
		//후기의 댓글을 받을 리스트 선언
		ArrayList<ReviewCommentDTO> reviewCommLists =null;
		//후기가 없을 때 
		if(stReview.isEmpty()) {
			revState = "nex";
		}
		//후기가 있을때
		else {
			//후기 띄어스기
			for(ReviewBoardDTO dto : stReview) {
				String temp = dto.getReview_content().replace("\r\n","<br/>");
				dto.setReview_content(temp);
			}
			//후기 댓글 가져오기
			reviewCommLists = sqlSession.getMapper(PetSitterDAOImpl.class)
					.reviewComment1(petSitterDTO.getSit_idx());
			//후기 댓글 없을경우
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
		
		int view_reviewRecordCount = sqlSession.getMapper(PetSitterDAOImpl.class).getTotalCount_sitter(sit_idx);
		
		model.addAttribute("view_reviewRecordCount", view_reviewRecordCount);
		model.addAttribute("stReview", stReview);
		model.addAttribute("sitterView",sitterView);
		model.addAttribute("petSitterDTO", petSitterDTO);
		model.addAttribute("reviewCommLists",reviewCommLists);
		model.addAttribute("revState",revState);
		model.addAttribute("likeLists",likeLists);
		
		//이용가능서비스 테이블 추출 (DTO가 아니라 1개 이상의 결과이기 때문에 ArrayList로 담아야함)
		ArrayList<PetSitterDTO> avalService = sqlSession.getMapper(PetSitterDAOImpl.class).avalService(sit_idx);
		model.addAttribute("avalService",avalService);
		
		//시터 태그 테이블 추출
		ArrayList<PetSitterDTO> sitterTag = sqlSession.getMapper(PetSitterDAOImpl.class).sitterTag(sit_idx);
		model.addAttribute("sitterTag",sitterTag);
		
		
		// 예약 가능 날짜 가져오기
		ArrayList<PetSitterDTO> re_list = sqlSession.getMapper(PetSitterDAOImpl.class).reserved(sit_idx);
		model.addAttribute("re_list", re_list);
//		System.out.println(re_list);
				
		return "./Petsitters/sitterView"; 
	 
	}
	
	//후기 댓글 입력
	@RequestMapping(value = "/Petsitters/commentInsert",method = RequestMethod.GET)
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
				sqlSession.getMapper(PetSitterDAOImpl.class).commentInsert1(reviewCommentDTO);
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
	@RequestMapping(value = "/Petsitters/sitlike")
	public String abaniLike(ReviewLikeDTO reviewLikeDTO, HttpServletRequest req) {
		//이전페이지로 돌아가기 위한 유기동물 일련번호
		String idx = req.getParameter("sit_idx");
		
		//좋아요가 이미 있는지 여부 확인 
		ReviewLikeDTO dto = 
				sqlSession.getMapper(PetSitterDAOImpl.class).likeStatus1(reviewLikeDTO);
		//좋아요가 없다면
		if(dto==null) {
			//좋아요 상태를 1로 새롭게 등록
			sqlSession.getMapper(PetSitterDAOImpl.class).insertLike1(reviewLikeDTO);
			
		}
		//좋아요가 있다면
		else {
			//좋아요 상태(1)  
			if(dto.getReviewlike_stt()==1) {
				//좋아요 상태를 0으로 바꾼다.
				sqlSession.getMapper(PetSitterDAOImpl.class).likeOntToZero1(reviewLikeDTO);
			}
			//좋아요 상태X(0)
			else {
				//좋아요 상태를 1로 바꾼다.
				sqlSession.getMapper(PetSitterDAOImpl.class).likeZeroToOne1(reviewLikeDTO);
			}
		}
		return "redirect:/Petsitters/sitterView.do?sit_idx="+idx;
	}
		
	
	@RequestMapping("/petsitters/reserve")
	public String reserve(Model model, HttpServletRequest req) {
		
		PetSitterDTO petSitterDTO = new PetSitterDTO();
		
		String sbook_start = req.getParameter("sD");
		
		return "./Petsitters/sitterView";
	}
	
	//시터 후기
	@RequestMapping("/Petsitters/sitterreview")
	public String PSreview(Model model, HttpServletRequest req) {
		
		int totalRecordCount = sqlSession.getMapper(ReviewBoardDAOImpl.class).getTotalCount();
		
		int pageSize = 2;
		int blockPage = 3;
		
		int nowPage = req.getParameter("nowPage")==null ? 1:Integer.parseInt(req.getParameter("nowPage"));
		
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);
		int start = (nowPage-1) * pageSize +1;
		int end = nowPage + pageSize;
		
		ArrayList<ReviewBoardDTO> reviewlist = sqlSession.getMapper(ReviewBoardDAOImpl.class).PSlist(start, end);
		String pagingImg = PagingUtil.pagingImg(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+
				"/petsitter/sitterreview?");
		
		model.addAttribute("pagingImg", pagingImg);
		
		for(ReviewBoardDTO dto : reviewlist) {
			String temp = dto.getReview_content().replace("\r\n", "<br/>");
			dto.setReview_content(temp);
		}
		model.addAttribute("reviewlist", reviewlist);
		
		return "./Petsitters/sitterreview";
	}
	
	//시터 전체보기 혹은 검색시 나타나는 전체 시터리스트
	@RequestMapping("/Petsitters/sitterlist")
	public String sitterList(Model model, HttpServletRequest req, ParameterDTO parameterDTO) {

	    String insUrl="";
        int totalRecordCount = sqlSession.getMapper(PetSitterDAOImpl.class).getTotalCount();
      
        int pageSize = 4;
      
        int nowPage = (req.getParameter("nowPage")==null || req.getParameter("nowPage").equals("")) 
               ? 1 : Integer.parseInt(req.getParameter("nowPage"))+1;
      
      
        //가져올 시터 시작과 끝
        int start = 1; 
        int end = nowPage * pageSize; 
        //parameterDTO에 start와 end값 저장
        parameterDTO.setStart(start);
        parameterDTO.setEnd(end);
      
        //모든 리스트 불러왔을 때 더보기 버튼을 삭제하기 위한 값
        int moreStop = 0;
        if(totalRecordCount <= end) {
           moreStop =1;
        }
      
      
        ArrayList<PetSitterDTO> lists = sqlSession.getMapper(PetSitterDAOImpl.class).listPage(start, end);
      
        model.addAttribute("moreStop",moreStop);
        model.addAttribute("lists", lists);
        model.addAttribute("parameterDTO",parameterDTO);
        model.addAttribute("nowPage",nowPage);
        model.addAttribute("insUrl",insUrl);

        return "./Petsitters/sitterlist";
	}
	
	//리스트 더보기(json)
    @RequestMapping(value = "/Petsitters/sitterlist",method = RequestMethod.POST)
    @ResponseBody
    public ArrayList<PetSitterDTO> sitterList(PetSitterDTO petSitterDTO , 
        HttpServletRequest req, ParameterDTO parameterDTO) {

        //전체 갯수 가지고 오기
        int totalRecordCount =
            sqlSession.getMapper(PetSitterDAOImpl.class).getTotalCount();

        //한 블럭에서 보여줄 시터 수 
        int pageSize = 6;
        
        //현제 페이지를 받아옴
        int nowPage = (req.getParameter("nowPage")==null 
              || req.getParameter("nowPage").equals("")) 
                 ? 1 : Integer.parseInt(req.getParameter("nowPage"))+1;
        
        
        //가져올 시터 시작과 끝
        int start = ((nowPage-1) * pageSize) +1; //13
        int end = nowPage * pageSize; // 24
        //parameterDTO에 start와 end값 저장
        parameterDTO.setStart(start);
        parameterDTO.setEnd(end);
        
        //모든 시터 불러왔을 때 더보기 버튼을 삭제하기 위한 값
        int moreStop = 0;
        if(totalRecordCount <= end) {
           moreStop =1;
        }
        
        //시터 리스트 
        ArrayList<PetSitterDTO> lists =
              sqlSession.getMapper(PetSitterDAOImpl.class).petsitterPage(parameterDTO);
        for(PetSitterDTO dto : lists) {
           System.out.println(dto.getSit_idx());
        }
        return lists;
    }
	
	

	//시터 찾기 처음 들어갔을 때의 페이지 (페이징 처리 필요 없이 4개만 가져오면됨)
	@RequestMapping("/Petsitters/petsitters")
	public String sitter(Model model, HttpServletRequest req) {

		int start = 1;
		int end = 4;
		
		
//		ArrayList<PetSitterDTO> typetag = sqlSession.getMapper(PetSitterDAOImpl.class).typetag(typetag_idx);
		
		ArrayList<PetSitterDTO> lists = sqlSession.getMapper(PetSitterDAOImpl.class).listPage(start, end);
		ArrayList<PetSitterDTO> lists1 = sqlSession.getMapper(PetSitterDAOImpl.class).listPage1(start, end);
		ArrayList<PetSitterDTO> lists2 = sqlSession.getMapper(PetSitterDAOImpl.class).listPage2(start, end);

		model.addAttribute("lists", lists);
		model.addAttribute("lists1",lists1);
		model.addAttribute("lists2",lists2);
		return "./Petsitters/petsitters";
	}
	
    

	

	
	
	
}
