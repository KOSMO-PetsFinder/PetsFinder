package com.kosmo.petsfinder;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
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

import fileupload.FileUtil;
import petsfinder.abandonedanimal.AbandonedAnimalDTO;
import petsfinder.abandonedanimal.AdoptionAppDTO;
import petsfinder.abandonedanimal.ReportDTO;
import petsfinder.admin.AdminDAOImpl;
import petsfinder.admin.AdminDTO;
import petsfinder.admin.AdminSitAplDTO;
import petsfinder.board.QnACommentDTO;
import petsfinder.member.MemberDTO;
import petsfinder.petsitter.PetSitterDTO;
import petsfinder.review.ReviewBoardDTO;
import petsfinder.shop.ParameterDTO;
import petsfinder.shop.PayMentDTO;
import petsfinder.shop.ProductDTO;
import petsfinder.shop.ShipLocInfoDTO;
import petsfinder.shop.ShopDAOImpl;

@Controller
public class AdminController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/Admin/noti")
	public String noti() {
		return "./Admin/adminMain";
	}
	
	
////////////////////////은아언니/////////////////////////////////////////////
	
	//Q&A 게시판
	@RequestMapping("/Admin/qnaList.do")
	public String adminQnaList(Model model, HttpServletRequest req) {
		
		//현재 페이지에 출력할 게시물 가져오기
		AdminDTO adminDTO = new AdminDTO();
		ArrayList<AdminDTO> qnaList = sqlSession.getMapper(AdminDAOImpl.class).qnaList(adminDTO);
		model.addAttribute("qnaList",qnaList);
		System.out.println("qnaList"+qnaList);
		return "./Admin/AdminBoard/qnaList";
		
	}
	
	@RequestMapping("/qnaView.do")
	public String adminQnaView(Model model, HttpServletRequest req) { 
		AdminDTO adminDTO = new AdminDTO();
		int qna_idx = Integer.parseInt(req.getParameter("qna_idx"));
		System.out.println("qna_idx"+qna_idx);
		adminDTO.setQna_idx(qna_idx);
		AdminDTO qnaView = sqlSession.getMapper(AdminDAOImpl.class).qnaView(adminDTO);
		model.addAttribute("req", req);
		model.addAttribute("qnaView", qnaView);
		return"./Admin/AdminBoard/qnaView";
	}
	
	@RequestMapping("/qnaDelete.do")
	public String adminQnaDel(HttpServletRequest req) {
		int qna_idx = Integer.parseInt(req.getParameter("qna_idx"));
		System.out.println("qna_idx"+qna_idx);
		sqlSession.getMapper(AdminDAOImpl.class).qnaDelete(qna_idx);
		return "redirect:./Admin/qnaList.do";
		
	}
	
	
	//Admin 리액트 연결
		@RequestMapping("/Admin/noticeReact.do")
		public String noticeReact(Model model, HttpServletRequest req) {
			return "./Admin/AdminBoard/noticeReact";
		}
		
	
	//시터 예약 테이블
	// 이부분 다시 => 시터 이름, 예약자 이름 한번에 Mapper에서 뽑아와야함 Mapper 수정 need
	@RequestMapping("/Admin/sitBList.do")
	public String sitBList(Model model, HttpServletRequest req) {
		PetSitterDTO petSitterDTO = new PetSitterDTO();
		ArrayList<PetSitterDTO> sitBList = sqlSession.getMapper(AdminDAOImpl.class).sitBList(petSitterDTO);
		model.addAttribute("sitBList",sitBList);
		System.out.println("sitBList"+sitBList);
		return "./Admin/AdminSitter/sitBList";
	}
	
	@RequestMapping("/sitBView.do")
	public String sitBView(Model model, HttpServletRequest req) {
		PetSitterDTO petSitterDTO = new PetSitterDTO();
		int sbook_idx = Integer.parseInt(req.getParameter("sbook_idx"));
		System.out.println("sbook_idx"+sbook_idx);
		petSitterDTO.setSbook_idx(sbook_idx);
		PetSitterDTO sitBView = sqlSession.getMapper(AdminDAOImpl.class).sitBView(petSitterDTO);
		model.addAttribute("sitBView",sitBView);
		System.out.println("sitBView"+sitBView);
		return "./Admin/AdminSitter/sitBView";
		
	}
	
	@RequestMapping("/sitBDelete.do")
	public String sitBDelete(Model model, HttpServletRequest req) {
		int sbook_idx = Integer.parseInt(req.getParameter("sbook_idx"));
		System.out.println("sbook_idx"+sbook_idx);
		sqlSession.getMapper(AdminDAOImpl.class).sitBDelete(sbook_idx);
		return "redirect:./Admin/sitBList.do";
		
	}
	
	@RequestMapping("/sitBEdit.do")
	public String sitBEdit(Model model, HttpServletRequest req) {
		int sbook_idx = Integer.parseInt(req.getParameter("sbook_idx"));
		PetSitterDTO petSitterDTO = new PetSitterDTO();
		petSitterDTO.setSbook_idx(sbook_idx);
		PetSitterDTO sitBView = sqlSession.getMapper(AdminDAOImpl.class).sitBView(petSitterDTO);
		model.addAttribute("sitBView",sitBView);
		return "./Admin/AdminSitter/sitBEdit";
	}
	
	//수정 처리 보류
	@RequestMapping(value="/sitBEditAction.do", method = RequestMethod.POST)
	public String sitBEditAction (PetSitterDTO petSitterDTO, HttpServletRequest req) {
		
		
		sqlSession.getMapper(AdminDAOImpl.class).sitBEditAction(petSitterDTO);
		
		return "redirect:Admin/sitBList.do";
		
	}
	
	
