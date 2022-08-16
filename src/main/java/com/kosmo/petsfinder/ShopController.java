package com.kosmo.petsfinder;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import petsfinder.shop.BuyOrCartDTO;
import petsfinder.shop.CartDTO;
import petsfinder.shop.MemberSDTO;
import petsfinder.shop.ParameterDTO;
import petsfinder.shop.PayInfoDTO;
import petsfinder.shop.ProductDTO;
import petsfinder.shop.ShopDAOImpl;

@Controller
public class ShopController {
	@Autowired
	private SqlSession sqlSession;
	
	
	//쇼핑몰 메인
	@RequestMapping("/Shop")
	public String shopMain() {
		return "./shoppingmall/shopMain";
	}
	
	
	
	@RequestMapping(value = "/ShopList")
	public String shopList(Model model,HttpServletRequest req,ParameterDTO parameterDTO) {
		
		
		//카테고리 종류 받아옴
		int cate = (req.getParameter("cate")==null 
				|| req.getParameter("cate").equals("")) 
				? 0 : Integer.parseInt(req.getParameter("cate"));
		//정렬 종류 받아옴
		int sort = (req.getParameter("sort")==null 
				|| req.getParameter("sort").equals("")) 
				? 0 : Integer.parseInt(req.getParameter("sort"));
		//파라미터에 저장 
		parameterDTO.setCate(cate);
		parameterDTO.setSort(sort);
		
		//전체 갯수 가지고 오기
		//int totalRecordCount =
		//		sqlSession.getMapper(ShopDAOImpl.class).productGetTotalCount(parameterDTO);
		
		/*
		 * 정렬은 판매테이블 완성되면 판매수까지 나오게 조인 해서 처리 
		 */
		
		
		//상품 리스트 
		ArrayList<ProductDTO> lists =
				sqlSession.getMapper(ShopDAOImpl.class).productList(parameterDTO);
		
		String category = "";
		switch (cate) {
		case 0:
			category ="전체상품";
			break;
		case 1:
			category ="필수용품";
			break;
		case 2:
			category ="약";
			break;
		case 3:
			category ="굿즈";
			break;

		}		
		
		
		//모델에 저장
		model.addAttribute("lists", lists);
		model.addAttribute("category", category);
		
		
		
		
		return "./shoppingmall/shopList";
	}
	
	
	@RequestMapping(value = "/shopSortList",method = RequestMethod.POST )
	@ResponseBody
	public ArrayList<ProductDTO> sortList(ParameterDTO parameterDTO) {
		
		
		
		//정렬
		//1 : 판매순, 2 : 가격순, 3 : 등록순
		parameterDTO.getSort();
		//정렬 모드
		//0 : 일반, 1 : 오름차순(asc)↑ ,2: 내림차순(desc)↓
		int m = parameterDTO.getSortm();
		if(m==2) {
			m=0;
		}else {
			m+=1;
		}
		parameterDTO.setSortm(m);
		
		System.out.println("정렬"+parameterDTO.getSort());
		System.out.println("정렬모드"+parameterDTO.getSortm());
		
		
		
		//상품 리스트 
		ArrayList<ProductDTO> lists =
				sqlSession.getMapper(ShopDAOImpl.class).productList(parameterDTO);
		
		
		return lists;
	}
	
	
	@RequestMapping(value = "Shop/buyOrCart.do")
	public String paymentForm(Model model,HttpSession session,BuyOrCartDTO buyOrCartDTO) {
		
		
		/*
		//submit 종류
		//상품idx
		//상품 수량
		//상품 총 가격
		buyOrCartDTO 이거로 받음
		 */
		String url = "";
		int member_idx = Integer.parseInt(String.valueOf(session.getAttribute("idx")));
		//멤버 정보 받기(할인율,이름,주소,이메일,전화번호)
		MemberSDTO memberSDTO = 
				sqlSession.getMapper(ShopDAOImpl.class).payUserInfo(member_idx);


		
		//바로 결제
		if(buyOrCartDTO.getSubM().equals("buy")) {
			//결제창으로 정보 넘기고 
			System.out.println("결제");
			//1개 가져오기
			ProductDTO productDTO = 
						sqlSession.getMapper(ShopDAOImpl.class).productInfo(buyOrCartDTO.getProduct_idx());
			productDTO.setPhoto(productDTO.getPhotos().split("\\|"));
			buyOrCartDTO.setProduct_photo(productDTO.getPhoto()[0]);
			
			//상품명 
			buyOrCartDTO.setProduct_name(productDTO.getProduct_name());
			
			//상품 카테고리
			if(productDTO.getProduct_category().equals("ess")) {
				//필수 용품
				buyOrCartDTO.setProduct_cate("필수 용품");
			}
			else if(productDTO.getProduct_category().equals("mdc")) {
				//의약품
				buyOrCartDTO.setProduct_cate("의약품");
			}
			else if(productDTO.getProduct_category().equals("gds")) {
				//굿즈
				buyOrCartDTO.setProduct_cate("굿즈");
			} 
			//상품 개당 원가격
			buyOrCartDTO.setProduct_price(productDTO.getProduct_price());
			//상품 사진 
			
			
			
			//할인 배송비 처리 
			if(memberSDTO.getSale()==0) {
				//할인x, 배송비 2500
				buyOrCartDTO.setDeliveryCharge(2500);
				buyOrCartDTO.setDiscount(0);
				
				
				
			}else {
				//할인 10 or 15, 배송비 0
				buyOrCartDTO.setDeliveryCharge(0);
				int a = buyOrCartDTO.getAmount();
				int b = memberSDTO.getSale();
				buyOrCartDTO.setDiscount((a*b/100));
				a -=(a*b/100);
				buyOrCartDTO.setAmount(a);
				
			}
			
			//장바구니 결제와 형태를 맞추기 위해 list로 넘김
			ArrayList<BuyOrCartDTO> payList = new ArrayList<BuyOrCartDTO>();
			payList.add(buyOrCartDTO);
			
			//최종 결제정보 
			PayInfoDTO payInfoDTO = new PayInfoDTO();
			payInfoDTO.setAmount(buyOrCartDTO.getAmount());
			payInfoDTO.setProduct_price(buyOrCartDTO.getProduct_price()*buyOrCartDTO.getProduct_quanity());
			payInfoDTO.setDiscount(buyOrCartDTO.getDiscount());
			payInfoDTO.setDeliveryCharge(buyOrCartDTO.getDeliveryCharge());
			
			
			
			
			//모델에 저장
			model.addAttribute("memberSDTO", memberSDTO);
			model.addAttribute("payList", payList);
			model.addAttribute("payInfoDTO", payInfoDTO);
			
			url = "shoppingmall/paymentForm";
		}
		//장바구니
		else if(buyOrCartDTO.getSubM().equals("addtocart")) {
			//장바구니에 담기 
			System.out.println("장바구니");
			//장바구니 일련번호, 멤버 idx, 상품idx, 수량
			CartDTO cartDTO = new CartDTO();
			cartDTO.setMember_idx(member_idx);
			cartDTO.setProduct_idx(buyOrCartDTO.getProduct_idx());
			cartDTO.setProduct_quanity(buyOrCartDTO.getProduct_quanity());
			
			int result = 
					sqlSession.getMapper(ShopDAOImpl.class).insertCart(cartDTO);
			if(result==1) {
				System.out.println("장바구니 담기 성공!");
			}
			url = "redirect:../ShopView?product_idx=" +buyOrCartDTO.getProduct_idx();
		}
		//장바구니 일괄결제 
		else if (buyOrCartDTO.getSubM().equals("cartBuy")) {
			System.out.println("장바구니 일괄 결제");
			//결제할 상품 정보 받아오기
			ArrayList<BuyOrCartDTO> payList =
					sqlSession.getMapper(ShopDAOImpl.class).cartList(member_idx);
			
			
			PayInfoDTO payInfoDTO = new PayInfoDTO();
			int amount = 0;
			int price = 0;
			int discount= 0;
			
			//할인 배송비 처리 
			if(memberSDTO.getSale()==0) {
				//할인x, 배송비 2500
				payInfoDTO.setDeliveryCharge(2500);
				for(BuyOrCartDTO dto : payList) {
					dto.setDeliveryCharge(2500);
					dto.setDiscount(0);
					String[] pho = dto.getPhotos().split("\\|");
					dto.setProduct_photo(pho[0]);
					dto.setAmount(dto.getProduct_price()*dto.getProduct_quanity());
					price += dto.getProduct_price()*dto.getProduct_quanity();
					amount += dto.getAmount();
				}
				
				
				
			}else {
				//할인 10 or 15, 배송비 0
				payInfoDTO.setDeliveryCharge(0);
				for(BuyOrCartDTO dto : payList) {
					dto.setDeliveryCharge(0);
					//총가격 설정
					dto.setAmount(dto.getProduct_price()*dto.getProduct_quanity());
					String[] pho = dto.getPhotos().split("\\|");
					dto.setProduct_photo(pho[0]);
					
					int a = dto.getAmount();
					int b = memberSDTO.getSale();
					dto.setDiscount((a*b/100));
					discount +=(a*b/100);
					a -=(a*b/100);
					dto.setAmount(a);
					price += dto.getProduct_price()*dto.getProduct_quanity();
					amount += dto.getAmount();
				}
				
			}
			
			//최종 결제정보 
			payInfoDTO.setAmount(amount);
			payInfoDTO.setProduct_price(price);
			payInfoDTO.setDiscount(discount);
			
			
			
			model.addAttribute("memberSDTO", memberSDTO);
			model.addAttribute("payList", payList);
			model.addAttribute("payInfoDTO", payInfoDTO);
			
			url = "shoppingmall/paymentForm";
		}
		
		
		
		
		return url;
	}
	
	
	
