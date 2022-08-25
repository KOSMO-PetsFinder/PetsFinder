package petsfinder.abandonedanimal;

import java.sql.Date;

public class AbandonedAnimalDTO {
	private int abani_idx;
	private String abani_kind;
	private String abani_gender; 
	private String abani_loc; 
	private Date  abani_regdate;
	private int abani_neut; 
	private String abani_stat;
	private String abani_photo;
	private String abani_age;
	private int abani_vaccin;
	private String abani_species;
	private String abani_char;
	private int adoptmember_idx;
	
	
	public String getAbani_stat() {
		return abani_stat;
	}
	public void setAbani_stat(String abani_stat) {
		this.abani_stat = abani_stat;
	}
	public String getAbani_gender() {
		return abani_gender;
	}
	public void setAbani_gender(String abani_gender) {
		this.abani_gender = abani_gender;
	}
	public int getAdoptmember_idx() {
		return adoptmember_idx;
	}
	public void setAdoptmember_idx(int adoptmember_idx) {
		this.adoptmember_idx = adoptmember_idx;
	}
	public String getAbani_char() {
		return abani_char;
	}
	public void setAbani_char(String abani_char) {
		this.abani_char = abani_char;
	}
	public int getAbani_idx() {
		return abani_idx;
	}
	public void setAbani_idx(int abani_idx) {
		this.abani_idx = abani_idx;
	}
	public String getAbani_kind() {
		return abani_kind;
	}
	public void setAbani_kind(String abani_kind) {
		this.abani_kind = abani_kind;
	}
	public String getAbani_loc() {
		return abani_loc;
	}
	public void setAbani_loc(String abani_loc) {
		this.abani_loc = abani_loc;
	}
	public Date getAbani_regdate() {
		return abani_regdate;
	}
	public void setAbani_regdate(Date abani_regdate) {
		this.abani_regdate = abani_regdate;
	}
	public int getAbani_neut() {
		return abani_neut;
	}
	public void setAbani_neut(int abani_neut) {
		this.abani_neut = abani_neut;
	}
	public String getAbani_photo() {
		return abani_photo;
	}
	public void setAbani_photo(String abani_photo) {
		this.abani_photo = abani_photo;
	}
	public String getAbani_age() {
		return abani_age;
	}
	public void setAbani_age(String abani_age) {
		this.abani_age = abani_age;
	}
	public int getAbani_vaccin() {
		return abani_vaccin;
	}
	public void setAbani_vaccin(int abani_vaccin) {
		this.abani_vaccin = abani_vaccin;
	}
	public String getAbani_species() {
		return abani_species;
	}
	public void setAbani_species(String abani_species) {
		this.abani_species = abani_species;
	}
	
	private int member_idx;
	private String adpapl_stt;
	private int adpapl_idx;
	
	
	public int getAdpapl_idx() {
		return adpapl_idx;
	}
	public void setAdpapl_idx(int adpapl_idx) {
		this.adpapl_idx = adpapl_idx;
	}
	public String getAdpapl_stt() {
		return adpapl_stt;
	}
	public void setAdpapl_stt(String adpapl_stt) {
		this.adpapl_stt = adpapl_stt;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	
}
