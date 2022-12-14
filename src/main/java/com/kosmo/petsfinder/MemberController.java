package com.kosmo.petsfinder;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
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

import fileupload.FileUtil;
import petsfinder.abandonedanimal.AbandonedAnimalDTO;
import petsfinder.admin.AdminSitAplDTO;
import petsfinder.member.MemberDAOImpl;
import petsfinder.member.MemberDTO;
import petsfinder.petsitter.PetSitterDTO;
import petsfinder.review.ReviewBoardDTO;
import petsfinder.shop.PayDTO;
import petsfinder.utils.CookieManager;
import smtp.SMTPAuth;

@Controller
public class MemberController {

	@Autowired
	private SqlSession sqlSession;
	
	@SuppressWarnings("null")
	@RequestMapping(value="/NaverLogin", method=RequestMethod.GET)
	public String naverLogin(Model model, HttpServletRequest req) {
		
		String clientId = "DdXnsRLETvCMpBvo8zo2";//?????????????????? ??????????????? ????????????";
	    String clientSecret = "dmNcWO32M7";//?????????????????? ??????????????? ????????????";
	    String code = req.getParameter("code");
	    String state = req.getParameter("state");
	    String redirectURI = "";
		try {
			redirectURI = URLEncoder.encode("http://localhost:8088/PetsFinder/", "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
	    String apiURL;
	    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
	    apiURL += "client_id=" + clientId;
	    apiURL += "&client_secret=" + clientSecret;
	    apiURL += "&redirect_uri=" + redirectURI;
	    apiURL += "&code=" + code;
	    apiURL += "&state=" + state;
	    String access_token = "";
	    String refresh_token = "";
	    try {
	    	URL url = new URL(apiURL);
	    	HttpURLConnection con = (HttpURLConnection)url.openConnection();
	    	con.setRequestMethod("GET");
	    	int responseCode = con.getResponseCode();
	    	BufferedReader br;
	    	if(responseCode==200) { // ?????? ??????
	    		br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	    	} else {  // ?????? ??????
	    		br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	    	}
	        String inputLine;
	        StringBuffer res = new StringBuffer();
	        while ((inputLine = br.readLine()) != null) {
	        	res.append(inputLine);
	        }
	        br.close();
	        if(responseCode==200) {
	        	JSONParser parsing = new JSONParser();
	        	Object obj = parsing.parse(res.toString());
	        	JSONObject jsonObj = (JSONObject)obj;
    			        
	        	access_token = (String)jsonObj.get("access_token");
	        	refresh_token = (String)jsonObj.get("refresh_token");
	        }
	    } catch (Exception e) {
	    	System.out.println(e);
	    }
		
	    if(access_token != null) { // access_token??? ??? ???????????????
	    	try {
	    		String token = access_token; // ????????? ????????? ?????? ??????;
	            String header = "Bearer " + token; // Bearer ????????? ?????? ??????
	    		String apiurl = "https://openapi.naver.com/v1/nid/me";
	    		URL url = new URL(apiurl);
	    		HttpURLConnection con = (HttpURLConnection)url.openConnection();
	    		con.setRequestMethod("GET");
	    		con.setRequestProperty("Authorization", header);
	    		int responseCode = con.getResponseCode();
	    		BufferedReader br;
	    		if(responseCode==200) { // ?????? ??????
	    			br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	    		} else {  // ?????? ??????
	    			br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	    		}
	    		String inputLine;
	    		StringBuffer res = new StringBuffer();
	    		while ((inputLine = br.readLine()) != null) {
	    			res.append(inputLine);
	    			JSONParser parsing = new JSONParser();
	    			Object obj = parsing.parse(res.toString());
	    			JSONObject jsonObj = (JSONObject)obj;
	    			JSONObject resObj = (JSONObject)jsonObj.get("response");
	    			String splitToken = access_token.substring(1, 5) + access_token.substring(40, 44);

	    			String id = ((String)resObj.get("id")).substring(5, 14);
	    			String pw = splitToken;
	    			String email = (String)resObj.get("email");
	    			String address = " ";
	    			String name = (String)resObj.get("name");
	    			String phone = (String)resObj.get("mobile");
	    			String birthday = (String)resObj.get("birthyear") + "-" + (String)resObj.get("birthday");
	    			String gender = (String)resObj.get("gender");
	    			String photo = (String)resObj.get("profile_image");
	    			
	    			String id_val = sqlSession.getMapper(MemberDAOImpl.class).idValidate(id);
	    			
	    			if (id_val == null) {
	    				
	    				MemberDTO dto = new MemberDTO();
	    				
	    				dto.setMember_id(id);
	    				dto.setMember_pass(pw);
	    				dto.setMember_email(email);
	    				dto.setMember_addr(address);
	    				dto.setMember_name(name);
	    				dto.setMember_phone(phone);
	    				dto.setMember_birth(birthday);
	    				dto.setMember_gender(gender);
	    				dto.setMember_photo(photo);
	    				
	    				int result = sqlSession.getMapper(MemberDAOImpl.class).memberInsert(dto);
	    				if(result == 1) 
	    					System.out.println("????????? ?????? ?????? ??????");
	    				else 
	    					System.out.println("????????? ?????? ?????? ??????");
	    			} else {
	    				System.out.println("?????? ?????? ?????????");
	    			}
	    			System.out.println("????????? ?????????");
	    			HttpSession session = req.getSession();
	    			session.setAttribute("id", id);
	    			session.setAttribute("name", name);
	    			session.setAttribute("email", email);
	    		}
	    		br.close();
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
	    }
	    String backUrl = req.getParameter("backUrl");
		if(backUrl == null || backUrl.equals("")) {
			return "redirect:./";
		} else {
			return "redirect:" + backUrl;
		}
		
	}
	
	@RequestMapping(value="/Login", method = RequestMethod.POST)
	public String login(Model model, HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		String id = req.getParameter("id");
		String pass = req.getParameter("password");
		String save_check = req.getParameter("save_check");
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setMember_id(id);
		memberDTO.setMember_pass(pass);
		MemberDTO dto = sqlSession.getMapper(MemberDAOImpl.class).memberLogin(memberDTO);
		if(dto != null) {
			session.setAttribute("idx", dto.getMember_idx());
			session.setAttribute("id", dto.getMember_id());
			session.setAttribute("name", dto.getMember_name());
			session.setAttribute("email", dto.getMember_email());
			session.setAttribute("photo", dto.getMember_photo());
			session.setAttribute("phone", dto.getMember_phone());
			session.setAttribute("type", dto.getMember_type());
			if (save_check != null && save_check.equals("Y")) {
				CookieManager.makeCookie(resp, "loginId", id, 86400);
			} else {
				CookieManager.deleteCookie(resp, "loginId");
			}
			
			model.addAttribute("dto", dto);
			String backUrl = req.getParameter("backUrl");
			if(backUrl == null || backUrl.equals("")) {
				return "redirect:./";
			} else {
				return "redirect:" + backUrl;
			}
		} else {
			String backUrl = req.getParameter("backUrl");
			model.addAttribute("backUrl", backUrl);
			return "redirect:./Login";
		}
	}
	
	@RequestMapping("/idDuple")
	@ResponseBody
	public void idDuple(Model model, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/html; charset=UTF-8");
		String member_id = req.getParameter("id");
		
		String result = "";
		
		if(member_id == "") {
	        
			result = "????????? ???????????????";
			
	    // ????????? ?????? O
		} else {
	        // ???????????? 6 ~ 12???????????? ??????
	        if(member_id.length() >= 6 && member_id.length() <= 12) {
	        	boolean check = true;
	          	for(int i = 0; i < member_id.length(); i++) {
		            int ascii = member_id.charAt(i);
		            if(!((ascii >= 48 && ascii <= 57)
		                || (ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122))) {
		            	check = false;
		            	break;
		            }
	          	}
				// check??? false?????? ??????, ?????? ????????? ????????? ????????????????????? ?????? ??????????????? ?????? ??????
				if(check == false) {
					result = "???????????? ????????? ????????? ???????????? ???????????????";
				} else {
					String id = sqlSession.getMapper(MemberDAOImpl.class).idValidate(member_id);
					
					if(id == null) {
						result = "?????? ???????????????";
					} else if (id.equals(member_id)) {
						result = "?????????????????????";
					}
	            }
	        } else {
	        	result = "???????????? 6???????????? 12????????? ???????????????";
	        }
		}
		PrintWriter pw = resp.getWriter();
		pw.print(result);
	}
	
	@RequestMapping("/emailDuple")
	@ResponseBody
	public void emailDuple(Model model, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		String email = req.getParameter("email");
		
		String result = "";
		
		var symbol01 = 0;
    	var symbol02 = 0;
    	for (int i = 0; i < email.length(); i++) {
			if(email.charAt(i) == '@') {
				symbol01++;
			}
			if(email.charAt(i) == '.') {
				symbol02++;
			}
    	}
    	
    	if(symbol01 != 1 || symbol02 != 1) {
    		result = "????????? ????????? ???????????????";
    	} else {
    		String check_email = sqlSession.getMapper(MemberDAOImpl.class).emailValidate(email);
    		
    		if (check_email != null) {    			
    			result = "?????????????????????.";
    		} else {
    			result = "?????? ????????? ??????????????????.";
    		}
    	}
		
    	PrintWriter pw = resp.getWriter();
		pw.print(result);
	}
	
	@RequestMapping(value="/Regist", method = RequestMethod.POST)
	public String Regist(Model model, HttpServletRequest req) {
		
		String id = req.getParameter("user_id");
		String pw = req.getParameter("pass2");
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		String gender = req.getParameter("gender");
		String email = req.getParameter("email");
		String address = req.getParameter("zipcode") + " / " + req.getParameter("address1") + " / " + req.getParameter("address2");
		String phone = req.getParameter("mobile1") + "-" + req.getParameter("mobile2") + "-" + req.getParameter("mobile3");
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_id(id);
		dto.setMember_pass(pw);
		dto.setMember_email(email);
		dto.setMember_addr(address);
		dto.setMember_name(name);
		dto.setMember_phone(phone);
		dto.setMember_birth(birth);
		dto.setMember_gender(gender);
		
		int success = sqlSession.getMapper(MemberDAOImpl.class).memberInsert(dto);
		
		if(success == 1) {
			System.out.println("???????????? ??????");
			return "redirect:./";
		} else {
			System.out.println("???????????? ??????");
			return "redirect:./Regist";
		}
	}
	
	public boolean emailSending(Map<String, String> map) {
		
		boolean sendOk = false;
		
		// ????????? SMTP ????????? ???????????? ?????? ???????????? ?????? ????????? ?????? ????????? ??????
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
        	// ???????????? ????????? ?????? ?????? ????????? ????????????.
        	Authenticator auth = new SMTPAuth();
        	
        	Session session = Session.getInstance(p, auth);
        	session.setDebug(true);
        	
        	// ?????? ??????
        	MimeMessage msg = new MimeMessage(session);
        	msg.setSubject(map.get("subject"));
        	
        	// ????????? ?????? Email ??????
        	Address fromAddr = new InternetAddress(map.get("from"));
        	msg.setFrom(fromAddr);
        	
        	// ?????? ?????? Email ??????
        	Address toAddr = new InternetAddress(map.get("to"));
        	msg.addRecipient(Message.RecipientType.TO, toAddr);
        	
        	// ?????? ????????? ??????
        	msg.setContent(map.get("content"), "text/html;charset=UTF-8");
        	
        	// ?????? Email ?????? ?????? ??????
        	Transport.send(msg);
        	sendOk = true;
        } catch (Exception e) {
        	sendOk = false;
        	e.printStackTrace();
        }
        
        return sendOk;
	}
	
	// ???????????? ????????? ????????? form????????? ?????? ????????? ??? ?????? ??????
	@RequestMapping(value="/emailSendAction.do", method = RequestMethod.POST)
	public void emailSendAction(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String sendResult = "????????? ?????? ??????";
		// form??? ????????? ?????? Map ?????????
		Map<String,	String> emailContent = new HashMap<String, String>();
		// ????????? ??????
		emailContent.put("from", req.getParameter("from"));
		// ?????? ??????
		emailContent.put("to", req.getParameter("to"));
		// ??????
		emailContent.put("subject", req.getParameter("subject"));
		
		// ?????? ?????? ??????
		String format = req.getParameter("format");
		// ??????
		String content = req.getParameter("content").replace("\r\n", "<br/>");
		
		if(format.equals("text")) {
			// ?????? ????????? text?????? ????????? ???????????? ????????? ??????
			emailContent.put("content", content);
		} else if (format.equals("html")) {
			// html ??????????????? ????????? ????????? ??? ??????form??? ????????? ????????? ??? ?????? ??????
			String oneLine="", mailContents="";
			try {
				// ?????? form??? ?????? ??????????????? ????????? ?????? ????????????
				String dirPath = req.getSession().getServletContext().getRealPath("/resources/mailForm/MailForm.html");
				// ????????? ????????? ???????????? ?????? IO???????????? ????????????.
	            BufferedReader br = new BufferedReader(new FileReader(dirPath));
	            // ????????? ????????? ??? ?????? ?????? ????????? ??????
	            // ??? ?????? ????????? ????????? while??? ??????
	            while((oneLine = br.readLine()) != null){
	               mailContents += oneLine + "\n";
	            }
	            // ????????? ?????? ??????
	            br.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
			// ?????? form?????? ????????? ??????(HTML??????)?????? ?????? ?????? ??????
	        mailContents = mailContents.replace("__CONTENT__", content);
	        // ????????? Map???????????? ??????
	        emailContent.put("content", mailContents);
		}
		if(req.getParameter("content") != null) {
			// ????????? ????????? ????????? ?????? ??????.
			// ??? ??? form?????? ????????? Map???????????? ????????? ??????
			emailSending(emailContent);
			// ?????? ?????? ?????? ???
//            boolean emailResult = emailSending(emailContent);
//            if(emailResult==true) {
//               System.out.println("????????? ?????? ??????");
//               sendResult = "????????? ?????? ??????";
//            }
//            else {
//               System.out.println("????????? ?????? ??????");
//               sendResult = "????????? ?????? ??????";
//            }
        }
		// ?????????????????? ?????? ?????? ?????? ??????
        resp.setContentType("text/html; charset=utf-8");
        // ?????? ?????? ??? ?????? ???????????? ???????????? ?????? script ?????? ??????
        resp.getWriter().write("<script src=\"https://code.jquery.com/jquery-3.6.0.js\" integrity=\"sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=\" crossorigin=\"anonymous\"></script>\r\n"
        		+ "<script>\r\n"
        		+ "$(document).ready(function(){\r\n"
        		+ "	self.close();\r\n"
        		+ "});\r\n"
        		+ "</script>");
	}
	
	@RequestMapping(value="/id_Search", method = RequestMethod.POST)
	public void id_Search(Model model, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email"); 
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_name(name);
		dto.setMember_email(email);
		
		String id = sqlSession.getMapper(MemberDAOImpl.class).idSearch(dto);
		
		if(id != null) {
			model.addAttribute("toEmail", email);
			model.addAttribute("id", id);
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
    		out.println(String.format("<script>window.open('./idEmailSend?toEmail=%s&id=%s', 'IdCheck', 'width=1, height=1'); location.replace('./Login')</script>", email, id));
		} else {
			resp.sendRedirect("./id_Search");
		}
	}
	
	@RequestMapping(value="/pw_Search", method = RequestMethod.POST)
	public String pw_Search(Model model, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String name = req.getParameter("name");
		String id = req.getParameter("id");
		String email = req.getParameter("email"); 
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_name(name);
		dto.setMember_id(id);
		dto.setMember_email(email);
		
		String pw = sqlSession.getMapper(MemberDAOImpl.class).pwSearch(dto);
		
		if(pw != null) {
			model.addAttribute("id", id);
			model.addAttribute("name", name);
			return "pw_Reset";
		} else {
			return "redirect:./pw_Search";
		}
	}
	
	@RequestMapping(value="/pw_Reset", method = RequestMethod.POST)
	public String pw_Reset(Model model, HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		String resetPass = req.getParameter("pass2");
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_pass(resetPass);
		dto.setMember_id(id);
		dto.setMember_name(name);

		int result = sqlSession.getMapper(MemberDAOImpl.class).pwReset(dto);
		
		if(result == 1) {
			System.out.println("???????????? ?????? ??????");
			if (session.getAttribute("idx") == null)
				return "redirect:./Login";
			else {
				String backUrl = req.getParameter("backUrl");
				if(backUrl == null || backUrl.equals("")) {
					return "redirect:./Login";
				} else {
					return "redirect:./default";
				}
			}
				
		} else {
			System.out.println("???????????? ?????? ??????");
			return "redirect:./pw_Reset";
		}
	}
	
	@RequestMapping(value="/re_Info", method = RequestMethod.POST)
	public String passCheck(Model model, HttpServletRequest req, HttpSession session) {
		
		String pass = req.getParameter("pass");
		String id = session.getAttribute("id").toString();
		String name = session.getAttribute("name").toString();
		String email = session.getAttribute("email").toString();
		String mode = req.getParameter("mode");
		MemberDTO dto = new MemberDTO();
		dto.setMember_id(id);
		dto.setMember_name(name);
		dto.setMember_email(email);
		dto.setMember_pass(pass);
		
		String checkPass = sqlSession.getMapper(MemberDAOImpl.class).pwSearch(dto);
		if(checkPass.equals(pass)) {
			if(mode.equals("p")) {
				String backUrl = req.getParameter("backUrl");
				model.addAttribute("backUrl", backUrl);
				return "myPw_Reset";
			} else if(mode.equals("i")) {
				MemberDTO mto = sqlSession.getMapper(MemberDAOImpl.class).memberLogin(dto);
				String email1 = mto.getMember_email().split("@")[0];
				String email2 = mto.getMember_email().split("@")[1];
				String zipcode = mto.getMember_addr().split(" / ")[0];
				String address1 = mto.getMember_addr().split(" / ")[1];
				String address2 = mto.getMember_addr().split(" / ")[2];
				String mobile1 = mto.getMember_phone().split("-")[0];
				String mobile2 = mto.getMember_phone().split("-")[1];
				String mobile3 = mto.getMember_phone().split("-")[2];
				String photo = mto.getMember_photo();
				model.addAttribute("m_info", mto);
				model.addAttribute("email1", email1);
				model.addAttribute("email2", email2);
				model.addAttribute("zipcode", zipcode);
				model.addAttribute("address1", address1);
				model.addAttribute("address2", address2);
				model.addAttribute("mobile1", mobile1);
				model.addAttribute("mobile2", mobile2);
				model.addAttribute("mobile3", mobile3);
				model.addAttribute("photo", photo);
				return "info_update";
			}
		} else {
			return "redirect:./passCheck";
		}
		return "";
	}
	
	@RequestMapping(value="/info_update", method = RequestMethod.POST)
	public String info_update(Model model, HttpServletRequest req, HttpSession session, MultipartHttpServletRequest mr) {
		
		String id = session.getAttribute("id").toString();
		String email = req.getParameter("email1") + "@" + req.getParameter("email2");
		String address = req.getParameter("zipcode") + " / " + req.getParameter("address1") + " / " + req.getParameter("address2");
		String phone = req.getParameter("mobile1") + "-" + req.getParameter("mobile2") + "-" + req.getParameter("mobile3");
		
		MemberDTO dto = new MemberDTO();
		
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
					dto.setMember_photo(saveFileName);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			model.addAttribute("path", path);
		}

		dto.setMember_id(id);
		dto.setMember_email(email);
		dto.setMember_addr(address);
		dto.setMember_phone(phone);
		
		int success = sqlSession.getMapper(MemberDAOImpl.class).infoUpdate(dto);
		
		if(success == 1) {
			System.out.println("???????????? ?????? ??????");
			return "redirect:./default";
		} else {
			System.out.println("???????????? ?????? ??????");
			return "redirect:./re_Info";
		}
	}
	
	@RequestMapping("/myReview")
	public String myReview(Model model, HttpSession session, HttpServletRequest req) {
		
		if (session.getAttribute("idx") == null) {
			return "redirect:./Login";
		} else {
			int member_idx = Integer.parseInt(session.getAttribute("idx").toString());
			String mode = req.getParameter("mode");
			if (mode.equals("adp")) {
				
				ArrayList<ReviewBoardDTO> adpReview = sqlSession.getMapper(MemberDAOImpl.class).adpReview(member_idx);
				if(!adpReview.isEmpty()) {
					for(ReviewBoardDTO dto : adpReview){
						String temp = dto.getReview_content().replace("\r\n", "<br/>");
						dto.setReview_content(temp);
					}
					model.addAttribute("adp", adpReview);
				}
				model.addAttribute("mode", mode);
				
			} else if (mode.equals("sit")) {
				
				ArrayList<ReviewBoardDTO> sitReview = sqlSession.getMapper(MemberDAOImpl.class).sitReview(member_idx);
				if(!sitReview.isEmpty()) {
					for(ReviewBoardDTO dto : sitReview){
						String temp = dto.getReview_content().replace("\r\n", "<br/>");
						dto.setReview_content(temp);
					}
					model.addAttribute("sit", sitReview);
				}
				model.addAttribute("mode", mode);
				
			} else if (mode.equals("shp")) {
				
				ArrayList<ReviewBoardDTO> shpReview = sqlSession.getMapper(MemberDAOImpl.class).shpReview(member_idx);
				if(!shpReview.isEmpty()) {
					for(ReviewBoardDTO dto : shpReview) {
						String temp = dto.getReview_content().replace("\r\n", "<br/>");
						dto.setReview_content(temp);
					}
					model.addAttribute("shp", shpReview);
				}
				model.addAttribute("mode", mode);
				
			} else if (mode.equals("up")) {
				
				int review_idx = Integer.parseInt(req.getParameter("review_idx"));
				String r_where = req.getParameter("r");
				ReviewBoardDTO myReview = sqlSession.getMapper(MemberDAOImpl.class).myReview(review_idx);
				model.addAttribute("myReview", myReview);
				model.addAttribute("r", r_where);
				
			} else if (mode.equals("del")) {
				
				int review_idx = Integer.parseInt(req.getParameter("review_idx"));
				
				int result = sqlSession.getMapper(MemberDAOImpl.class).review_del(review_idx);
				
				if (result == 1)
					System.out.println("???????????? ?????? ??????");
//					System.out.println(review_idx);
//					int effect = sqlSession.getMapper(MemberDAOImpl.class).review_on(review_idx);
//					if (effect == 1) {
//						System.out.println("?????? ?????? 0 ?????? ??????");
//						sqlSession.getMapper(MemberDAOImpl.class).r_idxDel(review_idx);
//					} else {
//						System.out.println("?????? ?????? 0 ?????? ??????");
//					}
					String r_where = req.getParameter("r");
					if (r_where.equals("adp")) {
						return "redirect:./myReview?mode=adp";
					} else if (r_where.equals("sit")) {
						return "redirect:./myReview?mode=sit";
					} else if (r_where.equals("shp")) {
						return "redirect:./myReview?mode=shp";
					}
				else
					System.out.println("???????????? ?????? ??????");
			} 
			
			return "myReview";
		}
	}
	
	@RequestMapping(value="/upReview", method = RequestMethod.POST)
	public String upReview(HttpServletRequest req, MultipartHttpServletRequest mr) {
		
		int review_idx = Integer.parseInt(req.getParameter("review_idx"));
		String r_where = req.getParameter("r_where");
		System.out.println(r_where);
		String review_content = req.getParameter("review_content");
		ReviewBoardDTO dto = new ReviewBoardDTO();
		dto.setReview_idx(review_idx);
		dto.setReview_content(review_content);
		// ?????? ??????
		String fileName = mr.getFile("ofile").toString();
		// ????????? ??????
		System.out.println("????????? : " + fileName.split("filename=")[1].split(",")[0]);
		// ???????????? ""??? ????????? ????????? ??? DTO??? ??????
		if ( !fileName.split("filename=")[1].split(",")[0].equals("") ) {
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
					dto.setReview_photo(saveFileName);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		int result = sqlSession.getMapper(MemberDAOImpl.class).review_up(dto);
		
		if (result == 1) {
			System.out.println("???????????? ?????? ??????");
			if (r_where.equals("adp")) {
				return "redirect:./myReview?mode=adp";
			} else if (r_where.equals("sit")) {
				return "redirect:./myReview?mode=sit";
			} else if (r_where.equals("shp")) {
				return "redirect:./myReview?mode=shp";
			}
		}
		else {
			System.out.println("???????????? ?????? ??????");
		}
		
		return "myReview";
	}
	
	@RequestMapping("/myReserve")
	public String myReserve(Model model, HttpSession session) {
		
		if (session.getAttribute("idx") == null) {
			return "redirect:./Login";
		} else {
			
			int member_idx = Integer.parseInt(session.getAttribute("idx").toString());
			ArrayList<PetSitterDTO> m_Reserve = sqlSession.getMapper(MemberDAOImpl.class).m_Reserve(member_idx);
			
			model.addAttribute("m_Reserve", m_Reserve);
			return "myReserve";
		}
	}
	
	@RequestMapping("/myAdopt")
	public String myAdopt(Model model, HttpSession session) {
		
		if(session.getAttribute("idx")== null) {
			return "redirect:./Login";
		}else {
			
			int member_idx = Integer.parseInt(session.getAttribute("idx").toString());
			ArrayList<AbandonedAnimalDTO> m_Adopt = sqlSession.getMapper(MemberDAOImpl.class).m_Adopt(member_idx);
			
			model.addAttribute("m_Adopt", m_Adopt);
			return "myAdopt";
		}
	}
	@RequestMapping("/myBought")
	public String myBought(Model model, HttpSession session, HttpServletRequest req) {
		
		if(session.getAttribute("idx")== null) {
			return "redirect:./Login";
		}else {
			
			int member_idx = Integer.parseInt(session.getAttribute("idx").toString());
			
			ArrayList<PayDTO> m_Bought = sqlSession.getMapper(MemberDAOImpl.class).m_Bought(member_idx);
			
			model.addAttribute("m_Bought", m_Bought);
			return "myBought";
		}
	}
	
	@RequestMapping("/myBoughtView")
	public String myBoughtView(Model model, HttpSession session, HttpServletRequest req) {
		
		if(session.getAttribute("idx")==null) {
			return "redirect:../Login";
		}else {
			int member_idx = Integer.parseInt(session.getAttribute("idx").toString());
			int payment_idx = Integer.parseInt(req.getParameter("payment_idx"));
			ArrayList<PayDTO> m_BoughtView = sqlSession.getMapper(MemberDAOImpl.class).m_Boughtview(member_idx, payment_idx);
			model.addAttribute("m_BoughtView", m_BoughtView);
			
			return "myBoughtView";
		}
	}
	
	@RequestMapping("/up_Reserve")
	public String up_Reserve(Model model, HttpSession session, HttpServletRequest req) {
		
		if (session.getAttribute("idx") == null) {
			return "redirect:./Login";
		} else {
			
			int sbook_idx = Integer.parseInt(req.getParameter("sbook_idx"));
			String mode = req.getParameter("mode");
			// ?????? ??????
			if (mode.equals("up")) {
				int sit_idx = Integer.parseInt(req.getParameter("sit_idx"));
				sqlSession.getMapper(MemberDAOImpl.class).up_Reserve("fix", sbook_idx);
				sqlSession.getMapper(MemberDAOImpl.class).up_client(sit_idx);
				return "redirect:./myReserve";
			// ?????? ??????
			} else if (mode.equals("cn")) {
				sqlSession.getMapper(MemberDAOImpl.class).up_Reserve("can", sbook_idx);
				return "redirect:./myReserve";
			// ?????? ??????
			} else {
				String n = req.getParameter("m");
				String s = req.getParameter("ss");
				String e = req.getParameter("se");
				String sit_idx = req.getParameter("i");
				model.addAttribute("n", n);
				model.addAttribute("s", s);
				model.addAttribute("e", e);
				model.addAttribute("sit_idx", sit_idx);
				model.addAttribute("sbook_idx", sbook_idx);
				model.addAttribute("flag", "sit");
				return "star";
			}
			
		}
	}
	
	@RequestMapping("/up_Adopt")
	public String up_Adopt(Model model, HttpSession session, HttpServletRequest req) {
		
		if (session.getAttribute("idx") == null) {
			return "redirect:./Login";
		} else {
			
			int abani_idx1 = Integer.parseInt(req.getParameter("i"));
			int adpapl_idx = Integer.parseInt(req.getParameter("adpapl_idx"));
			String mode = req.getParameter("mode");
			// ??????
			if (mode.equals("up")) {
				int result = sqlSession.getMapper(MemberDAOImpl.class).up_Adopt("apl", adpapl_idx);
				if(result==1) {
					sqlSession.getMapper(MemberDAOImpl.class).up_Abandoned(abani_idx1);
				}
				return "redirect:./myAdopt";
			//  ??????
			} else if (mode.equals("cn")) {
				sqlSession.getMapper(MemberDAOImpl.class).up_Adopt("rej", adpapl_idx);
				return "redirect:./myAdopt";
			// ?????? ??????
			} else {
				String abani_idx = req.getParameter("i");
				model.addAttribute("abani_idx", abani_idx);
				model.addAttribute("adpapl_idx", adpapl_idx);
				model.addAttribute("flag", "adp");
				return "reviewWrite";
			}
			
		}
	}
	@RequestMapping("/up_Bought")
	public String up_Bought(Model model, HttpSession session, HttpServletRequest req) {
		
		if (session.getAttribute("idx") == null) {
			return "redirect:./Login";
		} else {
			int member_idx = Integer.parseInt(session.getAttribute("idx").toString());
			int payment_idx = Integer.parseInt(req.getParameter("payment_idx"));
			String mode = req.getParameter("mode");
			
			// ?????????
			if (mode.equals("up")) {
				sqlSession.getMapper(MemberDAOImpl.class).up_delivery("dlv", payment_idx);
				return "redirect:./myBought";
			// ?????? ??????
			} else if (mode.equals("cn")) {
				sqlSession.getMapper(MemberDAOImpl.class).up_refund(payment_idx);
				return "redirect:./myBought";
				
			} else if (mode.equals("vi")) {
				ArrayList<PayDTO> viewlist = sqlSession.getMapper(MemberDAOImpl.class).m_Boughtview(member_idx, payment_idx);
				
				model.addAttribute("viewlist", viewlist);
				return "myBoughtView";
				// ?????? ??????
			} else {
				//????????????
				sqlSession.getMapper(MemberDAOImpl.class).up_delivery("cmp", payment_idx);
				
				String product_idx = req.getParameter("p");
				String pay_date = req.getParameter("pd");
				String product_name = req.getParameter("pn");
				model.addAttribute("pay_date", pay_date);
				model.addAttribute("product_idx", product_idx);
				model.addAttribute("product_name", product_name);
				model.addAttribute("payment_idx", payment_idx);
				model.addAttribute("flag", "shp");
				return "reviewWrite";
			}
			
		}
	}
	@RequestMapping(value="/starReview", method=RequestMethod.POST)
    public String starReview(HttpServletRequest req, Model model) {
    	
    	int sit_starpoint = Integer.parseInt(req.getParameter("sit_starpoint"));
    	int sit_idx = Integer.parseInt(req.getParameter("sit_idx"));
    	
    	PetSitterDTO dto = new PetSitterDTO();
    	dto.setSit_starpoint(sit_starpoint);
    	dto.setSit_idx(sit_idx);
    	int result =sqlSession.getMapper(MemberDAOImpl.class).plusStar(sit_starpoint,sit_idx);
    	
    	if(result ==1) {
    		System.out.println("?????? ?????? ??????");
    		String n = req.getParameter("m_name");
			String s = req.getParameter("start");
			String e = req.getParameter("end");
			String flag = req.getParameter("flag");
			int sbook_idx = Integer.parseInt(req.getParameter("sbook_idx"));
			System.out.println(sbook_idx);
//			int effect = sqlSession.getMapper(MemberDAOImpl.class).sbook_review(sbook_idx);
//			if (effect == 1) {
//				System.out.println("?????? idx ?????? ??????");
//				int review_idx = sqlSession.getMapper(MemberDAOImpl.class).r_idx(sbook_idx);
				model.addAttribute("n", n);
				model.addAttribute("s", s);
				model.addAttribute("e", e);
				model.addAttribute("sit_idx", sit_idx);
				model.addAttribute("sbook_idx", sbook_idx);
//				model.addAttribute("review_idx", review_idx);
				model.addAttribute("flag", flag);
				return "reviewWrite";
//			} else {
//				return "reviewWrite";
//			}
    	}else {
    		System.out.println("?????? ?????? ??????");
    		return "redirect:./starReview";
    	}
    }
	
	@RequestMapping("/reviewWrite")
	public String reviewWrite(HttpSession session, HttpServletRequest req, MultipartHttpServletRequest mr) {
	      
		if (session.getAttribute("idx") != null) {

			int member_idx = Integer.parseInt(session.getAttribute("idx").toString());
			String review_flag = req.getParameter("flag");
			String review_content = req.getParameter("review_content");
	         
//			int review_idx = Integer.parseInt(req.getParameter("review_idx"));
			ReviewBoardDTO dto = new ReviewBoardDTO();
			dto.setMember_idx(member_idx);
			dto.setReview_flag(review_flag);
			dto.setReview_content(review_content);
//	       	dto.setReview_idx(review_idx);
	         
	         // ?????? ??????
	         String fileName = mr.getFile("ofile").toString();
	         // ????????? ??????
	         System.out.println("????????? : " + fileName.split("filename=")[1].split(",")[0]);
	         // ???????????? ""??? ????????? ????????? ??? DTO??? ??????
	         if ( !fileName.split("filename=")[1].split(",")[0].equals("") ) {
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
	                  dto.setReview_photo(saveFileName);
	               }
	            } catch (Exception e) {
	               e.printStackTrace();
	            }
	         }
	         
	         if (review_flag.equals("adp")) {
	            
	            int abani_idx = Integer.parseInt(req.getParameter("abani_idx"));
	            dto.setAbani_idx(abani_idx);
	            
	            int result = sqlSession.getMapper(MemberDAOImpl.class).reviewWrite(dto);
	            
	            if(result ==1) {
	               System.out.println("?????? ?????? ??????(adpt)");
	            }
	            else {
	               System.out.println("???????????? ??????(adpt)");
	            }
	            
	            return "redirect:./myReview?mode=adp";
	         } else if (review_flag.equals("sit")) {
	            
	            int sbook_idx = Integer.parseInt(req.getParameter("sbook_idx"));
	            int sit_idx = Integer.parseInt(req.getParameter("sit_idx"));
	            dto.setSit_idx(sit_idx);
	            
	            int result = sqlSession.getMapper(MemberDAOImpl.class).reviewWrite(dto);
	            
	            if (result == 1) {
	               System.out.println("?????? ?????? ??????");
	               sqlSession.getMapper(MemberDAOImpl.class).review_off(sbook_idx);
	               
	            } else {
	               System.out.println("?????? ?????? ??????");
	            }
	            return "redirect:./myReview?mode=sit";
	         } else {
	            
	            int product_idx = Integer.parseInt(req.getParameter("product_idx"));
	               
	            dto.setProduct_idx(product_idx);
	            
	            int result = sqlSession.getMapper(MemberDAOImpl.class).reviewWrite(dto);
	            if(result==1) {
	               System.out.println("?????? ?????? ??????(pdt)");
	            }
	            else {
	               System.out.println("?????? ?????? ??????(pdt)");
	            }
	            
	            return "redirect:./myReview?mode=shp";
	         }
	      } else {
	         return "redirect:./Login";
	      }

	   	}
	
	@RequestMapping(value ="/sitterApl" )
    public String sitterApl(MemberDTO memberDTO, Model model, HttpServletRequest req, HttpSession session) {
      
      int idx =Integer.parseInt(session.getAttribute("idx").toString());
   
      MemberDTO dto = sqlSession.getMapper(MemberDAOImpl.class).sitterAplInsert(idx);
      
      String name = dto.getMember_name();
      String gender = dto.getMember_gender();
      String birth = dto.getMember_birth();
      String address = dto.getMember_addr();
      String phone = dto.getMember_phone();
      
      model.addAttribute("dto", dto);
      model.addAttribute("name", name);
      model.addAttribute("birth", birth);
      model.addAttribute("gender", gender);
      model.addAttribute("phone", phone);
      model.addAttribute("address", address);
      
      
      return "sitterApl";
    }
	
	@RequestMapping(value ="/sitterApl", method=RequestMethod.POST )
    public String sitterApl(HttpServletRequest req, Model model, AdminSitAplDTO adminSitAplDTO) {
    	
    	int idx = Integer.parseInt(req.getParameter("idx"));
    	String name = req.getParameter("name");
    	String gender = req.getParameter("gender");
    	String birth = req.getParameter("birth");
    	String address = req.getParameter("address");
    	String phone = req.getParameter("phone");
    	int smoke = Integer.parseInt(req.getParameter("smoke"));
    	String havepet = req.getParameter("havepet");
    	String explain = req.getParameter("explain");
    	
    	adminSitAplDTO.setSitapl_name(name);
    	adminSitAplDTO.setSitapl_gender(gender);
    	adminSitAplDTO.setSitapl_birth(birth);
    	adminSitAplDTO.setSitapl_tel(phone);
    	adminSitAplDTO.setSitapl_addr(address);
    	adminSitAplDTO.setSitapl_smkstt(smoke);
    	adminSitAplDTO.setSitapl_havepet(havepet);
    	adminSitAplDTO.setSitapl_exp(explain);
    	adminSitAplDTO.setMember_idx(idx);
    	
    	int result = sqlSession.getMapper(MemberDAOImpl.class).setsitterApl(adminSitAplDTO);
    	
    	if(result == 1) {
			System.out.println("??????");
			return "redirect:./default";
		} else {
			System.out.println("??????");
			return "redirect:./sitterApl";
		}
    	
    	
    }
}
