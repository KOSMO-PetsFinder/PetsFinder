package com.kosmo.petsfinder;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

	// SHOP
	@RequestMapping("/Shop")
	public String shopMain(HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession();
		int cartCount = 0;
		if (session.getAttribute("idx") != null) {
			cartCount = sqlSession.getMapper(ShopDAOImpl.class).cartCount(Integer.parseInt(session.getAttribute("idx").toString()));
			ArrayList<ProductDTO> recentlist = sqlSession.getMapper(ShopDAOImpl.class).selectListRecent();
			model.addAttribute("rlist", recentlist);
		}
		model.addAttribute("cartCount", cartCount);
		return "./shoppingmall/shopMain";
	}
	
	@RequestMapping(value = "/ShopList")
	public String shopList(Model model,HttpServletRequest req, ParameterDTO parameterDTO) {
		
		HttpSession session = req.getSession();
		int cartCount = 0;
		if (session.getAttribute("idx") != null) {
			cartCount = sqlSession.getMapper(ShopDAOImpl.class).cartCount(Integer.parseInt(session.getAttribute("idx").toString()));
			ArrayList<ProductDTO> recentlist = sqlSession.getMapper(ShopDAOImpl.class).selectListRecent();
			model.addAttribute("rlist", recentlist);
		}
		
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
		model.addAttribute("cartCount", cartCount);
		model.addAttribute("lists", lists);
		model.addAttribute("category", category);
		
		
		
		
		return "./shoppingmall/shopList";
	}
	
	
	@RequestMapping(value = "/shopSortList",method = RequestMethod.POST )
	@ResponseBody
	public ArrayList<ProductDTO> sortList(ParameterDTO parameterDTO) {
		
		ArrayList<ProductDTO> lists = new ArrayList<ProductDTO>();
		System.out.println(parameterDTO.getSort());
		//판매순 정렬
		if(parameterDTO.getSort()==1) {
			//0 : 일반, 1 : 오름차순(asc)↑ ,2: 내림차순(desc)↓
			int m = parameterDTO.getSortm();
			if(m==1) {
				m=0;
			}else {
				m+=1;
			}
			parameterDTO.setSortm(m);
			
			System.out.println("정렬"+parameterDTO.getSort());
			System.out.println("정렬모드"+parameterDTO.getSortm());
			//상품 리스트 
			lists =	sqlSession.getMapper(ShopDAOImpl.class).productList(parameterDTO);
		}
		//가격순 정렬
		else if(parameterDTO.getSort()==2) {
			//0 : 일반, 1 : 오름차순(asc)↑ ,2: 내림차순(desc)↓
			int m = parameterDTO.getSortm();
			if(m==2) {
				m=0;
			} else {
				m+=1;
			}
			parameterDTO.setSortm(m);
			
			System.out.println("정렬"+parameterDTO.getSort());
			System.out.println("정렬모드"+parameterDTO.getSortm());
			//상품 리스트 
			lists =	sqlSession.getMapper(ShopDAOImpl.class).productList(parameterDTO);
		}
		//등록순 정렬
		else if(parameterDTO.getSort()==3) {
			//0 : 일반, 1 : 오름차순(asc)↑ ,2: 내림차순(desc)↓
			int m = parameterDTO.getSortm();
			if(m==1) {
				m=0;
			}else {
				m+=1;
			}
			parameterDTO.setSortm(m);
			
			System.out.println("정렬"+parameterDTO.getSort());
			System.out.println("정렬모드"+parameterDTO.getSortm());
			//상품 리스트 
			lists =	sqlSession.getMapper(ShopDAOImpl.class).productList(parameterDTO);
		}
		//최신날짜순 정렬
		
		
		
		return lists;
	}
	
	
	@RequestMapping(value = "Shop/buyOrCart.do")
	public String paymentForm(Model model, HttpSession session, HttpServletRequest req, HttpServletResponse resp, BuyOrCartDTO buyOrCartDTO) throws IOException {
		
		
		/*
		//submit 종류
		//상품idx
		//상품 수량
		//상품 총 가격
		buyOrCartDTO 이거로 받음
		 */
		String url = "";
		if (session.getAttribute("idx") == null) {
			model.addAttribute("backUrl", "./shopCart");
			return "redirect:../Login";
		} else {
			int member_idx = Integer.parseInt(String.valueOf(session.getAttribute("idx")));
			int cartCount = sqlSession.getMapper(ShopDAOImpl.class).cartCount(member_idx);
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
					//할인 5 or 10, 배송비 0
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
				int pl_count = payList.size();
				//최종 결제정보 
				PayInfoDTO payInfoDTO = new PayInfoDTO();
				payInfoDTO.setAmount(buyOrCartDTO.getAmount());
				payInfoDTO.setProduct_price(buyOrCartDTO.getProduct_price()*buyOrCartDTO.getProduct_quanity());
				payInfoDTO.setDiscount(buyOrCartDTO.getDiscount());
				payInfoDTO.setDeliveryCharge(buyOrCartDTO.getDeliveryCharge());
				
				
				
				
				//모델에 저장
				model.addAttribute("r", buyOrCartDTO.getSubM());
				model.addAttribute("cartCount", cartCount);
				model.addAttribute("memberSDTO", memberSDTO);
				model.addAttribute("payList", payList);
				model.addAttribute("payInfo", payInfoDTO);
				model.addAttribute("pl_count", pl_count);
				
				url = "shoppingmall/paymentForm";
			}
			//장바구니
			else if(buyOrCartDTO.getSubM().equals("addtocart")) {
				System.out.println("장바구니");
				// 장바구니에 같은 상품이 있는지 확인!
				//장바구니 리스트
				ArrayList<BuyOrCartDTO> payList =
						sqlSession.getMapper(ShopDAOImpl.class).cartList(member_idx);
				
				boolean idxCheck = false;
				for(BuyOrCartDTO dto : payList) {
					if (dto.getProduct_idx() == buyOrCartDTO.getProduct_idx() ) {
						idxCheck = true;
						break;
					}
				}
				
				boolean stockCheck = false;
				for(BuyOrCartDTO dto : payList) {
					if (dto.getProduct_idx() == buyOrCartDTO.getProduct_idx() ) {
						if (dto.getProduct_quanity() + buyOrCartDTO.getProduct_quanity() > dto.getProduct_stock()) {
							System.out.println(dto.getProduct_stock());
							System.out.println(dto.getProduct_quanity() + buyOrCartDTO.getProduct_quanity());
							stockCheck = true;
							break;
						}
					}
				}
				CartDTO cartDTO = new CartDTO();
				//장바구니 일련번호, 멤버 idx, 상품idx, 수량
				cartDTO.setMember_idx(member_idx);
				cartDTO.setProduct_idx(buyOrCartDTO.getProduct_idx());
				cartDTO.setProduct_quanity(buyOrCartDTO.getProduct_quanity());
				if (stockCheck == false) {
					
					//장바구니에 담기 
					if (idxCheck == false) {
						
						int result = 
								sqlSession.getMapper(ShopDAOImpl.class).insertCart(cartDTO);
						if(result==1) {
							System.out.println("장바구니 담기 성공!");
						}
						String backUrl = req.getParameter("backUrl");
						if (backUrl != null && !backUrl.equals("")) {
							url = "redirect:../" + backUrl;
						} else {
							url = "redirect:../ShopView?product_idx=" + buyOrCartDTO.getProduct_idx();
						}
					} else {
						int result = sqlSession.getMapper(ShopDAOImpl.class).updateCart(cartDTO);
						if(result == 1) {
							System.out.println("장바구니 담기 성공! -> 수량 증가");
						} 
						String backUrl = req.getParameter("backUrl");
						if (backUrl != null && !backUrl.equals("")) {
							url = "redirect:../" + backUrl;
						} else {
							url = "redirect:../ShopView?product_idx=" + buyOrCartDTO.getProduct_idx();
						}
					}
				} else {
					String backUrl = req.getParameter("backUrl");
					if (backUrl != null && !backUrl.equals("")) {
						url = "redirect:../" + backUrl + "?m=1";
					} else {
						url = "redirect:../ShopView?product_idx=" + buyOrCartDTO.getProduct_idx() + "&m=1";
					}
				}
				
			}
			//장바구니 일괄결제 
			else if (buyOrCartDTO.getSubM().equals("cartBuy")) {
				System.out.println("장바구니 일괄 결제");
				//결제할 상품 정보 받아오기
				ArrayList<BuyOrCartDTO> payList =
						sqlSession.getMapper(ShopDAOImpl.class).cartList(member_idx);
				int pl_count = payList.size();
				
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
					amount += payInfoDTO.getDeliveryCharge();
					
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
				
				model.addAttribute("cartCount", cartCount);
				model.addAttribute("memberSDTO", memberSDTO);
				model.addAttribute("payList", payList);
				model.addAttribute("payInfo", payInfoDTO);
				model.addAttribute("pl_count", pl_count);
				
				url = "shoppingmall/paymentForm";
			}
			
			return url;
		}
	}
	
	
	
	//쇼핑 상세보기
	@RequestMapping("/ShopView")
	public String shopView(Model model, HttpServletRequest req ) {
		
		int product_idx = Integer.parseInt(req.getParameter("product_idx"));
		
		ProductDTO productDTO = 
				sqlSession.getMapper(ShopDAOImpl.class).productInfo(product_idx);
		productDTO.setPhoto(productDTO.getPhotos().split("\\|"));
		
		HttpSession session = req.getSession();
		int cartCount = 0;
		if (session.getAttribute("idx") != null) {
			cartCount = sqlSession.getMapper(ShopDAOImpl.class).cartCount(Integer.parseInt(session.getAttribute("idx").toString()));
			ArrayList<ProductDTO> list = sqlSession.getMapper(ShopDAOImpl.class).selectRecentAll();
			boolean check = false;
			for(ProductDTO dto : list) {
				if(dto.getProduct_idx() == product_idx) {
					check = true;
					break;
				}else {
					check = false;
				}
			}
			if(check == true) {
				int result = sqlSession.getMapper(ShopDAOImpl.class).updateRecent(product_idx);
				if(result==1) {
					System.out.println("업데이트 성공");
				}else {
					System.out.println("업데이트 실패");
				}
			}else {
				int result = sqlSession.getMapper(ShopDAOImpl.class).insertRecent(product_idx);
				if(result==1) {
					System.out.println("추가 성공");
				}else {
					System.out.println("추가 실패");
				}
			}
		}
		
		model.addAttribute("cartCount", cartCount);
		model.addAttribute("productDTO", productDTO);
		return "./shoppingmall/shopView";
	}
	
	//장바구니 페이지
	@RequestMapping(value = "/shopCart")
	public String shopCart(Model model,HttpSession session) {
		
		if (session.getAttribute("idx") != null) {
			
			//멤버 idx
			int member_idx = Integer.parseInt(String.valueOf(session.getAttribute("idx")));
			int cartCount = sqlSession.getMapper(ShopDAOImpl.class).cartCount(member_idx);
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
				int deliveryCharge = 0;
				for(BuyOrCartDTO dto : payList) {
					dto.setDeliveryCharge(2500);
					dto.setDiscount(0);
					deliveryCharge = dto.getDeliveryCharge();
				}
				total += deliveryCharge;
				
				
			}else {
				//할인 10 or 15, 배송비 0
				for(BuyOrCartDTO dto : payList) {
					dto.setDeliveryCharge(0);
					int a = dto.getProduct_price();
					System.out.println(a);
					int b = memberSDTO.getSale();
					System.out.println(b);
					dto.setDiscount((a * b /100));
					a -= (a*b/100);
					dto.setAmount(a);
					System.out.println(dto.getDiscount());
					total -= dto.getDiscount();
				}
			}
			model.addAttribute("cartCount", cartCount);
			model.addAttribute("payList", payList);
			model.addAttribute("total", total);

			return "shoppingmall/shopCart";
		} else {
			
			model.addAttribute("backUrl", "./shopCart");
			return "redirect:./Login";
		}
		
		
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
		
		if (result != 0) {
			System.out.println("장바구니 삭제 성공");
		} else {
			System.out.println("장바구니 삭제 실패");
		}
		
		return "shopCart";
	}
	
	//장바구니 수량 변경
	@RequestMapping(value = "cartUpdate")
	@ResponseBody
	public int cartUpdate(CartDTO cartDTO) {
		
		System.out.println("1"+cartDTO.getCart_idx());
		System.out.println("2"+cartDTO.getProduct_quanity());
		int result = 
				sqlSession.getMapper(ShopDAOImpl.class).cartUpdate(cartDTO);
		
		return result;
	}
	
	@RequestMapping(value="Shop/insertPay", method = RequestMethod.POST)
	@ResponseBody
	public int insertPay(@RequestBody PayInfoDTO payInfoDTO, HttpSession session) {
		
		int member_idx = Integer.parseInt(String.valueOf(session.getAttribute("idx")));
		payInfoDTO.setMember_idx(member_idx);
		
		String[] p_name = payInfoDTO.getProductname().split(",");
		String productname = "";
		for (int i = 0; i < p_name.length; i++) {
			if (i < p_name.length - 1) {
				productname += p_name[i] + ", ";				
			} else {
				productname += p_name[i];
			}
		}
		System.out.println(productname);
		int amount = payInfoDTO.getAmount();
		payInfoDTO.setProductname(productname);
		payInfoDTO.setAmount(amount);
		payInfoDTO.setMember_idx(Integer.parseInt(session.getAttribute("idx").toString()));
		int result = sqlSession.getMapper(ShopDAOImpl.class).insertPay(payInfoDTO);
		
		if (result == 1) {
			System.out.println("결제 테이블 추가 성공");
			int ship = sqlSession.getMapper(ShopDAOImpl.class).insertS_Loc(payInfoDTO);
			if (ship == 1) {
				System.out.println("배송 정보 추가 성공");
			} else {
				System.out.println("배송 정보 추가 실패");
			}
			String[] total_quanity = payInfoDTO.getQuanity().split(",");
			int product_quanity = 0;
			String[] total_idx = payInfoDTO.getP_idx().split(",");
			int product_idx = 0;
			for (int i = 0; i < total_quanity.length; i++) {
				product_quanity = Integer.parseInt(total_quanity[i]);
				product_idx = Integer.parseInt(total_idx[i]);
				payInfoDTO.setProduct_idx(product_idx);
				payInfoDTO.setProduct_quanity(product_quanity);
				int effect = sqlSession.getMapper(ShopDAOImpl.class).insertS_Detail(payInfoDTO);
				if (effect == 1) {
					System.out.println("판매 내역 추가 성공");
					int del = sqlSession.getMapper(ShopDAOImpl.class).del_Pstock(product_quanity, product_idx);
					if (del == 1) {
						System.out.println("재고 수정 성공");
					} else {
						System.out.println("재고 수정 실패");
					}
				} else {
					System.out.println("판매 내역 추가 실패");
				}
			}
		} else {
			System.out.println("결제 테이블 추가 실패");
		}
		
		return result;
	}
	
}
