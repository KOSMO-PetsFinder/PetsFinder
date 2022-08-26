package petsfinder.shop;

public class ParameterDTO {
	private int cate; //카테고리별 
	private int sort; //정렬순
	private int sortm;
	/*
	페이징 들어가면 사용
	private int start; //시작번호
	private int end; // 끝번호
	*/
	
	
	public int getCate() {
		return cate;
	}
	public int getSortm() {
		return sortm;
	}
	public void setSortm(int sortm) {
		this.sortm = sortm;
	}
	public void setCate(int cate) {
		this.cate = cate;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	
	private String searchText;

	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	
	
}