/////////////////////////승헌옵////////////////////////////////////////////
	
	
	//시터 후기 게시판 이동 매핑
	@RequestMapping("Admin/AdminBoard/sitterps")
	public String sitterps(Model model, HttpServletRequest req) {
		
		ArrayList<ReviewBoardDTO> reviewlist = sqlSession.getMapper(AdminDAOImpl.class).PSlist();
		model.addAttribute("reviewlist", reviewlist);
		
		return "Admin/AdminBoard/sitterps";
	}
	//시터 후기 삭제
	@RequestMapping("Admin/AdminBoard/deleterv")
	public String delete(HttpServletRequest req) {
		
		int review_idx = Integer.parseInt(req.getParameter("review_idx"));
		
		sqlSession.getMapper(AdminDAOImpl.class).deleterv(review_idx);
		
		return "redirect:../AdminBoard/sitterps";
	}
	//회원 관리 매핑
	@RequestMapping("Admin/AdminMember/memberAd")
	public String memberAd(Model model, HttpServletRequest req) {
		
		ArrayList<MemberDTO> memlist = sqlSession.getMapper(AdminDAOImpl.class).memberlist();
		
		model.addAttribute("memlist",memlist);
		return "Admin/AdminMember/memberAd";
	}
	
	//회원 삭제
	@RequestMapping(value="Admin/AdminMember/deletemem")
	public String deletemem(HttpServletRequest req) {
		
		int member_idx = Integer.parseInt(req.getParameter("member_idx"));
		
		sqlSession.getMapper(AdminDAOImpl.class).deletemem(member_idx);
		
		return "redirect:../AdminMember/memberAd";
	}
	
	//회원 수정
	@RequestMapping("/Admin/AdminMember/modifymem")
	public String modifymem(Model model, HttpServletRequest req) {
		
		int member_idx = Integer.parseInt(req.getParameter("member_idx"));
		String member_type = req.getParameter("member_type");
		int success = sqlSession.getMapper(AdminDAOImpl.class).modifymem(member_type, member_idx);
		
		if(success == 1) {
			System.out.println("회원정보 수정 성공");
			return "redirect:../AdminMember/memberAd";
		} else {
			System.out.println("회원정보 수정 실패");
			return "redirect:../AdminMember/memberAd";
		}
	}
	
	//시터 신청
	@RequestMapping("Admin/AdminSitter/sitterApp")
	public String sitterapp(HttpServletRequest req, Model model) {
		
		ArrayList<AdminSitAplDTO> sitapp = sqlSession.getMapper(AdminDAOImpl.class).sitapllist();
		model.addAttribute("sitapp",sitapp);
		
		return "Admin/AdminSitter/sitterApp";
	}
	
	//시터 승인
	@RequestMapping("Admin/AdminSitter/accept")
	public String accept(HttpServletRequest req) {
		
		int member_idx = Integer.parseInt(req.getParameter("member_idx"));
		System.out.println("ddd"+member_idx);
		sqlSession.getMapper(AdminDAOImpl.class).accept(member_idx);
		sqlSession.getMapper(AdminDAOImpl.class).deleteap(member_idx);
		return "redirect:../AdminSitter/sitterApp";
	}
	//시터 거절
	@RequestMapping("Admin/AdminSitter/denied")
	public String denied(HttpServletRequest req) {
		
		int member_idx = Integer.parseInt(req.getParameter("member_idx"));
		sqlSession.getMapper(AdminDAOImpl.class).denied(member_idx);
		
		return "redirect:../AdminSitter/sitterApp";
	}
	
	//쇼핑몰 리스트
	@RequestMapping("Admin/AdminShop/shopRegi")
	public String shopRegi(HttpServletRequest req, Model model) {
		
		ArrayList<ProductDTO> pdt = sqlSession.getMapper(AdminDAOImpl.class).pdtlist();
		model.addAttribute("pdt",pdt);
		return "Admin/AdminShop/shopRegi";
	}
	
	//쇼핑몰 삭제
	@RequestMapping("Admin/AdminShop/deletepdt")
	public String deletepdt(HttpServletRequest req) {
		
		int product_idx = Integer.parseInt(req.getParameter("product_idx"));
		sqlSession.getMapper(AdminDAOImpl.class).deletepdt(product_idx);
		
		return"redirect:../AdminShop/shopRegi";
	}
	
	//쇼핑몰 등록 페이지
	@RequestMapping("Admin/AdminShop/productRegi")
	public String productRegi() {
		
		return "Admin/AdminShop/productRegi";
	}
	
	//물품 등록 액션
	@RequestMapping(value="/registPdt", method=RequestMethod.POST)
	public String registPdt(HttpServletRequest req, Model model, MultipartHttpServletRequest mr) throws  Exception{
		
		
		ProductDTO dto = new ProductDTO();
		
		String product_name = req.getParameter("product_name");
		int product_price = Integer.parseInt(req.getParameter("product_price"));
		String product_description = req.getParameter("product_description");
		String product_category = req.getParameter("product_category");
		int product_stock = Integer.parseInt(req.getParameter("product_stock"));
		
		dto.setProduct_name(product_name);
		dto.setProduct_price(product_price);
		dto.setProduct_description(product_description);
		dto.setProduct_category(product_category);
		dto.setProduct_stock(product_stock);
		
		System.out.println(dto.getProduct_stock());
		sqlSession.getMapper(AdminDAOImpl.class).productregi(dto);
		
		List<MultipartFile> fileList = mr.getFiles("ofile");
		System.out.println(fileList.get(0).getOriginalFilename());
		if (fileList.get(0).getOriginalFilename() !="") {
			String path = req.getSession().getServletContext().getRealPath("/resources/Uploads");
			
			for (MultipartFile mf : fileList) {
				String originalName = new String(mf.getOriginalFilename().getBytes(), "UTF-8");
				String ext = originalName.substring(originalName.lastIndexOf('.'));
				String saveFileName = FileUtil.getUuid() + ext;
				mf.transferTo(new File(path + File.separator + saveFileName));
				System.out.println(saveFileName);
				sqlSession.getMapper(AdminDAOImpl.class).i_photo(saveFileName);
			}	
		}
		
		return "redirect:Admin/AdminShop/shopRegi";
	}
	
	@RequestMapping("Admin/AdminShop/modifypdt")
	   public String viewPdt(Model model, HttpServletRequest req, ProductDTO productDTO) {
	      
	      int product_idx = Integer.parseInt(req.getParameter("product_idx"));
	      
	      productDTO.setProduct_idx(product_idx);
	      ProductDTO pdtedit = sqlSession.getMapper(AdminDAOImpl.class).pdtview(productDTO);
	      
	      model.addAttribute("pdtedit",pdtedit);
	      return "Admin/AdminShop/productMod";
	   }
	
	
	   @RequestMapping(value="/modifypdt", method=RequestMethod.POST)
	   public String modifyPdt(HttpServletRequest req, ProductDTO productDTO, MultipartHttpServletRequest mr) throws Exception  {
	      
		  int product_idx = Integer.parseInt(req.getParameter("product_idx"));
		  System.out.println(product_idx);
	      sqlSession.getMapper(AdminDAOImpl.class).pdtmodify(productDTO);
	      
	      List<MultipartFile> fileList = mr.getFiles("ofile");
			System.out.println(fileList.get(0).getOriginalFilename());
			if (fileList.get(0).getOriginalFilename() !="") {
				String path = req.getSession().getServletContext().getRealPath("/resources/Uploads");
				
				for (MultipartFile mf : fileList) {
					String originalName = new String(mf.getOriginalFilename().getBytes(), "UTF-8");
					String ext = originalName.substring(originalName.lastIndexOf('.'));
					String saveFileName = FileUtil.getUuid() + ext;
					mf.transferTo(new File(path + File.separator + saveFileName));
					System.out.println(saveFileName);
					sqlSession.getMapper(AdminDAOImpl.class).u_photo(saveFileName, product_idx);
				}	
			}
	      
	      return "redirect:Admin/AdminShop/shopRegi";
	   }
	
	@RequestMapping("/Admin/qnaView.do")
	public String adminQnaView1(Model model, HttpServletRequest req) { 
		
		int qna_idx = Integer.parseInt(req.getParameter("qna_idx"));
		System.out.println("qna_idx"+qna_idx);
		AdminDTO dto = new AdminDTO();
		
		AdminDTO qnacommentview = sqlSession.getMapper(AdminDAOImpl.class).qnacommentview(qna_idx);
		AdminDTO qnaView = sqlSession.getMapper(AdminDAOImpl.class).qnaView_s(qna_idx);
		
		model.addAttribute("req", req);
		model.addAttribute("qnaView", qnaView);
		model.addAttribute("qcv", qnacommentview);
		return"./Admin/AdminBoard/qnaView";
	}
	
	//QnA 댓글쓰기
	@RequestMapping("/qnacomment")
	public String qnacommentwrite(HttpServletRequest req, Model model) {
		
		AdminDTO adminDTO = new AdminDTO();
		
		int qna_idx = Integer.parseInt(req.getParameter("qna_idx"));
		adminDTO.setQna_idx(qna_idx);
		AdminDTO qnaView = sqlSession.getMapper(AdminDAOImpl.class).qnaView_s(qna_idx);
		AdminDTO qnacommentview  = sqlSession.getMapper(AdminDAOImpl.class).qnacommentview(qna_idx);
		
		model.addAttribute("qnaView",qnaView);
		model.addAttribute("qcv",qnacommentview );
				
		
		return "./Admin/AdminBoard/qnacomment";
	}
	
	//QnA 댓글 등록 액션
	@RequestMapping(value="/qnawriteaction", method=RequestMethod.POST)
	public String qnawriteaction(Model model, HttpServletRequest req) {
		
		QnACommentDTO dto = new QnACommentDTO();
		
		String qnacomm_content = req.getParameter("qnacomm_content");
		int qna_idx = Integer.parseInt(req.getParameter("qna_idx"));
		
		dto.setQna_idx(qna_idx);
		dto.setQnacomm_content(qnacomm_content);
		
		sqlSession.getMapper(AdminDAOImpl.class).qnawriteac(dto);
		sqlSession.getMapper(AdminDAOImpl.class).updatecom(qna_idx);
		
		return "redirect:./Admin/qnaList.do";
	}
	
	@RequestMapping("/deletecomm")
	public String deletecomm(HttpServletRequest req) {
		
		int qnacomm_idx = Integer.parseInt(req.getParameter("qnacomm_idx"));
		sqlSession.getMapper(AdminDAOImpl.class).deletecomm(qnacomm_idx);
		
		return "redirect:./Admin/qnaList.do";
	}
	
	@RequestMapping("/modifycomm")
	public String modifycomm(HttpServletRequest req, Model model) {

		AdminDTO adminDTO = new AdminDTO();
		
		int qna_idx = Integer.parseInt(req.getParameter("qna_idx"));
		adminDTO.setQna_idx(qna_idx);
		AdminDTO qnaView = sqlSession.getMapper(AdminDAOImpl.class).qnaView_s(qna_idx);
		AdminDTO qnacommentview = sqlSession.getMapper(AdminDAOImpl.class).qnacommentview(qna_idx);
		
		model.addAttribute("qnaView",qnaView);
		model.addAttribute("qcv",qnacommentview);
		
		return "./Admin/AdminBoard/modifycomm";
		
	}
	
	@RequestMapping(value="/modifyQnAcomm", method=RequestMethod.POST)
	public String modifyQnAcomm(HttpServletRequest req, AdminDTO adminDTO) {
		
		sqlSession.getMapper(AdminDAOImpl.class).modifyQnAcomm(adminDTO);
		
		return "redirect:./Admin/qnaList.do";
	}
	
	
