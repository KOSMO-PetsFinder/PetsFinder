package petsfinder.admin;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import petsfinder.abandonedanimal.AbandonedAnimalDTO;
import petsfinder.abandonedanimal.AdoptionAppDTO;
import petsfinder.abandonedanimal.ReportDTO;
import petsfinder.board.QnACommentDTO;
import petsfinder.member.MemberDTO;
import petsfinder.petsitter.PetSitterDTO;
import petsfinder.review.ReviewBoardDTO;
import petsfinder.shop.ParameterDTO;
import petsfinder.shop.PayMentDTO;
import petsfinder.shop.ProductDTO;
import petsfinder.shop.ShipLocInfoDTO;

@Service
public interface AdminDAOImpl {
	
//////////////////////////////////은아//////////////////////////////////
	
	public ArrayList<AdminDTO> qnaList(AdminDTO adminDTO);
	
	public AdminDTO qnaView(AdminDTO adminDTO);

	public void qnaDelete(int qna_idx);
	
	public ArrayList<PetSitterDTO> sitBList(PetSitterDTO petSitterDTO);
	
	public PetSitterDTO sitBView(PetSitterDTO petSitterDTO);
	
	public void sitBDelete(int sbook_idx);
	
	//현재 시터 & 예약자 이름이 null값이여서 null값을 허용하는 Integer로 변경해놓음 (int->integer) 
	public Integer sitBEditAction(PetSitterDTO petSitterDTO);
	
	
	//리액트 공지사항 게시판
	
	//게시물의 갯수 카운트
	public int nGetTotalCount(AdminParameterDTO adminParameterDTO);
	
	//페이징 적용된 게시물 가져오기
	public ArrayList<AdminDTO> nListPage(AdminParameterDTO adminParameterDTO);
	
	//게시물 내용보기
	public ArrayList<AdminDTO> nView(AdminParameterDTO adminParameterDTO);
	//게시물작성
	public int nWrite(AdminDTO adminDTO);
	
	public int nDelete(int notboard_idx);
	
	public int nEdit(AdminDTO adminDTO);
	
	//택수
	//공지사항 리스트 게시물 갯수 카운트
	public int mGetTotalCount(AdminParameterDTO adminParameterDTO);
	//공지사항 리스트 가져오기
	public ArrayList<AdminDTO> mListPage(int s, int e);	
	
///////////////////////////////승헌////////////////////////////////////////
	
	//시터 후기 리스트 전체 카운트
	public ArrayList<ReviewBoardDTO> PSlist();
	
	
	//시터 후기 삭제
	public int deleterv(int review_idx);
	//멤버 삭제
	public int deletemem(int member_idx);
	
	//멤버 전체 카운트s
	public int memgetTotalCount();
	//멤버 리스트 가져오기
	public ArrayList<MemberDTO> memberlist();
	
	// 멤버 수정
	public int modifymem(String member_type, int member_idx);
	
	//시터신청현황 카운트
	public int SitgetTotalCount();
	
	//시터신청 내역 리스트 가져오기
	public ArrayList<AdminSitAplDTO> sitapllist();
	
	//시터 신청 수락
	public int accept(int member_idx);
	//시터 신청 수락 후 삭제
	public int deleteap(int member_idx);
	//시터 거절
	public int denied(int member_idx);
	
	//상품 삭제
	public int deletepdt(int product_idx);
	//상품 등록
	public int productregi(ProductDTO productDTO);
	//상품 수정시 데이터 불러오기
	public ProductDTO pdtview(ProductDTO productDTO);
	//상품 수정
	public int pdtmodify(ProductDTO productDTO);
	
	//사진 저장
	public ArrayList<ProductDTO> pdt_image_file(int product_idx);
	
	//사진 삭제
	public int d_photo(int product_idx);
	//사진 등록
	public int i_photo(String pdt_image_file);
	
	//기존 게시물 내용을 읽어옴
	public ProductDTO view(ParameterDTO parameterDTO);	
	
	public ArrayList<QnACommentDTO> commentlist(QnACommentDTO qnACommentDTO);
	
	public AdminDTO qnaView1(int qna_idx);
	
	public AdminDTO qnaView(int qna_idx);
	
//	public QnACommentDTO qnaComment(QnACommentDTO qnACommentDTO);
	
	//QnA 댓글쓰기
	public int qnawriteac(QnACommentDTO qnACommentDTO);
	//QnA qna_stt 업데이트
	public int updatecom(int qna_idx);
	//QnA 댓글 삭제
	public int deletecomm(int qnacomm_idx);
	//QnA 댓글 수정
	public int modifyQnAcomm(AdminDTO adminDTO);
	
	
	
//////////////////원재옵//////////////////////////////////////////////////
	
	
	//유기동물 목록 가져오기
	public ArrayList<AbandonedAnimalDTO> animalList(AbandonedAnimalDTO abandonedAnimalDTO);
	
	//유기동물 신고 내역 가져오기
	public ArrayList<ReportDTO> reportList(ReportDTO reportDTO);
	
	//입양 신청 내역 가져오기
	public ArrayList<AdoptionAppDTO> adoptAppList(AdoptionAppDTO adoptionAppDTO);	
   
    //유기동물 상태 수정(보호중 or 입양완료)
	public int modifyAnimalList(String abani_stat, int abani_neut, int abani_vaccin,  int abani_idx);
	public int adp_insert(int abani_idx, int member_idx);
	
    //신고/구조 상태 수정(접수 or 구조진행중 or 구조완료)
    public int modifyReportStat(String dclrAbnd_stts, int dclrAbnd_idx);
    
    //유기동물 신고 상세보기
  	public ReportDTO reportView(int dclrAbnd_idx);
  	
  	//유기동물 신고 상세보기
  	public ReportDTO reportLoc(int dclrAbnd_idx);
  	
	//유기동물 등록
	public int animalRegistration(AbandonedAnimalDTO abandonedAnimalDTO);	

	//입양심사 상태 수정(거절, 심사중, 승인)
	public int modifyAdoptStt(String ADPAPL_stt, int ADPAPL_idx);	

	

//////////////////택수옵//////////////////////////////////////////////////////////
	
	
	
	//FAQ 목록 가져오기
	public ArrayList<AdminDTO> FaqList(AdminDTO adminDTO);
	
	public AdminDTO FaqView(AdminDTO adminDTO);
	
	public int FaqDelete(int faq_idx);
	
	public int FaqEditAction(AdminDTO adminDTO);
	
	public ArrayList<ReviewBoardDTO> AdpReview(ReviewBoardDTO reviewBoardDTO);
	
	public int AdpDelete(int review_idx);
	
	//구매내역 리스트 가져오기
	public ArrayList<PayMentDTO> PayMent();
	
	//구매 내역(결제상태) 수정
	public int modifypay(String payStus, int payment_idx);
	
	//배송내역 리스트 가져오기
	public ArrayList<ShipLocInfoDTO> ShipLocInfo();
	
	//배송내역 리스트 삭제
	public int ShipInfoDelete(int shiplocinfo_idx);
	
	//배송상태(PRP준비, dlv중, cmp완료) 수정
	public int modifyshipinfo(String delivery_status, int shiplocinfo_idx);

}
