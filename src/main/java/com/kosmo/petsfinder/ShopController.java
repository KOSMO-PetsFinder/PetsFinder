package com.kosmo.petsfinder;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import petsfinder.review.ReviewBoardDAOImpl;
import petsfinder.review.ReviewBoardDTO;
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
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setSearchText(req.getParameter("searchText"));
		int cate =0;
		model.addAttribute("cate", cate);
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
		
		//???????????? ?????? ?????????
		int cate = (req.getParameter("cate")==null 
				|| req.getParameter("cate").equals("")) 
				? 0 : Integer.parseInt(req.getParameter("cate"));
		//?????? ?????? ?????????
		int sort = (req.getParameter("sort")==null 
				|| req.getParameter("sort").equals("")) 
				? 0 : Integer.parseInt(req.getParameter("sort"));
		//??????????????? ?????? 
		parameterDTO.setCate(cate);
		parameterDTO.setSort(sort);
		
		//?????? ?????? ????????? ??????
		//int totalRecordCount =
		//		sqlSession.getMapper(ShopDAOImpl.class).productGetTotalCount(parameterDTO);
		
		/*
		 * ????????? ??????????????? ???????????? ??????????????? ????????? ?????? ?????? ?????? 
		 */
		
		
		//?????? ????????? 
		ArrayList<ProductDTO> lists =
				sqlSession.getMapper(ShopDAOImpl.class).productList(parameterDTO);
		
