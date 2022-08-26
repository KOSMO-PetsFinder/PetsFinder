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
import petsfinder.admin.AdminDAOImpl;
import petsfinder.member.MemberDAOImpl;
import petsfinder.member.PetDTO;

@Controller
public class PetController {
	
	@Autowired
	private SqlSession sqlSession;
	
	//펫 등록폼
	@RequestMapping("/petregiform")
	public String petregiform(HttpServletRequest req, HttpSession session, Model model) {
		
		AbandonedAnimalDTO dto  = new AbandonedAnimalDTO();
		int member_idx = Integer.parseInt(session.getAttribute("idx").toString());
		AbandonedAnimalDTO exist = sqlSession.getMapper(MemberDAOImpl.class).exsitpet(member_idx);
		exist.setAbani_age(exist.getAbani_age().split("살")[0]);
		System.out.println(exist.getAbani_age());
		model.addAttribute("e",exist);
		return "petregiForm";
	}
	//펫 등록 액션
	@RequestMapping(value="/Petaction", method = RequestMethod.POST)
	public String petaction(HttpServletRequest req, Model model, HttpSession session, MultipartHttpServletRequest mr) {
		
		int member_idx = Integer.parseInt(req.getParameter("member_idx"));
		String pet_name = req.getParameter("pet_name");
		String pet_age = req.getParameter("pet_age");
		int pet_neut = Integer.parseInt(req.getParameter("pet_neut"));
		String pet_gender = req.getParameter("pet_gender");
		String pet_kind = req.getParameter("pet_kind");
		String pet_char = req.getParameter("pet_char");
//		String pet_photo = req.getParameter("pet_photo");
		String pet_species = req.getParameter("pet_species");
		
		
		PetDTO dto = new PetDTO();
		dto.setMember_idx(member_idx);
		dto.setPet_name(pet_name);
		dto.setPet_age(pet_age);
		dto.setPet_neut(pet_neut);
		dto.setPet_gender(pet_gender);
		dto.setPet_kind(pet_kind);
		dto.setPet_char(pet_char);
		dto.setPet_species(pet_species);
		
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
					dto.setPet_photo(saveFileName);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			model.addAttribute("path", path);
		}
		int success = sqlSession.getMapper(MemberDAOImpl.class).petinsert(dto);
		
		
		if(success == 1) {
			System.out.println("펫 등록 성공");
			return "redirect:./myPage";
		} else {
			System.out.println("펫 등록 실패");
			return "redirect:./petregiform";
		}
		
	}
	
	//펫 수정
	@RequestMapping(value="/petregimodify")
	public String petregimodify(HttpServletRequest req, Model model, HttpSession session) {
		
		PetDTO dto  = new PetDTO();
		int member_idx = Integer.parseInt(session.getAttribute("idx").toString());
		PetDTO modifypet = sqlSession.getMapper(MemberDAOImpl.class).petlist(member_idx);
		model.addAttribute("e",modifypet);
		
		return "petregiModify";
	}
	
	//펫 수정 액션
	@RequestMapping(value="/petmodiaction" , method= RequestMethod.POST)
	public String petmodiaction(PetDTO petDTO, HttpServletRequest req, Model model, HttpSession session, MultipartHttpServletRequest mr) {
		
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
					petDTO.setPet_photo(saveFileName);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		int success = sqlSession.getMapper(MemberDAOImpl.class).petregimod(petDTO);
		
		
		if(success == 1) {
			System.out.println("펫 수정 성공");
			return "redirect:./myPage";
		} else {
			System.out.println("펫 수정 실패");
			return "redirect:./petregiModify";
		}
	}
	
	
}
