package com.kosmo.petsfinder;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import petsfinder.petsitter.PetSitterDAOImpl;
import petsfinder.petsitter.PetSitterDTO;
import petsfinder.review.ReviewBoardDAOImpl;
import petsfinder.review.ReviewBoardDTO;
import petsfinder.utils.PagingUtil;

@Controller
public class PetsitterController {

	@Autowired
	SqlSession sqlSession;
	
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
	//시터 값 처리
	//인파라미터에 DTO를 넣으면 전체가 들어가는건데 일단 전부가 아닐수도 있기에 다 넣지는 말자. 
	@RequestMapping("/Petsitters/sitterView.do") 
	public String SitterViewmemberInfo(Model model, HttpServletRequest req) {
		
		int member_idx = Integer.parseInt(req.getParameter("member_idx"));
		System.out.println("member_idx:"+member_idx);
		int sit_idx = Integer.parseInt(req.getParameter("sit_idx"));
		System.out.println("sit_idx:"+sit_idx);
		
		//Sitter 테이블 정보 추출
		PetSitterDTO petsitterDTO = new PetSitterDTO();
		petsitterDTO.setMember_idx(member_idx);
		PetSitterDTO sitterViewList = sqlSession.getMapper(PetSitterDAOImpl.class).sitterView(petsitterDTO);
		
		//Member테이블 정보 추출
		//MemberDTO stMember = sqlSession.getMapper(PetSitterDAOImpl.class).stMember(petSitterDTO);
		
		//Pet 테이블 정보 추출
		petsitterDTO.setSit_idx(sit_idx);
		//PetDTO stPet = sqlSession.getMapper(PetSitterDAOImpl.class).stPet(petSitterDTO);
		
		
		
		//sitterReview 테이블 정보 추출
		PetSitterDTO stReview = sqlSession.getMapper(PetSitterDAOImpl.class).stReview(petsitterDTO);
		
		
		//이용가능서비스 테이블 추출 (DTO가 아니라 1개 이상의 결과이기 때문에 ArrayList로 담아야함)
		//PetSitterDTO avalService = sqlSession.getMapper(PetSitterDAOImpl.class).avalService(petSitterDTO);
		ArrayList<PetSitterDTO> avalService = sqlSession.getMapper(PetSitterDAOImpl.class).avalService(petsitterDTO);
		
		//시터 태그 테이블 추출
		ArrayList<PetSitterDTO> sitterTag = sqlSession.getMapper(PetSitterDAOImpl.class).sitterTag(petsitterDTO);
		
		model.addAttribute("sitterViewList",sitterViewList);
		//model.addAttribute("stMember",stMember);
		//model.addAttribute("stPet", stPet);
		model.addAttribute("stReview", stReview);
		model.addAttribute("avalService",avalService);
		model.addAttribute("sitterTag",sitterTag);
		
		System.out.println("sitterViewList:"+sitterViewList);
		//System.out.println("stMember:"+stMember);
		//System.out.println("stPet"+stPet);
		System.out.println("stReview"+stReview);
		System.out.println("avalService"+avalService);
		System.out.println("sitterTag"+sitterTag);
		
		return "./Petsitters/sitterView"; 
	 
	}
	@RequestMapping("/Petsitter/sitterlist")
	public String searchTag(Model model, HttpServletRequest req) {
		
		PetSitterDTO petSitterDTO = new PetSitterDTO();
		petSitterDTO.setSearchTxt(req.getParameter("searchTxt"));
		
		int totalRecordCount = sqlSession.getMapper(PetSitterDAOImpl.class).getTotalCountSearchTag(petSitterDTO);
		ArrayList<PetSitterDTO> searchTag = sqlSession.getMapper(PetSitterDAOImpl.class).searchTaglist(petSitterDTO);

//		int pageSize = 5;
//		int blockPage = 3;
//		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);
//		int nowPage = (req.getParameter("nowPage")==null 
//				|| req.getParameter("nowPage").equals("")) 
//					? 1 : Integer.parseInt(req.getParameter("nowPage"));
//		int start = (nowPage-1)* pageSize +1;
//		int end = nowPage + pageSize;
		
		for(PetSitterDTO dto : searchTag) {
			String temp = dto.getSit_intro().replace("\r\n", "</br>");
			dto.setSit_intro(temp);
		}
		model.addAttribute("searchTag", searchTag);
		
		return "./Petsitters/sitterlist";
	}
}
