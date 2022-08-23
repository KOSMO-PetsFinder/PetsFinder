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
import org.springframework.web.bind.annotation.RequestBody;
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
import petsfinder.shop.PayInfoDTO;
import petsfinder.shop.ShopDAOImpl;
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
			System.out.println("현재 태그 : " + sit_tags);
			System.out.println("전체 태그 : " + tags);
			ArrayList<Integer> services = sqlSession.getMapper(PetSitterDAOImpl.class).sit_service(petsitterDTO.getSit_idx());
			model.addAttribute("sit_tags", sit_tags);
			model.addAttribute("tags", tags);
			model.addAttribute("services", services);
			model.addAttribute("s_info", petsitterDTO);
		} else {
			List<String> tags = new ArrayList<String>();
			tags = sqlSession.getMapper(PetSitterDAOImpl.class).tags();
			model.addAttribute("tags", tags);
		}
		
		return "petsitterForm";
	}
    
	@SuppressWarnings("unused")
	@RequestMapping(value="/petsitterRegist", method = RequestMethod.POST)
	public String petsitterRegist(Model model, HttpServletRequest req, MultipartHttpServletRequest mr, HttpSession session) throws Exception {
		
		PetSitterDTO dto = new PetSitterDTO();
		
		// sitter 테이블 쪽 받아오기
		int sit_idx = 0;
		if (req.getParameter("sit_idx") != null && !req.getParameter("sit_idx").equals("")) {
			sit_idx = Integer.parseInt(req.getParameter("sit_idx"));
		} 
		System.out.println("sit_idx : " + sit_idx);
		String sit_title = req.getParameter("sit_title");
		String sit_intro = req.getParameter("sit_intro");
		int s_fee = Integer.parseInt(req.getParameter("s_fee"));
		int m_fee = Integer.parseInt(req.getParameter("m_fee"));
		int b_fee = Integer.parseInt(req.getParameter("b_fee"));
		
		// DTO에 저장
		dto.setSit_title(sit_title);
		dto.setSit_intro(sit_intro);
		dto.setS_fee(s_fee);
		dto.setM_fee(m_fee);
		dto.setB_fee(b_fee);
		
		// sit_idx 값이 있으면 수정
		if(req.getParameter("sit_idx") != null && !req.getParameter("sit_idx").equals("")) {
			dto.setSit_idx(sit_idx);
			sqlSession.getMapper(PetSitterDAOImpl.class).u_sitter(dto);
			// 태그 전체 삭제
			sqlSession.getMapper(PetSitterDAOImpl.class).d_tag(sit_idx);
		// sit_idx 값이 없으면 생성
		} else {
			dto.setMember_idx(Integer.parseInt(session.getAttribute("idx").toString()));
			String member_addr = sqlSession.getMapper(MemberDAOImpl.class).addr(session.getAttribute("idx").toString());
			String sit_addr = member_addr.split(" / ")[1];
			System.out.println(sit_addr);
			dto.setSit_addr(sit_addr);
			sqlSession.getMapper(PetSitterDAOImpl.class).i_sitter(dto);
		}
		
		if (sit_idx == 0) {
			sit_idx = sqlSession.getMapper(PetSitterDAOImpl.class).u_sitIdx(sit_title);
		}
		
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
		
		// 사진 업로드
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
		double sp = sitterView.getSit_starpoint();
		double sc = sitterView.getSit_starcount();
		// 확인용
		double s = (sp / sc);
		System.out.println(s);
		// 출력용
		int star = (int) Math.round(sp / sc);
		System.out.println(star);
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
		model.addAttribute("star", star);
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
	public ReviewCommentDTO CommentInsert(HttpServletRequest req, ReviewCommentDTO reviewCommentDTO, HttpSession session) {
		//글쓴 사람의 정보를 불러옴
		String sIdx = req.getParameter("member_idx");
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
	
	//펫시터 예약 요청시 이메일 전송
	@RequestMapping("/Petsitters/bookEmailInfo.do")
	@ResponseBody
	public int reservEmail(Model model, @RequestBody PetSitterDTO petSitterDTO, HttpSession session, HttpServletResponse resp) throws IOException {
		//10개의 데이터 중 시터 이메일 정보와, 회원의 이메일 정보는 이메일 전송용. 
		//시터의 이름과 이메일 정보 
		//1
		String sitter_name = petSitterDTO.getMember_name();
		System.out.println("시터의 이름: "+sitter_name);
		//2
		String sitter_email = petSitterDTO.getMember_email();
		System.out.println("시터의 이메일: "+sitter_email);
		//3
		//int idx =Integer.parseInt(sIdx);
		int sit_idx  = petSitterDTO.getSit_idx();
		System.out.println("시터의 idx: "+ sit_idx);
		
		//고객의 예약 날짜
		//4
		String sbook_start = petSitterDTO.getSbook_start();
		System.out.println("startDate: "+sbook_start);
		//5
		String sbook_end = petSitterDTO.getSbook_end();
		System.out.println("endDate: "+sbook_end);
		//고객의 예약 합계
		//6
		String p_cellData = petSitterDTO.getP_cellData();
		System.out.println("반려동물정보:"+p_cellData);
		//고객의 예약 반려동물 정보 
		//7
		String totalPrice = petSitterDTO.getTotalPrice();
		System.out.println("합계: "+totalPrice);
		
		//현재 로그인한 고객의 이메일 & member_idx 정보 
		//8
		String login_email = session.getAttribute("email").toString();
		System.out.println("고객의 이메일: "+login_email);
		//9
		//int sit_idx  = Integer.parseInt(req.getParameter("sit_idx"));
		int member_idx = (int) session.getAttribute("idx");
		System.out.println("고객의 idx: "+member_idx);
		//고객의 이름
		String member_name = (String) session.getAttribute("name");
		//10
		//sbook_status 를 어디서 결정하지? 일단은 넘길때는 default로 넘겨놔야되겠다. 
		//String sbook_status = req.getParameter("sbook_status");
		//System.out.println("예약상태 default:"+ sbook_status);
		//데이터 DB에 저장 (8개의 데이터 중 sbook_idx 빼고 7개 저장)
		/*
		sit_idx (시터의 이름과 이메일을 빼내기 위한 정보)
		member_idx (세션에서 로그인 정보로 빼오기)
		sbook_start
		sbook_end
		sbook_status 
		p_cellData
		totalPrice
		*/
		PayInfoDTO p_dto = new PayInfoDTO();
		p_dto.setMember_idx(member_idx);
		p_dto.setMerchant_uid(petSitterDTO.getMerchant_uid());
		p_dto.setProductname(petSitterDTO.getP_cellData());
		String b = petSitterDTO.getTotalPrice().split("원")[0];
		String[] a = b.split(",");
		String amount = "";
		for (int i = 0; i < a.length; i++) {
			amount += a[i];
		}
		p_dto.setAmount(Integer.parseInt(amount));
		p_dto.setPayStus(petSitterDTO.getPayStus());
		int result = sqlSession.getMapper(ShopDAOImpl.class).insertPay(p_dto);
		int success = sqlSession.getMapper(PetSitterDAOImpl.class).reserve(petSitterDTO);
		if( success == 1 ) {
			System.out.println("예약 내역 DB저장 성공");
		}
		else {
			System.out.println("예약 내역 DB저장 실패");
		}
		
		return success;
	}
	
	//이 컨트롤러가 사라지고 위에서 처리하게 만들어야함. 
	@RequestMapping("/Petsitters/bookEmailSend")
	public String bookEmailSend(Model model, HttpServletRequest req, HttpSession session) {
		
		//info에서 여기로 값을 넘겨서 param값으로 받아오고 있음. 
		//즉, 여기서 bookEmailSend를 팝업창으로 열어서 넘기면됨.
		
		return "./Petsitters/bookEmailSend";
	}
	
	
	public boolean emailSending2(Map<String, String> map) {
		
		boolean sendOk = false;
		
		// 네이버 SMTP 서버를 사용하기 위한 속성으로 이미 정해져 있는 값으로 설정
		Properties p = new Properties();
        p.put("mail.smtp.host", "smtp.naver.com");
        p.put("mail.smtp.port", "465");
        p.put("mail.smtp.starttls.enable", "true");
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.debug", "true");
        p.put("mail.smtp.socketFactory.port", "465");
        p.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        p.put("mail.smtp.socketFactory.fallback", "false");
        
        try {
        	// 네이버에 로그인 하여 인증 정보를 얻어온다.
        	Authenticator auth = new SMTPAuth();
        	
        	Session session = Session.getInstance(p, auth);
        	session.setDebug(true);
        	
        	// 제목 설정
        	MimeMessage msg = new MimeMessage(session);
        	msg.setSubject(map.get("subject"));
        	
        	// 보내는 사람 Email 설정
        	Address fromAddr = new InternetAddress(map.get("from"));
        	msg.setFrom(fromAddr);
        	
        	// 받는 사람 Email 설정
        	Address toAddr = new InternetAddress(map.get("to1"));
        	Address toAddr2 = new InternetAddress(map.get("to2"));
        	msg.addRecipient(Message.RecipientType.TO, toAddr);
        	msg.addRecipient(Message.RecipientType.TO, toAddr2);
        	
        	// 내용 줄바꿈 처리
        	msg.setContent(map.get("content"), "text/html;charset=UTF-8");
        	
        	// 실제 Email 발송 처리 부분
        	Transport.send(msg);
        	sendOk = true;
        	
        	
        } catch (Exception e) {
        	sendOk = false;
        	e.printStackTrace();
        }
        
        return sendOk;
        
	}
	//bookemailSendAction.do
	// 사용자가 작성한 내용을 form값으로 받아 정리한 후 메일 발송
	@RequestMapping(value="/Petsitters/bookEmailSendAction.do", method = RequestMethod.POST)
	public void emailSendAction(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String sendResult = "이메일 전송 준비";
		// form값 정리를 위한 Map 컬렉션
		Map<String,	String> emailContent = new HashMap<String, String>();
		// 보내는 사람
		emailContent.put("from", req.getParameter("from"));
		// 받는 사람
		emailContent.put("to1", req.getParameter("to1"));
		emailContent.put("to2", req.getParameter("to2"));
		// 제목
		emailContent.put("subject", req.getParameter("subject"));
		
		// 메일 발송 형식
		String format = req.getParameter("format");
		// 내용 (여기서 content를 두개 만들어서 보내보자)
		String content = req.getParameter("content").replace("\r\n", "<br/>");
		
		if(format.equals("text")) {
			// 전송 형식이 text라면 순수한 텍스트만 내용에 추가
			emailContent.put("content", content);
		} else if (format.equals("html")) {
			// html 형식이라면 우리가 디자인 한 메일form에 내용을 추가한 후 메일 발송
			String oneLine="", mailContents="";
			try {
				// 메일 form이 있는 디렉토리의 물리적 경로 얻어오기
				String dirPath = req.getSession().getServletContext().getRealPath("/resources/mailForm/MailForm.html");
				// 파일의 내용을 읽어오기 위해 IO스트림을 생성한다.
	            BufferedReader br = new BufferedReader(new FileReader(dirPath));
	            // 파일의 내용을 한 줄씩 읽어 변수에 저장
	            // 더 이상 내용이 없으면 while문 탈출
	            while((oneLine = br.readLine()) != null){
	               mailContents += oneLine + "\n";
	            }
	            // 스트림 자원 반납
	            br.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
			// 메일 form에서 읽어온 내용(HTML태그)에서 내용 부분 변경
	        mailContents = mailContents.replace("__CONTENT__", content);
	        // 내용을 Map컬렉션에 추가
	        emailContent.put("content", mailContents);
		}
		if(req.getParameter("content") != null) {
			// 입력된 내용이 있다면 메일 발송.
			// 이 때 form값을 저장한 Map컬렉션을 인수로 전달
			// emailSending2(emailContent);
			// 전송 여부 확인 용
            boolean emailResult = emailSending2(emailContent);
            if(emailResult==true) {
               System.out.println("이메일 전송 성공");
               sendResult = "이메일 전송 성공";
            }
            else {
               System.out.println("이메일 전송 실패");
               sendResult = "이메일 전송 실패";
            }
        }
		// 컨트롤러에서 즉시 전송 결과 출력
        resp.setContentType("text/html; charset=utf-8");
        // 전송 완료 후 뜨는 페이지에 뜨자마자 닫는 script 태그 삽입
        resp.getWriter().write("<script src=\"https://code.jquery.com/jquery-3.6.0.js\" integrity=\"sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=\" crossorigin=\"anonymous\"></script>\r\n"
        		+ "<script>\r\n"
        		+ "$(document).ready(function(){\r\n"
        		+ "	self.close();\r\n"
        		+ "});\r\n"
        		+ "</script>");
        // resp.getWriter().write(sendResult);
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
		
		String price = req.getParameter("pr");
		parameterDTO.setPrice(price);
		
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
		
		String price = req.getParameter("pr");
		parameterDTO.setPrice(price);
		
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
