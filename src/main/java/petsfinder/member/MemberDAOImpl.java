package petsfinder.member;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import petsfinder.abandonedanimal.AbandonedAnimalDTO;
import petsfinder.admin.AdminSitAplDTO;
import petsfinder.petsitter.PetSitterDTO;
import petsfinder.review.ReviewBoardDTO;
import petsfinder.shop.PayDTO;

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
	
	public ArrayList<ReviewBoardDTO> shpReview(int member_idx);
	
	public ReviewBoardDTO myReview(int review_idx);
	
	public int review_up(ReviewBoardDTO reviewBoardDTO);
	
	public int review_del(int review_idx);
	
	public ArrayList<PetSitterDTO> m_Reserve(int member_idx);
	
	public int up_Reserve(String sbook_status, int sbook_idx);
	public int up_client(int sit_idx);
	
	public int plusStar(int sit_starpoint, int sit_idx);
	
//	public int sbook_review(int sbook_idx);
//	public int r_idx(int sbook_idx);
//	public int r_idxDel(int review_idx);
	
	public int reviewWrite(ReviewBoardDTO reviewBoardDTO);
	
	public int review_on(int review_idx);
	public int review_off(int sbook_idx);
	
	public MemberDTO sitterAplInsert(int member_idx);
	
	public int setsitterApl(AdminSitAplDTO adminSitAplDTO);
	
	public ArrayList<AbandonedAnimalDTO> m_Adopt(int member_idx);
	
	public ArrayList<PayDTO> m_Bought(int member_idx);
	
	public int up_Adopt(String adpapl_stt, int adpapl_idx);
	
	public int up_Abandoned(int abani_idx);
	
	public int up_refund(int payment_idx);
	
	public int up_delivery(String delivery_status, int payment_idx);
	
	public ArrayList<PayDTO> m_Boughtview(int member_idx, int payment_idx);
	
	public MemberDTO memberInfo(int member_idx);
}
