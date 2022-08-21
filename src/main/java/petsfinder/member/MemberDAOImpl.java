package petsfinder.member;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import petsfinder.petsitter.PetSitterDTO;
import petsfinder.review.ReviewBoardDTO;

@Service
public interface MemberDAOImpl {

	public MemberDTO memberLogin(MemberDTO memberDTO);
	
	public int memberInsert(MemberDTO memberDTO);
	
	public String idValidate(String id);
	
	public String idSearch(MemberDTO memberDTO);
	
	public String pwSearch(MemberDTO memberDTO);

	public int pwReset(MemberDTO memberDTO);
	
	public int infoUpdate(MemberDTO memberDTO);
	
	public String addr(String idx);
	
	public ArrayList<ReviewBoardDTO> adpReview(int member_idx);
	
	public ArrayList<ReviewBoardDTO> sitReview(int member_idx);
	
	public ReviewBoardDTO myReview(int review_idx);
	
	public int review_up(String review_content, int review_idx);
	
	public int review_del(int review_idx);
	
	public ArrayList<PetSitterDTO> m_Reserve(int member_idx);
	
	public int up_Reserve(String sbook_status, int sbook_idx);
	
	public int reviewWrite(ReviewBoardDTO reviewBoardDTO);
}
