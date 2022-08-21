package petsfinder.petsitter;

import java.util.ArrayList;

public class ParameterDTO {

	private int start;    
    private int end;
    private ArrayList<Integer> typtag;
	private int count;
	
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
	public ArrayList<Integer> getTyptag() {
		return typtag;
	}
	public void setTyptag(ArrayList<Integer> typtag) {
		this.typtag = typtag;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	// 예약 시작일
	private String sbook_start1;
	private String sbook_start2;
	// 예약 마지막일
	private String sbook_end1;
	private String sbook_end2;

	public String getSbook_start1() {
		return sbook_start1;
	}
	public void setSbook_start1(String sbook_start1) {
		this.sbook_start1 = sbook_start1;
	}
	public String getSbook_end1() {
		return sbook_end1;
	}
	public void setSbook_end1(String sbook_end1) {
		this.sbook_end1 = sbook_end1;
	}
	public String getSbook_start2() {
		return sbook_start2;
	}
	public void setSbook_start2(String sbook_start2) {
		this.sbook_start2 = sbook_start2;
	}
	public String getSbook_end2() {
		return sbook_end2;
	}
	public void setSbook_end2(String sbook_end2) {
		this.sbook_end2 = sbook_end2;
	}
	
	// 정렬
	private String price; // 가격순

	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