//		String searchTxt = req.getParameter("q");
//		String addQueryString = "";
//		
//		if(!searchTxt.equals("")) {
//			addQueryString = "&searchTxt=" + searchTxt + "&";
//		}
		
		String category = "";
		switch (cate) {
		case 0:
			category ="????????????";
			break;
		case 1:
			category ="????????????";
			break;
		case 2:
			category ="?????????";
			break;
		case 3:
			category ="??????";
			break;

		}		
		String keyword = req.getParameter("searchText");
		parameterDTO.setSearchText(keyword);
		model.addAttribute("keyword", keyword);
		model.addAttribute("cate", cate);
		
		//????????? ??????
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
		//????????? ??????
		if(parameterDTO.getSort()==1) {
			//0 : ??????, 1 : ????????????(asc)??? ,2: ????????????(desc)???
			int m = parameterDTO.getSortm();
			if(m==1) {
				m=0;
			}else {
				m+=1;
			}
			parameterDTO.setSortm(m);
			
			System.out.println("??????"+parameterDTO.getSort());
			System.out.println("????????????"+parameterDTO.getSortm());
			//?????? ????????? 
			lists =	sqlSession.getMapper(ShopDAOImpl.class).productList(parameterDTO);
		}
		//????????? ??????
		else if(parameterDTO.getSort()==2) {
			//0 : ??????, 1 : ????????????(asc)??? ,2: ????????????(desc)???
			int m = parameterDTO.getSortm();
			if(m==2) {
				m=0;
			} else {
				m+=1;
			}
			parameterDTO.setSortm(m);
			
			System.out.println("??????"+parameterDTO.getSort());
			System.out.println("????????????"+parameterDTO.getSortm());
			//?????? ????????? 
			lists =	sqlSession.getMapper(ShopDAOImpl.class).productList(parameterDTO);
		}
		//????????? ??????
		else if(parameterDTO.getSort()==3) {
			//0 : ??????, 1 : ????????????(asc)??? ,2: ????????????(desc)???
			int m = parameterDTO.getSortm();
			if(m==1) {
				m=0;
			}else {
				m+=1;
			}
			parameterDTO.setSortm(m);
			
			System.out.println("??????"+parameterDTO.getSort());
			System.out.println("????????????"+parameterDTO.getSortm());
			//?????? ????????? 
			lists =	sqlSession.getMapper(ShopDAOImpl.class).productList(parameterDTO);
		}
		//??????????????? ??????
		
		
		
		return lists;
	}
	
	
	@RequestMapping(value = "Shop/buyOrCart.do")
	public String paymentForm(Model model, HttpSession session, HttpServletRequest req, HttpServletResponse resp, BuyOrCartDTO buyOrCartDTO) throws IOException {
		
		
		/*
		//submit ??????
		//??????idx
		//?????? ??????
		//?????? ??? ??????
		buyOrCartDTO ????????? ??????
		 */
		String url = "";
		if (session.getAttribute("idx") == null) {
			model.addAttribute("backUrl", "./shopCart");
			return "redirect:../Login";
		} else {
			int member_idx = Integer.parseInt(String.valueOf(session.getAttribute("idx")));
			int cartCount = sqlSession.getMapper(ShopDAOImpl.class).cartCount(member_idx);
			//?????? ?????? ??????(?????????,??????,??????,?????????,????????????)
			MemberSDTO memberSDTO = 
					sqlSession.getMapper(ShopDAOImpl.class).payUserInfo(member_idx);
			
			
			
			//?????? ??????
			if(buyOrCartDTO.getSubM().equals("buy")) {
				//??????????????? ?????? ????????? 
				System.out.println("??????");
				//1??? ????????????
				ProductDTO productDTO = 
						sqlSession.getMapper(ShopDAOImpl.class).productInfo(buyOrCartDTO.getProduct_idx());
				productDTO.setPhoto(productDTO.getPhotos().split("\\|"));
				buyOrCartDTO.setProduct_photo(productDTO.getPhoto()[0]);
				
				//????????? 
				buyOrCartDTO.setProduct_name(productDTO.getProduct_name());
				
				//?????? ????????????
				if(productDTO.getProduct_category().equals("ess")) {
					//?????? ??????
					buyOrCartDTO.setProduct_cate("?????? ??????");
				}
				else if(productDTO.getProduct_category().equals("mdc")) {
					//?????????
					buyOrCartDTO.setProduct_cate("?????????");
				}
				else if(productDTO.getProduct_category().equals("gds")) {
					//??????
					buyOrCartDTO.setProduct_cate("??????");
				} 
				//?????? ?????? ?????????
				buyOrCartDTO.setProduct_price(productDTO.getProduct_price());
				//?????? ?????? 
				
				
				
				//?????? ????????? ?????? 
				if(memberSDTO.getSale()==0) {
					//??????x, ????????? 2500
					buyOrCartDTO.setDeliveryCharge(2500);
					buyOrCartDTO.setDiscount(0);
					
					
					
				}else {
					//?????? 5 or 10, ????????? 0
					buyOrCartDTO.setDeliveryCharge(0);
					int a = buyOrCartDTO.getAmount();
					int b = memberSDTO.getSale();
					buyOrCartDTO.setDiscount((a*b/100));
					a -=(a*b/100);
					buyOrCartDTO.setAmount(a);
					
				}
				
				//???????????? ????????? ????????? ????????? ?????? list??? ??????
				ArrayList<BuyOrCartDTO> payList = new ArrayList<BuyOrCartDTO>();
				payList.add(buyOrCartDTO);
				int pl_count = payList.size();
				//?????? ???????????? 
				PayInfoDTO payInfoDTO = new PayInfoDTO();
				payInfoDTO.setAmount(buyOrCartDTO.getAmount());
				payInfoDTO.setProduct_price(buyOrCartDTO.getProduct_price()*buyOrCartDTO.getProduct_quanity());
				payInfoDTO.setDiscount(buyOrCartDTO.getDiscount());
				payInfoDTO.setDeliveryCharge(buyOrCartDTO.getDeliveryCharge());
				
				
				
				
				//????????? ??????
				model.addAttribute("r", buyOrCartDTO.getSubM());
				model.addAttribute("cartCount", cartCount);
				model.addAttribute("memberSDTO", memberSDTO);
				model.addAttribute("payList", payList);
				model.addAttribute("payInfo", payInfoDTO);
				model.addAttribute("pl_count", pl_count);
				
				url = "shoppingmall/paymentForm";
			}
			//????????????
			else if(buyOrCartDTO.getSubM().equals("addtocart")) {
				System.out.println("????????????");
				// ??????????????? ?????? ????????? ????????? ??????!
				//???????????? ?????????
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
				//???????????? ????????????, ?????? idx, ??????idx, ??????
				cartDTO.setMember_idx(member_idx);
				cartDTO.setProduct_idx(buyOrCartDTO.getProduct_idx());
				cartDTO.setProduct_quanity(buyOrCartDTO.getProduct_quanity());
				if (stockCheck == false) {
					
					//??????????????? ?????? 
					if (idxCheck == false) {
						
						int result = 
								sqlSession.getMapper(ShopDAOImpl.class).insertCart(cartDTO);
						if(result==1) {
							System.out.println("???????????? ?????? ??????!");
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
							System.out.println("???????????? ?????? ??????! -> ?????? ??????");
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
			//???????????? ???????????? 
			else if (buyOrCartDTO.getSubM().equals("cartBuy")) {
				System.out.println("???????????? ?????? ??????");
				//????????? ?????? ?????? ????????????
				ArrayList<BuyOrCartDTO> payList =
						sqlSession.getMapper(ShopDAOImpl.class).cartList(member_idx);
				int pl_count = payList.size();
				
				PayInfoDTO payInfoDTO = new PayInfoDTO();
				int amount = 0;
				int price = 0;
				int discount= 0;
				
				//?????? ????????? ?????? 
				if(memberSDTO.getSale()==0) {
					//??????x, ????????? 2500
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
					//?????? 10 or 15, ????????? 0
					payInfoDTO.setDeliveryCharge(0);
					for(BuyOrCartDTO dto : payList) {
						dto.setDeliveryCharge(0);
						//????????? ??????
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
				
				//?????? ???????????? 
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
	
	
	
	//?????? ????????????
	@RequestMapping("/ShopView")
	public String shopView(Model model, HttpServletRequest req ) {
		
		int product_idx = Integer.parseInt(req.getParameter("product_idx"));
		
		ProductDTO productDTO = 
				sqlSession.getMapper(ShopDAOImpl.class).productInfo(product_idx);
		productDTO.setPhoto(productDTO.getPhotos().split("\\|"));
		
		ArrayList<ReviewBoardDTO> review = sqlSession.getMapper(ReviewBoardDAOImpl.class).shopReviewSelect(product_idx);
		
		if(!review.isEmpty()) {
			for(ReviewBoardDTO dto : review) {
				String temp = dto.getReview_content().replace("\r\n", "<br/>");
				dto.setReview_content(temp);
			}
			model.addAttribute("review", review);
		}
		
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
					System.out.println("???????????? ??????");
				}else {
					System.out.println("???????????? ??????");
				}
			}else {
				int result = sqlSession.getMapper(ShopDAOImpl.class).insertRecent(product_idx);
				if(result==1) {
					System.out.println("?????? ??????");
				}else {
					System.out.println("?????? ??????");
				}
			}
		}
		
		model.addAttribute("cartCount", cartCount);
		model.addAttribute("productDTO", productDTO);
		return "./shoppingmall/shopView";
	}
	
	//???????????? ?????????
	@RequestMapping(value = "/shopCart")
	public String shopCart(Model model,HttpSession session) {
		
		if (session.getAttribute("idx") != null) {
			
			//?????? idx
			int member_idx = Integer.parseInt(String.valueOf(session.getAttribute("idx")));
			int cartCount = sqlSession.getMapper(ShopDAOImpl.class).cartCount(member_idx);
			//?????? ?????? ??????(?????????,??????,??????,?????????,????????????)
			MemberSDTO memberSDTO = 
					sqlSession.getMapper(ShopDAOImpl.class).payUserInfo(member_idx);
			//???????????? ?????????
			ArrayList<BuyOrCartDTO> payList =
					sqlSession.getMapper(ShopDAOImpl.class).cartList(member_idx);
			
			//?????? ?????????
			int total = 0;
			
			//?????? ??? ?????? 1?????? ??????
			for(BuyOrCartDTO dto :payList) {
				String[] pho = dto.getPhotos().split("\\|");
				dto.setProduct_photo(pho[0]);
			}
			System.out.println("??????: "+ memberSDTO.getSale());
			//?????? ????????? ?????? 
			if(memberSDTO.getSale()==0) {
				//??????x, ????????? 2500
				int deliveryCharge = 0;
				for(BuyOrCartDTO dto : payList) {
					dto.setDeliveryCharge(2500);
					dto.setDiscount(0);
					deliveryCharge = dto.getDeliveryCharge();
				}
				total += deliveryCharge;
				
				
			}else {
				//?????? 10 or 15, ????????? 0
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
					total += dto.getAmount()*dto.getProduct_quanity();
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
			System.out.println("???????????? ?????? ??????");
		} else {
			System.out.println("???????????? ?????? ??????");
		}
		
		return "shopCart";
	}
	
	//???????????? ?????? ??????
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
			System.out.println("?????? ????????? ?????? ??????");
			int ship = sqlSession.getMapper(ShopDAOImpl.class).insertS_Loc(payInfoDTO);
			if (ship == 1) {
				System.out.println("?????? ?????? ?????? ??????");
			} else {
				System.out.println("?????? ?????? ?????? ??????");
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
					System.out.println("?????? ?????? ?????? ??????");
					int del = sqlSession.getMapper(ShopDAOImpl.class).del_Pstock(product_quanity, product_idx);
					if (del == 1) {
						System.out.println("?????? ?????? ??????");
					} else {
						System.out.println("?????? ?????? ??????");
					}
				} else {
					System.out.println("?????? ?????? ?????? ??????");
				}
			}
		} else {
			System.out.println("?????? ????????? ?????? ??????");
		}
		
		return result;
	}
	
}
