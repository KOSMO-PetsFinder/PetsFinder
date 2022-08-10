package petsfinder.abandonedanimal;

public class ParameterDTO {
	private String sD;
	private String eD;
	private String species;
	private String gender;
	private int start; 	
	private int end;
	
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
	public String getsD() {
		return sD;
	}
	public void setsD(String sD) {
		this.sD = sD;
	}
	public String geteD() {
		return eD;
	}
	public void seteD(String eD) {
		this.eD = eD;
	}
	public String getSpecies() {
		return species;
	}
	public void setSpecies(String species) {
		this.species = species;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