	//쇼핑 상세보기
	@RequestMapping("/ShopView")
	public String shopView(Model model, HttpServletRequest req ) {
		
		int product_idx = Integer.parseInt(req.getParameter("product_idx"));
		
		ProductDTO productDTO = 
				sqlSession.getMapper(ShopDAOImpl.class).productInfo(product_idx);
		productDTO.setPhoto(productDTO.getPhotos().split("\\|"));
		model.addAttribute("productDTO", productDTO);
		return "./shoppingmall/shopView";
	}
//	//쇼핑 상세보기
//	@RequestMapping("/ShopView")
//	public String shopView(Model model, HttpServletRequest req ) {
//		
//		int product_idx = Integer.parseInt(req.getParameter("product_idx"));
//		
//		ArrayList<ProductDTO> pdlist = sqlSession.getMapper(ShopDAOImpl.class).shopview(product_idx);
//		for(ProductDTO dto : pdlist) {
//			String temp = dto.getProduct_description().replace("\r\n", "</br>");
//			dto.setProduct_description(temp);
//		}
//		
//		model.addAttribute("pdlist", pdlist);
//		return "./shoppingmall/shopView";
//	}
	
	
	//장바구니 페이지
	@RequestMapping(value = "/shopCart")
	public String shopCart(Model model,HttpSession session) {
		//멤버 idx
		int member_idx = Integer.parseInt(String.valueOf(session.getAttribute("idx")));
		//멤버 정보 받기(할인율,이름,주소,이메일,전화번호)
		MemberSDTO memberSDTO = 
				sqlSession.getMapper(ShopDAOImpl.class).payUserInfo(member_idx);
		//장바구니 리스트
		ArrayList<BuyOrCartDTO> payList =
				sqlSession.getMapper(ShopDAOImpl.class).cartList(member_idx);
		
		//최종 결제액
		int total = 0;
		
		//제일 앞 사진 1개만 넣기
		for(BuyOrCartDTO dto :payList) {
			total += dto.getProduct_price()*dto.getProduct_quanity();
			String[] pho = dto.getPhotos().split("\\|");
			dto.setProduct_photo(pho[0]);
		}
		
		//할인 배송비 처리 
		if(memberSDTO.getSale()==0) {
			//할인x, 배송비 2500
			for(BuyOrCartDTO dto : payList) {
				dto.setDeliveryCharge(2500);
				dto.setDiscount(0);
			}
			
			
			
		}else {
			//할인 10 or 15, 배송비 0
			for(BuyOrCartDTO dto : payList) {
				dto.setDeliveryCharge(0);
				int a = dto.getAmount();
				int b = memberSDTO.getSale();
				dto.setDiscount((a*b/100));
				a -=(a*b/100);
				dto.setAmount(a);
			}
			
		}
		
		
		
		
		
		
		
		model.addAttribute("payList", payList);
		model.addAttribute("total", total);
		
		return "shoppingmall/shopCart";
	}
	
	
	
	
	@RequestMapping(value = "cartDelete") 
	@ResponseBody
	public String cartDelete( HttpServletRequest req ) {
		String deleteNum = req.getParameter("result");
		String[] num = deleteNum.split(",");
		for(String a : num) {
			System.out.println(a);
		}
		int result =
				sqlSession.getMapper(ShopDAOImpl.class).cartDelete(num);
		
		return "shopCart";
	}
	
	
	
	
}
