package petsfinder.shop;

import java.util.ArrayList;

import org.springframework.stereotype.Service;


@Service
public interface ShopDAOImpl {
	//상품 전체 갯수 가져오기
	public int productGetTotalCount(ParameterDTO parameterDTO);
	//상품 전체 리스트 가져오기
	public ArrayList<ProductDTO> productList(ParameterDTO parameterDTO);
	
	
}
