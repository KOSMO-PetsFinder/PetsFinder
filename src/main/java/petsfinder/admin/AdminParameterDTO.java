package petsfinder.admin;

import java.util.ArrayList;

public class AdminParameterDTO {


	//게시물의 일련번호
	private String num;
	//검색어 필드(테이블의 필드와 동일한 이름을 사용)
	private String searchField;
	//검색어(2개 이상을 처리하기 위해 List컬렉션을 사용한다.)
	private ArrayList<String> searchTxt;
	//출력할 게시물의 구간을 설정
	private int start;
	private int end;
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getSearchField() {
		return searchField;
	}
	public void setSearchField(String searchField) {
		this.searchField = searchField;
	}
	public ArrayList<String> getSearchTxt() {
		return searchTxt;
	}
	public void setSearchTxt(ArrayList<String> searchTxt) {
		this.searchTxt = searchTxt;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}

}
