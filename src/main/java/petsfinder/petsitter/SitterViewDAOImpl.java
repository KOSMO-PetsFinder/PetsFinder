package petsfinder.petsitter;

import petsfinder.member.MemberDTO;

public interface SitterViewDAOImpl {
	
	//시터테이블 정보
	public SitterViewDTO sitterView(SitterViewDTO member_idx);
	//시터의 멤버테이블 정보(시터이름용)
	public MemberDTO stMember(MemberDTO member_idx);
	//펫테이블 정보
	public SitterViewDTO stPet(SitterViewDTO member_idx);
	//시터후기
	public SitterViewDTO stReview(SitterViewDTO sit_idx);
	//시터의 멤버테이블 정보(시터 이름용)
	

}
