package petsfinder.petsitter;

import java.util.ArrayList;

<<<<<<< HEAD
import petsfinder.member.MemberDTO;

public interface PetSitterDAOImpl {
	
	//시터테이블 정보
	public PetSitterDTO sitterView(PetSitterDTO member_idx);
	//시터의 멤버테이블 정보(시터이름용)
	public MemberDTO stMember(MemberDTO member_idx);
	//펫테이블 정보
	public PetSitterDTO stPet(PetSitterDTO member_idx);
	//시터후기
	public PetSitterDTO stReview(PetSitterDTO sit_idx);
	//시터의 멤버테이블 정보(시터 이름용)
	
	//시터의 멤버테이블 정보(시터 이름용)
	//시터 이용 가능 서비스 
	public ArrayList<PetSitterDTO> avalService(PetSitterDTO member_idx);
	//시터 태그 
	public ArrayList<PetSitterDTO> sitterTag(PetSitterDTO sit_idx);
	
	public int getTotalCountSearchTag(PetSitterDTO petSitterDTO);
	public ArrayList<PetSitterDTO> searchTaglist(PetSitterDTO petSitterDTO);

=======
import petsfinder.review.ReviewBoardDTO;

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
	
	
	/* 리스트 */
	// 예약 조회
	public ArrayList<PetSitterDTO> reserveSearchInfo(String sD, String eD);
	
	/* 시터 등록 */
	// 태그 출력
	public ArrayList<String> sit_tag(int sit_idx);

	// 서비스 출력
	public ArrayList<Integer> sit_service(int sit_idx);
	
>>>>>>> branch 'main' of https://github.com/KOSMO-PetsFinder/PetsFinder.git
}