/////////////////////원재옵///////////////////////////////////////////
	
	
	
	//유기동물 리스트 
    @RequestMapping("/Admin/animalList.do")
    public String animalList(Model model, HttpServletRequest req) { 
       
       AbandonedAnimalDTO abandonedAnimalDTO = new AbandonedAnimalDTO();
       //유기동물 리스트 
       ArrayList<AbandonedAnimalDTO> animalList = sqlSession.getMapper(AdminDAOImpl.class).animalList(abandonedAnimalDTO);
       //모델에 저장
       model.addAttribute("animalList", animalList);
       
       return "./Admin/AdminAdopt/animalList";
    }
    
    //유기동물 신고 목록 
    @RequestMapping("/Admin/reportList.do")
    public String reportList(Model model, HttpServletRequest req) { 
       
       ReportDTO reportDTO = new ReportDTO();
       //유기동물 신고 
       ArrayList<ReportDTO> reportList = sqlSession.getMapper(AdminDAOImpl.class).reportList(reportDTO);
       //모델에 저장
       model.addAttribute("reportList", reportList);
       return "./Admin/AdminAdopt/reportList";
    }
    // 구조 상태 수정(접수 or 구조진행중 or 구조완료)
    @RequestMapping("/Admin/AdminAdopt/modifyReportStat")
    public String modifyReportStat(Model model, HttpServletRequest req) {
       
       int dclrAbnd_idx = Integer.parseInt(req.getParameter("dclrAbnd_idx"));
       String dclrAbnd_stts = req.getParameter("dclrAbnd_stts");
       int success = sqlSession.getMapper(AdminDAOImpl.class).modifyReportStat(dclrAbnd_stts, dclrAbnd_idx);
       
       if(success == 1) {
          System.out.println("동물 구조 상태 수정 성공");
          return "redirect:../reportList.do";
       } else {
          System.out.println("동물 구조 상태 수정 실패");
          return "redirect:../reportList.do";
       }
    }
    // 입양 심사 상태 수정(거절, 심사중, 승인)
     @RequestMapping("/Admin/AdminAdopt/modifyAdoptStt")
     public String modifyAdoptStt(Model model, HttpServletRequest req) {
        
        int ADPAPL_idx = Integer.parseInt(req.getParameter("ADPAPL_idx"));
        String ADPAPL_stt = req.getParameter("ADPAPL_stt");
        int success = sqlSession.getMapper(AdminDAOImpl.class).modifyAdoptStt(ADPAPL_stt, ADPAPL_idx);
        
        if(success == 1) {
           System.out.println("입양 심사 상태 수정 성공");
           return "redirect:../animalList.do";
        } else {
           System.out.println("입양 심사 상태 수정 실패");
           return "redirect:../adoptAppList.do";
        }
     }
    //유기동물 신고 상세보기
    @RequestMapping("/Admin/reportView.do")
    public String reportView(Model model, HttpServletRequest req) { 
       
       int dclrAbnd_idx = Integer.parseInt(req.getParameter("dclrAbnd_idx"));
       //유기동물 신고 
       ReportDTO reportView = sqlSession.getMapper(AdminDAOImpl.class).reportView(dclrAbnd_idx);
       //모델에 저장
       model.addAttribute("reportView", reportView);
       return "./Admin/AdminAdopt/reportView";
    }
    
    //유기동물 등록
   @RequestMapping(value = "/Admin/animalRegistration.do",method = RequestMethod.GET)
   public String animalRegistration() {
      
      return "/Admin/AdminAdopt/animalRegistration";
   }
   
   @RequestMapping(value = "/Admin/animalRegistration.do",method = RequestMethod.POST)
   public String abAniRegAction(AbandonedAnimalDTO abandonedAnimalDTO, Model model, HttpServletRequest req, HttpSession session, MultipartHttpServletRequest mr) {
      
      System.out.println(abandonedAnimalDTO.getAbani_kind());
      String age = abandonedAnimalDTO.getAbani_age() + "살";
      abandonedAnimalDTO.setAbani_age(age);
      String fileName = mr.getFile("ofile").toString();
      if ( !fileName.split("filename=")[1].split(",")[0].equals("")) {
         String path = req.getSession().getServletContext().getRealPath("/resources/Uploads");
         
         MultipartFile mfile = null;
         try {
            Iterator itr = mr.getFileNames();
            if(itr.hasNext()) {
               mfile = mr.getFile(itr.next().toString());
               String originalName = new String(mfile.getOriginalFilename().getBytes(), "UTF-8");
               String ext = originalName.substring(originalName.lastIndexOf('.'));
               String saveFileName = FileUtil.getUuid() + ext;
               mfile.transferTo(new File(path + File.separator + saveFileName));
               abandonedAnimalDTO.setAbani_photo(saveFileName);
            }
         } catch (Exception e) {
            e.printStackTrace();
         }
      }
      
      int result = 
            sqlSession.getMapper(AdminDAOImpl.class).animalRegistration(abandonedAnimalDTO);
      if(result ==1) {
         System.out.println("유기동물 등록성공!");
      }
      
      
      return "redirect:./animalList.do";
   }

    //입양신청 내역 
    @RequestMapping("/Admin/adoptAppList.do")
    public String adoptAppList(Model model, HttpServletRequest req) { 
       
       AdoptionAppDTO adoptionAppDTO = new AdoptionAppDTO();
       //입양신청내역 
       ArrayList<AdoptionAppDTO> adoptAppList = sqlSession.getMapper(AdminDAOImpl.class).adoptAppList(adoptionAppDTO);
       //모델에 저장
       model.addAttribute("adoptAppList", adoptAppList);
       return "./Admin/AdminAdopt/adoptAppList";
    }
    
    //동물 상태 수정(보호중 or 입양완료, 백신접종 여부, 중성화 여부)
    @RequestMapping("/Admin/AdminAdopt/modifyAnimalList")
    public String modifyAnimalList(Model model, HttpServletRequest req) {
       
       int abani_idx = Integer.parseInt(req.getParameter("abani_idx"));
       String abani_stat = req.getParameter("abani_stat");
       int abani_neut = Integer.parseInt(req.getParameter("abani_neut"));
       int abani_vaccin = Integer.parseInt(req.getParameter("abani_vaccin"));       
       int success = sqlSession.getMapper(AdminDAOImpl.class).modifyAnimalList(abani_stat, abani_neut, abani_vaccin, abani_idx);
       if(success == 1) {
    	   System.out.println("회원정보 수정 성공");
    	   int member_idx = Integer.parseInt(req.getParameter("m_idx"));
    	   int effect = sqlSession.getMapper(AdminDAOImpl.class).adp_insert(abani_idx, member_idx);
    	   if(effect == 1) {
    		   System.out.println("입양 완료 성공");
    	   } else {
    		   System.out.println("입양 완료 실패");
    	   }
    	   return "redirect:../animalList.do";
       } else {
          System.out.println("회원정보 수정 실패");
          return "redirect:../animalList.do";
       }
    }
    
    
    
    
    
    
