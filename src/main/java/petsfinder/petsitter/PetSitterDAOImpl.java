package petsfinder.petsitter;

import java.util.ArrayList;

import petsfinder.review.ReviewBoardDTO;

public interface PetSitterDAOImpl {
	
	//시터테이블 정보
	public PetSitterDTO sitterView(int member_idx);
	//시터의 멤버테이블 정보(시터이름용)
//	public MemberDTO stMember(int member_idx);
	//펫테이블 정보
//	public PetsitterDTO stPet(int member_idx);
	//시터후기
	public ArrayList<ReviewBoardDTO> stReview(int sit_idx);
	//시터의 멤버테이블 정보(시터 이름용)
	//시터 이용 가능 서비스 
	public ArrayList<PetSitterDTO> avalService(int sit_idx);
	//시터 태그 
	public ArrayList<PetSitterDTO> sitterTag(int sit_idx);
	
	
	
	// 태그 출력
	public ArrayList<String> sit_tag(int sit_idx);

	// 서비스 출력
	public ArrayList<Integer> sit_service(int sit_idx);
}
