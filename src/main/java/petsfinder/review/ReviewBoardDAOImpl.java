package petsfinder.review;


import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface ReviewBoardDAOImpl {

	//시터 후기 전체개수 가져오기
	public int getTotalCount();
	//시터 후기 리스트 가져오기
	public ArrayList<ReviewBoardDTO> PSlist(int s, int e);
}
