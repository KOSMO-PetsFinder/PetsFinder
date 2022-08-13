package com.kosmo.petsfinder;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.File;
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
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.multipart.MultipartHttpServletRequest;


import petsfinder.petsitter.ParameterDTO;

import fileupload.FileUtil;
import petsfinder.member.MemberDAOImpl;

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
		
		PetSitterDTO petsitterDTO = sqlSession.getMapper(PetSitterDAOImpl.class).sit_view(Integer.parseInt(session.getAttribute("idx").toString()));
		if (petsitterDTO != null) {
			List<String> sit_tags = new ArrayList<String>();
			sit_tags = sqlSession.getMapper(PetSitterDAOImpl.class).sit_tag(petsitterDTO.getSit_idx());	
			List<String> tags = new ArrayList<String>();
			tags = sqlSession.getMapper(PetSitterDAOImpl.class).tags();
			System.out.println(sit_tags);
			ArrayList<Integer> services = sqlSession.getMapper(PetSitterDAOImpl.class).sit_service(petsitterDTO.getSit_idx());
			model.addAttribute("sit_tags", sit_tags);
			model.addAttribute("tags", tags);
			model.addAttribute("services", services);
			model.addAttribute("s_info", petsitterDTO);
		}
		
		return "petsitterForm";
	}
    
	@SuppressWarnings("unused")
	@RequestMapping(value="/petsitterRegist", method = RequestMethod.POST)
	public String petsitterRegist(Model model, HttpServletRequest req, MultipartHttpServletRequest mr, HttpSession session) throws Exception {
		
		PetSitterDTO dto = new PetSitterDTO();
		
		// sitter 테이블 쪽 받아오기
		int sit_idx = Integer.parseInt(req.getParameter("sit_idx"));
		String sit_title = req.getParameter("sit_title");
		String sit_intro = req.getParameter("sit_intro");
		int s_fee = Integer.parseInt(req.getParameter("s_fee"));
		int m_fee = Integer.parseInt(req.getParameter("m_fee"));
		int b_fee = Integer.parseInt(req.getParameter("b_fee"));
		
		// DTO에 저장
		dto.setSit_idx(sit_idx);
		dto.setSit_title(sit_title);
		dto.setSit_intro(sit_intro);
		dto.setS_fee(s_fee);
		dto.setM_fee(m_fee);
		dto.setB_fee(b_fee);
		
		// DTO에 값이 차있으면 수정
		if(dto != null) {
			sqlSession.getMapper(PetSitterDAOImpl.class).u_sitter(dto);
		// DTO에 값이 없으면 생성
		} else {
			dto.setMember_idx(Integer.parseInt(session.getAttribute("idx").toString()));
			String member_addr = sqlSession.getMapper(MemberDAOImpl.class).addr(session.getAttribute("idx").toString());
			String sit_addr = member_addr.split(" / ")[1];
			dto.setSit_addr(sit_addr);
			sqlSession.getMapper(PetSitterDAOImpl.class).i_sitter(dto);
		}
		
		// 태그 전체 삭제
		sqlSession.getMapper(PetSitterDAOImpl.class).d_tag(sit_idx);
		// 재 입력
		JSONParser parser = new JSONParser();
		JSONArray TagArr = (JSONArray)parser.parse(req.getParameter("tags-outside"));
		System.out.println(TagArr.toJSONString());
		for(int i = 0; i < TagArr.size(); i++) {
			JSONObject tmp = (JSONObject)TagArr.get(i);
			String tag = tmp.get("value").toString();
			System.out.println(tag);
			if (tag.equals("반려동물 없음")) {
				sqlSession.getMapper(PetSitterDAOImpl.class).u_tag(sit_idx, 1);			
			} else if (tag.equals("픽업 가능")) {
				sqlSession.getMapper(PetSitterDAOImpl.class).u_tag(sit_idx, 2);
			} else if (tag.equals("대형견 가능")) {
				sqlSession.getMapper(PetSitterDAOImpl.class).u_tag(sit_idx, 3);
			} else if (tag.equals("마당 있음")) {
				sqlSession.getMapper(PetSitterDAOImpl.class).u_tag(sit_idx, 4);
			} else if (tag.equals("노견 케어")) {
				sqlSession.getMapper(PetSitterDAOImpl.class).u_tag(sit_idx, 5);
			}
		}

		
		// 서비스 전체 삭제
		sqlSession.getMapper(PetSitterDAOImpl.class).d_serve(sit_idx);
		// 재 입력
		for (int i = 1; i <= 10; i++) {
			if(req.getParameter("option" + i) != null) {
				sqlSession.getMapper(PetSitterDAOImpl.class).u_serve(sit_idx, i);
			}
		}
		
		List<MultipartFile> fileList = mr.getFiles("ofile");
		System.out.println(fileList.get(0).getOriginalFilename());
		if (fileList.get(0).getOriginalFilename() != "") {
			String path = req.getSession().getServletContext().getRealPath("/resources/Uploads");
			sqlSession.getMapper(PetSitterDAOImpl.class).d_photo(sit_idx);
			
			for (MultipartFile mf : fileList) {
				String originalName = new String(mf.getOriginalFilename().getBytes(), "UTF-8");
				String ext = originalName.substring(originalName.lastIndexOf('.'));
				String saveFileName = FileUtil.getUuid() + ext;
				mf.transferTo(new File(path + File.separator + saveFileName));
				sqlSession.getMapper(PetSitterDAOImpl.class).i_photo(saveFileName, sit_idx);
			}
		}


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
		
		//Sitter 테이블 정보 추출

		PetSitterDTO sitterView = sqlSession.getMapper(PetSitterDAOImpl.class).sitterView(sit_idx);
		
		// Sitter 사진
		ArrayList<PetSitterDTO> sit_photo = sqlSession.getMapper(PetSitterDAOImpl.class).sit_photo(sit_idx);
		model.addAttribute("sit_photo", sit_photo);

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
		
		int pageSize = 4;
		
		int nowPage = (req.getParameter("nowPage") == null || req.getParameter("nowPage").equals("")) 
				? 1 : Integer.parseInt(req.getParameter("nowPage")) + 1;
		System.out.println(nowPage);
		
		//가져올 시터 시작과 끝
		int start = 1; 
		int end = nowPage * pageSize; 
		//parameterDTO에 start와 end값 저장
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
        
        //시터 리스트
		String s_start = req.getParameter("sD");
		String s_end = req.getParameter("eD");
		System.out.println("예약 시작일 : " + s_start);
		System.out.println("예약 종료일 : " + s_end);
		if (s_start != null) {
			parameterDTO.setSbook_start1(s_start);
			parameterDTO.setSbook_start2(s_start);
			parameterDTO.setSbook_end1(s_end);
			parameterDTO.setSbook_end2(s_end);
		} else {
			parameterDTO.setSbook_start1("");
			parameterDTO.setSbook_start2("");
			parameterDTO.setSbook_end1("");
			parameterDTO.setSbook_end2("");
		}
		
		String np = req.getParameter("np");
		System.out.println("np : " + np);
		String pu = req.getParameter("pu");
		System.out.println("pu : " + pu);
		String b = req.getParameter("b");
		System.out.println("b : " + b);
		String pg = req.getParameter("pg");
		System.out.println("pg : " + pg);
		String oc = req.getParameter("oc");
		System.out.println("oc : " + oc);
		ArrayList<Integer> typtag = new ArrayList<Integer>();
		int count = 0;
		if (np != null) {
			if(np.equals("1")) {
				typtag.add(1) ;
				count ++;
			} 
		}
		if (pu != null) {
			if (pu.equals("1")) {
				typtag.add(2) ;
				count ++;
			}
		}
		if (b != null) {
			if (b.equals("1")) {
				typtag.add(3) ;
				count ++;
			}
		}
		if (pg != null) {
			if (pg.equals("1")) {
				typtag.add(4) ;
				count ++;
			}
		}
		if (oc != null) {
			if (oc.equals("1")) {
				typtag.add(5) ;
				count ++;
			}
		}
		System.out.println("타입 : " + typtag);
		System.out.println("타입 개수 : " + count);
		parameterDTO.setTyptag(typtag);
		parameterDTO.setCount(count);
		
		int totalCount = sqlSession.getMapper(PetSitterDAOImpl.class).searchCount(parameterDTO);
		model.addAttribute("total", totalCount);
		System.out.println("전체 개수 : " + totalCount);
		ArrayList<PetSitterDTO> lists = sqlSession.getMapper(PetSitterDAOImpl.class).petsitterList(parameterDTO);
		model.addAttribute("lists", lists);
		for(PetSitterDTO dto : lists) {
	           System.out.println("출력 : " + dto.getSit_idx());
	        }
		model.addAttribute("search", parameterDTO);
		model.addAttribute("nowPage",nowPage);
		
		return "./Petsitters/sitterlist";
	}
	
	//리스트 더보기(json)
	@RequestMapping(value = "/Petsitters/sitterlist", method = RequestMethod.POST)
    @ResponseBody
    public ArrayList<PetSitterDTO> sitterList(Model model, HttpServletRequest req, ParameterDTO parameterDTO, HttpServletResponse resp) {

        //한 블럭에서 보여줄 시터 수 
        int pageSize = 4;
        
        //현제 페이지를 받아옴
        int nowPage = (req.getParameter("nowPage") == null || req.getParameter("nowPage").equals("")) 
                 ? 1 : Integer.parseInt(req.getParameter("nowPage")) + 1;
        System.out.println("현재 페이지 : " + nowPage);
        
        //가져올 시터 시작과 끝
        int start = ((nowPage - 1) * pageSize) + 1;
        System.out.println("시작 : " + start);
        int end = nowPage * pageSize;
        System.out.println("끝 : " + end);
        //parameterDTO에 start와 end값 저장
        parameterDTO.setStart(start);
        parameterDTO.setEnd(end);
        
        //시터 리스트
        String s_start = req.getParameter("sD");
		String s_end = req.getParameter("eD");
		System.out.println("예약 시작일 : " + s_start);
		System.out.println("예약 종료일 : " + s_end);
		if (s_start != null) {
			parameterDTO.setSbook_start1(s_start);
			parameterDTO.setSbook_start2(s_start);
			parameterDTO.setSbook_end1(s_end);
			parameterDTO.setSbook_end2(s_end);
		} else {
			parameterDTO.setSbook_start1("");
			parameterDTO.setSbook_start2("");
			parameterDTO.setSbook_end1("");
			parameterDTO.setSbook_end2("");
		}
		
		String np = req.getParameter("np");
		System.out.println("np : " + np);
		String pu = req.getParameter("pu");
		System.out.println("pu : " + pu);
		String b = req.getParameter("b");
		System.out.println("b : " + b);
		String pg = req.getParameter("pg");
		System.out.println("pg : " + pg);
		String oc = req.getParameter("oc");
		System.out.println("oc : " + oc);
		ArrayList<Integer> typtag = new ArrayList<Integer>();
		int count = 0;
		if (np != null) {
			if(np.equals("1")) {
				typtag.add(1) ;
				count ++;
			} 
		}
		if (pu != null) {
			if (pu.equals("1")) {
				typtag.add(2) ;
				count ++;
			}
		}
		if (b != null) {
			if (b.equals("1")) {
				typtag.add(3) ;
				count ++;
			}
		}
		if (pg != null) {
			if (pg.equals("1")) {
				typtag.add(4) ;
				count ++;
			}
		}
		if (oc != null) {
			if (oc.equals("1")) {
				typtag.add(5) ;
				count ++;
			}
		}
		System.out.println("타입 : " + typtag);
		System.out.println("타입 개수 : " + count);
		parameterDTO.setTyptag(typtag);
		parameterDTO.setCount(count);
		
		int totalCount = sqlSession.getMapper(PetSitterDAOImpl.class).searchCount(parameterDTO);
		System.out.println("전체 개수 : " + totalCount);
		model.addAttribute("total", totalCount);
		ArrayList<PetSitterDTO> lists = sqlSession.getMapper(PetSitterDAOImpl.class).petsitterList(parameterDTO);
		model.addAttribute("lists", lists);
		for(PetSitterDTO dto : lists) {
	           System.out.println("출력 : " + dto.getSit_idx());
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
