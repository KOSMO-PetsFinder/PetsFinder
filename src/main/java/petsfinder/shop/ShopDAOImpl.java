package petsfinder.shop;

import java.util.ArrayList;

import org.springframework.stereotype.Service;


@Service
public interface ShopDAOImpl {
	//상품 전체 갯수 가져오기
	public int productGetTotalCount(ParameterDTO parameterDTO);
	//상품 전체 리스트 가져오기
	public ArrayList<ProductDTO> productList(ParameterDTO parameterDTO);
	//상세보기 게시물가져오기
	public ArrayList<ProductDTO> shopview(int product_idx);
	//상품 1개 가져오기 (바로결제 사용시)
	public ProductDTO productInfo(int product_idx);
	//장바구니 담기
	public int insertCart(CartDTO cartDTO);
	public int updateCart(CartDTO cartDTO);
	//결제 사용자 정보 불러오기
	public MemberSDTO payUserInfo(int member_idx);
	//장바구니 리스트 불러오기
	public ArrayList<BuyOrCartDTO> cartList(int member_idx);
	//장바구니 선택 삭제
	public int cartDelete(String[] num);
	//장바구니 수량 변경
	public int cartUpdate(CartDTO cartDTO);
	// 장바구니 개수
	public int cartCount(int member_idx);
	// 결제 테이블 추가
	public int insertPay(PayInfoDTO payInfoDTO);
	// 판매 내역 추가
	public int insertS_Detail(PayInfoDTO payInfoDTO);
	// 배송 정보 추가
	public int insertS_Loc(PayInfoDTO payInfoDTO);
	// 재고 수정
	public int del_Pstock(int product_quanity, int product_idx);
	//최근 본 게시물 삽입
	public int insertRecent(int recent_idx);
	//최근 본 게시물 업데이트
	public int updateRecent (int product_idx);
	//띄울 리스트 3개
	public ArrayList<ProductDTO> selectListRecent();
	//최근본 게시물 전체 리스트
	public ArrayList<ProductDTO> selectRecentAll();

}

