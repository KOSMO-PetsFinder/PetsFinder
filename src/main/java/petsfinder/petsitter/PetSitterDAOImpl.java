package petsfinder.petsitter;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import petsfinder.review.ReviewBoardDTO;


@Service
public interface PetSitterDAOImpl {
	
	
	/* 상세보기 */
	//시터테이블 정보
	public PetSitterDTO sitterView(int member_idx);
	//시터후기
	public ArrayList<ReviewBoardDTO> stReview(int sit_idx);
	//시터 이용 가능 서비스 
	public ArrayList<PetSitterDTO> avalService(int sit_idx);
	//시터 태그 
	public ArrayList<PetSitterDTO> sitterTag(int sit_idx);
	// 예약 가능 날짜 조회
	public ArrayList<PetSitterDTO> reserved(int sit_idx);
	// 예약 등록
	public int reserve(PetSitterDTO petSitterDTO);
	//시터 리스트 전체 개수 가져오기
	public int getTotalCount();
	//펫시터찾기 페이지 미니 리스트 1,2,3
	public ArrayList<PetSitterDTO> listPage(int s, int e);
	public ArrayList<PetSitterDTO> listPage1(int s, int e);
	public ArrayList<PetSitterDTO> listPage2(int s, int e);
	
	
	/* 리스트 */
	// 예약 조회
	public ArrayList<PetSitterDTO> reserveSearchInfo(String sD, String eD);
	
	/* 시터 등록 */
	// 태그 출력
	public ArrayList<String> sit_tag(int sit_idx);

	// 서비스 출력
	public ArrayList<Integer> sit_service(int sit_idx);

}
