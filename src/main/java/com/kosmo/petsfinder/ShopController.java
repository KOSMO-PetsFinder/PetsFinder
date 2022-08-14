package com.kosmo.petsfinder;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	@RequestMapping(value = "shop/paymentForm.do")
	public String paymentForm() {
		
		
		return "shoppingmall/paymentForm";
	}
	
	
	
	//쇼핑 상세보기
		@RequestMapping("/ShopView")
		public String shopView(Model model, HttpServletRequest req ) {
			
			int product_idx = Integer.parseInt(req.getParameter("product_idx"));
			
			ArrayList<ProductDTO> pdlist = sqlSession.getMapper(ShopDAOImpl.class).shopview(product_idx);
			for(ProductDTO dto : pdlist) {
				String temp = dto.getProduct_description().replace("\r\n", "</br>");
				dto.setProduct_description(temp);
			}
			
			model.addAttribute("pdlist", pdlist);
			return "./shoppingmall/shopView";
		}
	
	
	
	
}
