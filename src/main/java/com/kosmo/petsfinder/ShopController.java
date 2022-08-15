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
import org.springframework.web.bind.annotation.ResponseBody;

import petsfinder.shop.BuyOrCartDTO;
import petsfinder.shop.CartDTO;
import petsfinder.shop.ParameterDTO;
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
	public String paymentForm(Model model,HttpSession session,BuyOrCartDTO buyOrCartDTO  ) {
		/*
		//submit 종류
		//상품idx
		//상품 수량
		//상품 총 가격
		buyOrCartDTO 이거로 받음
		 */
		String url = "";
		int member_idx = Integer.parseInt(String.valueOf(session.getAttribute("idx")));
		


		
		//바로 결제
		if(buyOrCartDTO.getSubmit().equals("buy")) {
			//결제창으로 정보 넘기고 
			System.out.println("결제");
			//1개 가져오기
			ProductDTO productDTO = 
						sqlSession.getMapper(ShopDAOImpl.class).productInfo(buyOrCartDTO.getProduct_idx());
			productDTO.setPhoto(productDTO.getPhotos().split("\\|"));
			model.addAttribute("productDTO", productDTO);
			model.addAttribute("buyOrCartDTO", buyOrCartDTO);
			url = "shoppingmall/paymentForm";
		}
		
		//장바구니
		else if(buyOrCartDTO.getSubmit().equals("addtocart")) {
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
	
	
	
	
}
