package petsfinder.petsitter;

import java.util.ArrayList;

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

}
