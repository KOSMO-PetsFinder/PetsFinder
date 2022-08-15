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
	
}
