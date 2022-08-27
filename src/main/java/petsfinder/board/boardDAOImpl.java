package petsfinder.board;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import petsfinder.admin.AdminDTO;
import petsfinder.petsitter.PetSitterDTO;

@Service
public interface boardDAOImpl {
	
		//QnA 리스트 띄우기
		public ArrayList<AdminDTO> qnaList(int s, int e);
		
		//FAQ 리스트 띄우기
		public ArrayList<AdminDTO> FaqList(AdminDTO adminDTO);
		
		//QnA 리스트 갯수 가져오기
		public int getTotalCountSearch(ParameterDTO parameterDTO);
		
		//QnA 글 작성
		public int writeQNA(AdminDTO adminDTO);
		
		//QnA 글 삭제
		public int deleteqna(int qna_idx);
		
		//QnA 기존 게시물 불러오기
		public AdminDTO viewQnA(AdminDTO adminDTO);
		
		//QnA 게시물 수정
		public int editQnA(AdminDTO adminDTO);
		
		public boolean qnacommwrite(QnACommentDTO qnACommentDTO);
		
		public AdminDTO qnaView1(int qna_idx);
		
		public ArrayList<AdminDTO> qnalistview(int s, int e);
		
		public ArrayList<AdminDTO> qnaAll(int s, int e);
		
		public int pubtopri(int qna_idx);
		public int pritopub(int qna_idx);
		public AdminDTO opensts(int qna_idx);
}
