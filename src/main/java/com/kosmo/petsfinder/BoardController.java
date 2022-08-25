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
import org.springframework.web.servlet.ModelAndView;

import petsfinder.admin.AdminDAOImpl;
import petsfinder.admin.AdminDTO;
import petsfinder.board.ParameterDTO;
import petsfinder.board.boardDAOImpl;
import petsfinder.utils.PagingUtil;

@Controller
public class BoardController {
	
	@Autowired
	private SqlSession sqlSession;
	
	//qna,faq 리스트 출력
	@RequestMapping("/board")
	public String board(Model model, HttpServletRequest req,HttpSession session) {
		
		
		
		
		ParameterDTO parameterDTO = new ParameterDTO();
		int totalRecordCount = sqlSession.getMapper(boardDAOImpl.class).getTotalCountSearch(parameterDTO);
		
		
		AdminDTO adminDTO = new AdminDTO();
		ArrayList<AdminDTO> faqlist = sqlSession.getMapper(boardDAOImpl.class).FaqList(adminDTO);
		
		int pageSize = 5;
		int blockPage = 5;
		
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);
		
		int nowPage = req.getParameter("nowPage")==null ? 1 :
			Integer.parseInt(req.getParameter("nowPage"));
		int start = (nowPage-1) * pageSize + 1;
		int end = nowPage * pageSize;
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		ArrayList<AdminDTO> qnalistview = sqlSession.getMapper(boardDAOImpl.class).qnalistview(start, end);
		ArrayList<AdminDTO> qnalist = sqlSession.getMapper(boardDAOImpl.class).qnaList(start, end); 
		ArrayList<AdminDTO> qnaAll = sqlSession.getMapper(boardDAOImpl.class).qnaAll(start, end);
		
		String pagingImg = PagingUtil.pagingImg(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath()+"/board?");
		
		model.addAttribute("qnaAll",qnaAll);
		model.addAttribute("qnalistview",qnalistview);
		model.addAttribute("pagingImg",pagingImg);
		model.addAttribute("faqlist",faqlist);
		model.addAttribute("qnalist",qnalist);
		model.addAttribute("adminDTO",adminDTO);
		
		return "board";
	}
	
	//qna 글쓰기 페이지 진입
	@RequestMapping("/writeQNA")
	public String writeQNA(HttpServletRequest req) {
		
		return "qnaWrite";
	}
	
	//qna 글쓰기 액션
	@RequestMapping(value="/QNAaction", method=RequestMethod.POST)
	public String QNA(Model model, HttpServletRequest req){
		
		AdminDTO dto = new AdminDTO();
		String qna_title = req.getParameter("qna_title");
		String qna_content = req.getParameter("qna_content");
		String qna_stt = req.getParameter("qna_stt");
		String qna_OPENSTATUS = req.getParameter("qna_OPENSTATUS");
		int member_idx = Integer.parseInt(req.getParameter("member_idx"));
		
		dto.setQna_title(qna_title);
		dto.setQna_content(qna_content);
		dto.setQna_stt(qna_stt);
		dto.setQna_OPENSTATUS(qna_OPENSTATUS);
		dto.setMember_idx(member_idx);
		
		sqlSession.getMapper(boardDAOImpl.class).writeQNA(dto);
		
		
		return "redirect:./board";
	}
	
	//QnA 삭제
	@RequestMapping("/deleteqna")
	public String deleteqna(HttpServletRequest req) {
		
		int qna_idx = Integer.parseInt(req.getParameter("qna_idx"));
		sqlSession.getMapper(boardDAOImpl.class).deleteqna(qna_idx);
		
		return "redirect:./board";
	}
	
	//QnA 수정
	@RequestMapping("/editqna")
	public String editqna(Model model, HttpServletRequest req, AdminDTO adminDTO) {
		
		int qna_idx = Integer.parseInt(req.getParameter("qna_idx"));
		adminDTO.setQna_idx(qna_idx);
		
		AdminDTO editQnA = sqlSession.getMapper(boardDAOImpl.class).viewQnA(adminDTO);
		
		model.addAttribute("editQnA",editQnA);
		
		return "qnaEdit";
	}
	//QnA 수정 액션
	@RequestMapping(value="/qnaeditAc", method=RequestMethod.POST)
	public String qnaAction(HttpServletRequest req, AdminDTO adminDTO){
		
		sqlSession.getMapper(boardDAOImpl.class).editQnA(adminDTO);
		
		return "redirect:./board";
	}
	
	
}
