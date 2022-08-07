package petsfinder.abandonedanimal;

import java.util.ArrayList;

import org.springframework.stereotype.Service;


@Service
public interface AbandonedAnimalDAOImpl {
	
	//유기동물 하나 가져오기
	public AbandonedAnimalDTO abandonedAnimalView(AbandonedAnimalDTO abandonedAnimalDTO);
	//유기동물 전체 갯수 가져오기
	public int abAniGetTotalCount();
	//유기동물 목록 가져오기
	public ArrayList<AbandonedAnimalDTO> listPage(int s, int e);
	//유기동물 신고 저장
	public int notifyForm(ReportDTO reportDTO);
	//유기동물 입양 후기 가져오기
	public ArrayList<ReviewBoardDTO> abaAniReview(int abani_idx);
	//그 입양동물 상세보기에서 쓰인 후기들의 댓글을 모두 가져오기
	public ArrayList<ReviewCommentDTO> reviewComment(int abani_idx);
	//후기의 댓글 저장
	public int commentInsert(ReviewCommentDTO reviewCommentDTO);
	//좋아요 유무확인
	public ReviewLikeDTO likeStatus(ReviewLikeDTO reviewLikeDTO);
	//좋아요 저장 
	public int insertLike(ReviewLikeDTO reviewLikeDTO);
	//좋아요 0->1
	public int likeZeroToOne(ReviewLikeDTO reviewLikeDTO);
	//좋아요 1->0
	public int likeOntToZero(ReviewLikeDTO reviewLikeDTO);
	//사용자가 좋아요한 후기 목록
	public ArrayList<ReviewLikeDTO> likeList(int member_idx);
	//입양 신청 저장
	public int AdoptApplicationForm(AdoptionAppDTO adoptionAppDTO);
}