///////////////////////////////////////택수옵///////////////////////////////////////////////////////////
    

    
    
    
    // FAQ 게시판
 	@RequestMapping("/Admin/FaqList.do")
 	public String FaqList(Model model, HttpServletRequest req) {

 		// 현재 페이지에 출력할 게시물 가져오기
 		AdminDTO adminDTO = new AdminDTO();
 		ArrayList<AdminDTO> FaqList = sqlSession.getMapper(AdminDAOImpl.class).FaqList(adminDTO);
 		model.addAttribute("FaqList", FaqList);
 		System.out.println("FaqList" + FaqList);
 		return "./Admin/AdminBoard/FaqList";

 	}

 	// FAQ 삭제
 	@RequestMapping("/FaqDelete.do")
 	public String FaqDelete(HttpServletRequest req) {

 		int faq_idx = Integer.parseInt(req.getParameter("faq_idx"));
 		System.out.println("faq_idx" + faq_idx);
 		sqlSession.getMapper(AdminDAOImpl.class).FaqDelete(faq_idx);
 		return "redirect:./Admin/FaqList.do";
 	}

 	// FAQ 상세보기
 	@RequestMapping("/Admin/FaqView.do")
 	public String FaqView(Model model, HttpServletRequest req) {

 		AdminDTO adminDTO = new AdminDTO();
 		int faq_idx = Integer.parseInt(req.getParameter("faq_idx"));
 		System.out.println("faq_idx" + faq_idx);
 		adminDTO.setFaq_idx(faq_idx);
 		AdminDTO FaqView = sqlSession.getMapper(AdminDAOImpl.class).FaqView(adminDTO);
 		model.addAttribute("req", req);
 		model.addAttribute("FaqView", FaqView);
 		return "./Admin/AdminBoard/FaqView";
 	}

 	// FAQ 수정하기
 	@RequestMapping("/Admin/FaqEdit.do")
 	public String FaqEdit(Model model, HttpServletRequest req) {
 		int faq_idx = Integer.parseInt(req.getParameter("faq_idx"));
 		AdminDTO adminDTO = new AdminDTO();
 		adminDTO.setFaq_idx(faq_idx);
 		System.out.println("수정하기 faqidx:" + faq_idx);
 		AdminDTO FaqView = sqlSession.getMapper(AdminDAOImpl.class).FaqView(adminDTO);
 		model.addAttribute("FaqView", FaqView);
 		return "./Admin/AdminBoard/FaqEdit";
 	}

 	// FAQ 수정하기
 	@RequestMapping(value = "/FaqEditAction.do", method = RequestMethod.POST)
 	public String FaqEditAction(AdminDTO adminDTO, HttpServletRequest req) {
 		sqlSession.getMapper(AdminDAOImpl.class).FaqEditAction(adminDTO);
 		return "redirect:./Admin/FaqList.do";
 	}

 	// 입양 후기 게시판
 	@RequestMapping("/Admin/AdpReview.do")
 	public String AdpReview(Model model, HttpServletRequest req) {

 		ReviewBoardDTO reviewboardDTO = new ReviewBoardDTO();
 		ArrayList<ReviewBoardDTO> AdpReview = sqlSession.getMapper(AdminDAOImpl.class).AdpReview(reviewboardDTO);
 		model.addAttribute("AdpReview", AdpReview);
 		System.out.println("AdpReview" + AdpReview);
 		return "./Admin/AdminBoard/AdpReview";
 	}

 	// 입양 후기 게시판 삭제
 	@RequestMapping("/AdpDelete.do")
 	public String AdpDelete(HttpServletRequest req) {

 		int review_idx = Integer.parseInt(req.getParameter("review_idx"));
 		System.out.println("review_idx" + review_idx);
 		sqlSession.getMapper(AdminDAOImpl.class).AdpDelete(review_idx);
 		return "redirect:./Admin/AdpReview.do";
 	}    
 // 고객 주문내역 리스트
  	@RequestMapping("/Admin/PayMent.do")
  	public String PayMent(Model model) {
  		
  		ArrayList<PayMentDTO> PayMent = sqlSession.getMapper(AdminDAOImpl.class).PayMent();
  		model.addAttribute("PayMent", PayMent);
  		System.out.println("PayMent" + PayMent);
  		return "./Admin/AdminBoard/PayMent";
  	}

 	// 구매 주문내역(결제상태) 수정
 	@RequestMapping("/Admin/AdminBoard/modifypay")
 	public String modifypay(Model model, HttpServletRequest req) {
 		
 		int payment_idx = Integer.parseInt(req.getParameter("payment_idx"));
 		String payStus = req.getParameter("payStus");
 		int success = sqlSession.getMapper(AdminDAOImpl.class).modifypay(payStus, payment_idx);
 		
 		if(success == 1) {
 			System.out.println("결제상태 수정 성공");
 			return "redirect:../PayMent.do";
 		} else {
 			System.out.println("결제상태 수정 실패");
 			return "redirect:../PayMent.do";
 		}
 	}
 	
   	// 배송내역 리스트
   	@RequestMapping("/Admin/ShipLocInfo.do")
   	public String ShipLocInfo(Model model) {
   		
   		ArrayList<ShipLocInfoDTO> ShipLocInfo = sqlSession.getMapper(AdminDAOImpl.class).ShipLocInfo();
   		model.addAttribute("ShipLocInfo", ShipLocInfo);
   		System.out.println("ShipLocInfo" + ShipLocInfo);
   		return "./Admin/AdminBoard/ShipLocInfo";
   	}
   	
   	// 배송상태(PRP준비, dlv중, cmp완료) 수정
  	@RequestMapping("/Admin/AdminBoard/modifyshipinfo")
  	public String modifyshipinfo(Model model, HttpServletRequest req) {
  		
  		int shiplocinfo_idx = Integer.parseInt(req.getParameter("shiplocinfo_idx"));
  		String delivery_status = req.getParameter("delivery_status");
  		int success = sqlSession.getMapper(AdminDAOImpl.class).modifyshipinfo(delivery_status, shiplocinfo_idx);
  		
  		if(success == 1) {
  			System.out.println("결제상태 수정 성공");
  			return "redirect:../ShipLocInfo.do";
  		} else {
  			System.out.println("결제상태 수정 실패");
  			return "redirect:../ShipLocInfo.do";
  		}
  	}
   	// 배송내역 삭제 
	@RequestMapping("/ShipInfoDelete.do")
	public String ShipInfoDelete(HttpServletRequest req) {

		int shiplocinfo_idx = Integer.parseInt(req.getParameter("shiplocinfo_idx"));
		System.out.println("shiplocinfo_idx" + shiplocinfo_idx);
		sqlSession.getMapper(AdminDAOImpl.class).ShipInfoDelete(shiplocinfo_idx);
		return "redirect:./Admin/ShipLocInfo.do";
	}    
}
