package com.kosmo.petsfinder;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import petsfinder.petsitter.PetSitterDAOImpl;
import petsfinder.petsitter.PetSitterDTO;
import petsfinder.review.ReviewBoardDAOImpl;
import petsfinder.review.ReviewBoardDTO;
import petsfinder.utils.PagingUtil;

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
			System.out.println(services);
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
		System.out.println(sit_title);
		System.out.println(typTag);
		System.out.println(sit_intro);
		System.out.println(s_fee);
		System.out.println(m_fee);
		System.out.println(b_fee);
		
		return "default";
	}
	
	//시터 값 처리
	//인파라미터에 DTO를 넣으면 전체가 들어가는건데 일단 전부가 아닐수도 있기에 다 넣지는 말자. 
	@RequestMapping("/Petsitters/sitterView.do") 
	public String SitterViewmemberInfo(Model model, HttpServletRequest req, HttpSession session) {
		
		int member_idx = Integer.parseInt(req.getParameter("member_idx"));
//		System.out.println("member_idx:"+member_idx);
		int sit_idx = Integer.parseInt(req.getParameter("sit_idx"));
//		System.out.println("sit_idx:"+sit_idx);
		
		//Sitter 테이블 정보 추출
		PetSitterDTO petSitterDTO = new PetSitterDTO();
		petSitterDTO.setMember_idx(member_idx);
		PetSitterDTO sitterViewList = sqlSession.getMapper(PetSitterDAOImpl.class).sitterView(member_idx);
		model.addAttribute("sitterViewList",sitterViewList);
		
		//sitterReview 테이블 정보 추출
		ArrayList<ReviewBoardDTO> stReview = sqlSession.getMapper(PetSitterDAOImpl.class).stReview(sit_idx);
		model.addAttribute("stReview", stReview);
		
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
		
//		System.out.println("sitterViewList:"+sitterViewList);
//		System.out.println("stReview"+stReview);
//		System.out.println("avalService"+avalService);
//		System.out.println("sitterTag"+sitterTag);
		
		return "./Petsitters/sitterView"; 
	 
	}
	
	/*
	 * @RequestMapping("/petsitters/reserve") public String reserve(Model model,
	 * HttpServletRequest req) {
	 * 
	 * PetSitterDTO petSitterDTO = new PetSitterDTO();
	 * 
	 * String sbook_start = req.getParameter("sD"); String sbook_end =
	 * req.getParameter("eD");
	 * 
	 * return "./Petsitters/sitterView"; }
	 */
	
	
	@RequestMapping("/Petsitters/sitterreview")
	public String PSreview(Model model, HttpServletRequest req) {
		
		int totalRecordCount = sqlSession.getMapper(ReviewBoardDAOImpl.class).getTotalCount();
		
		int pageSize = 3;
		int blockPage = 4;
		
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
	public String sitterList(Model model, HttpServletRequest req) {

		int totalRecordCount = sqlSession.getMapper(PetSitterDAOImpl.class).getTotalCount();

		int pageSize = 5;

		int blockPage = 2;

		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);

		int nowPage = (req.getParameter("nowPage") == null || req.getParameter("nowPage").equals("")) ? 1
				: Integer.parseInt(req.getParameter("nowPage"));

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		
		ArrayList<PetSitterDTO> lists = sqlSession.getMapper(PetSitterDAOImpl.class).listPage(start, end);
		String pagingImg = PagingUtil.pagingImg(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/Petsitters/sitterlist?");
		model.addAttribute("pagingImg", pagingImg);

		model.addAttribute("lists", lists);
		

		return "./Petsitters/sitterlist";
	}
	//시터 찾기 처음 들어갔을 때의 페이지 (페이징 처리 필요 없이 4개만 가져오면됨)
	@RequestMapping("/Petsitters/petsitters")
	public String sitter(Model model, HttpServletRequest req) {

		int start = 1;
		int end = 4;
		
		ArrayList<PetSitterDTO> lists = sqlSession.getMapper(PetSitterDAOImpl.class).listPage(start, end);
		ArrayList<PetSitterDTO> lists1 = sqlSession.getMapper(PetSitterDAOImpl.class).listPage1(start, end);
		ArrayList<PetSitterDTO> lists2 = sqlSession.getMapper(PetSitterDAOImpl.class).listPage2(start, end);

		model.addAttribute("lists", lists);
		model.addAttribute("lists1",lists1);
		model.addAttribute("lists2",lists2);
		return "./Petsitters/petsitters";
	}

}
