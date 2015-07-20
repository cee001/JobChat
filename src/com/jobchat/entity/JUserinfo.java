package com.jobchat.entity;

import java.util.HashSet;
import java.util.Set;

import com.google.gson.annotations.Expose;

/**
 * JUserinfo entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class JUserinfo implements java.io.Serializable {

	// Fields
	@Expose
	private Integer userinfoId;
	@Expose
	private JUser JUser;
	@Expose
	private String userinfoTruename;
	@Expose
	private boolean userinfoSex;	
	@Expose	
	private String birthday;
	@Expose
	private float height;
	@Expose
	private String profession;
	@Expose
	private String highestdegree;
	@Expose
	private String academicdegree;
	@Expose	
	private String professional;
	@Expose
	private String nationality;
	@Expose
	private String nation;
	@Expose
	private String placeoforigin;
	@Expose
	private short maritalstatus;
	@Expose
	private String domicile;
	@Expose
	private String personnelfile;
	@Expose
	private String citynow;	
	@Expose
	private String politicalstatus;
	@Expose
	private Integer workingyears;
	@Expose
	private String currentsalaryrange;
	@Expose
	private String currentindustry;
	@Expose
	private String currentunit;
	@Expose
	private String currentposition;
	@Expose
	private String nowworking;
	@Expose
	private String qq;
	@Expose
	private String adress;
	@Expose
	private short iswork;
	@Expose
	private short forwork;
	@Expose
	private String ptime;
	@Expose
	private short status;
	private Set JUserworks = new HashSet(0);
	private Set JUserforjobs = new HashSet(0);
	private Set JUserhobbies = new HashSet(0);
	private Set JUsereducations = new HashSet(0);
	private Set JUserevaluations = new HashSet(0);
	private Set JUsercompanyjobs = new HashSet(0);
	private Set JUserpaies = new HashSet(0);
	private Set JUservalueses = new HashSet(0);
	private Set JUserpapers = new HashSet(0);
	private Set JUserskills = new HashSet(0);

	// Constructors

	/** default constructor */
	public JUserinfo() {
	}

	/** minimal constructor */
	public JUserinfo(JUser JUser, String ptime, short status) {
		this.JUser = JUser;
		this.ptime = ptime;
		this.status = status;
	}

	/** full constructor */
	public JUserinfo(JUser JUser, String userinfoTruename, boolean userinfoSex,
			String birthday, float height, String profession,
			String highestdegree, String academicdegree, String professional,
			String nationality, String nation, String placeoforigin,
			short maritalstatus, String domicile, String personnelfile,
			String citynow, String politicalstatus, Integer workingyears,
			String currentsalaryrange, String currentindustry,
			String currentunit, String currentposition, String nowworking,
			String qq, String adress, short iswork, short forwork,
			String ptime, short status, Set JUserworks, Set JUserforjobs,
			Set JUserhobbies, Set JUsereducations, Set JUserevaluations,
			Set JUsercompanyjobs, Set JUserpaies, Set JUservalueses,
			Set JUserpapers, Set JUserskills) {
		this.JUser = JUser;
		this.userinfoTruename = userinfoTruename;
		this.userinfoSex = userinfoSex;
		this.birthday = birthday;
		this.height = height;
		this.profession = profession;
		this.highestdegree = highestdegree;
		this.academicdegree = academicdegree;
		this.professional = professional;
		this.nationality = nationality;
		this.nation = nation;
		this.placeoforigin = placeoforigin;
		this.maritalstatus = maritalstatus;
		this.domicile = domicile;
		this.personnelfile = personnelfile;
		this.citynow = citynow;
		this.politicalstatus = politicalstatus;
		this.workingyears = workingyears;
		this.currentsalaryrange = currentsalaryrange;
		this.currentindustry = currentindustry;
		this.currentunit = currentunit;
		this.currentposition = currentposition;
		this.nowworking = nowworking;
		this.qq = qq;
		this.adress = adress;
		this.iswork = iswork;
		this.forwork = forwork;
		this.ptime = ptime;
		this.status = status;
		this.JUserworks = JUserworks;
		this.JUserforjobs = JUserforjobs;
		this.JUserhobbies = JUserhobbies;
		this.JUsereducations = JUsereducations;
		this.JUserevaluations = JUserevaluations;
		this.JUsercompanyjobs = JUsercompanyjobs;
		this.JUserpaies = JUserpaies;
		this.JUservalueses = JUservalueses;
		this.JUserpapers = JUserpapers;
		this.JUserskills = JUserskills;
	}

	// Property accessors

	public Integer getUserinfoId() {
		return this.userinfoId;
	}

	public void setUserinfoId(Integer userinfoId) {
		this.userinfoId = userinfoId;
	}

	public JUser getJUser() {
		return this.JUser;
	}

	public void setJUser(JUser JUser) {
		this.JUser = JUser;
	}

	public String getUserinfoTruename() {
		return this.userinfoTruename;
	}

	public void setUserinfoTruename(String userinfoTruename) {
		this.userinfoTruename = userinfoTruename;
	}

	public boolean getUserinfoSex() {
		return this.userinfoSex;
	}

	public void setUserinfoSex(boolean userinfoSex) {
		this.userinfoSex = userinfoSex;
	}

	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public float getHeight() {
		return this.height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	public String getProfession() {
		return this.profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getHighestdegree() {
		return this.highestdegree;
	}

	public void setHighestdegree(String highestdegree) {
		this.highestdegree = highestdegree;
	}

	public String getAcademicdegree() {
		return this.academicdegree;
	}

	public void setAcademicdegree(String academicdegree) {
		this.academicdegree = academicdegree;
	}

	public String getProfessional() {
		return this.professional;
	}

	public void setProfessional(String professional) {
		this.professional = professional;
	}

	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getPlaceoforigin() {
		return this.placeoforigin;
	}

	public void setPlaceoforigin(String placeoforigin) {
		this.placeoforigin = placeoforigin;
	}

	public short getMaritalstatus() {
		return this.maritalstatus;
	}

	public void setMaritalstatus(short maritalstatus) {
		this.maritalstatus = maritalstatus;
	}

	public String getDomicile() {
		return this.domicile;
	}

	public void setDomicile(String domicile) {
		this.domicile = domicile;
	}

	public String getPersonnelfile() {
		return this.personnelfile;
	}

	public void setPersonnelfile(String personnelfile) {
		this.personnelfile = personnelfile;
	}

	public String getCitynow() {
		return this.citynow;
	}

	public void setCitynow(String citynow) {
		this.citynow = citynow;
	}

	public String getPoliticalstatus() {
		return this.politicalstatus;
	}

	public void setPoliticalstatus(String politicalstatus) {
		this.politicalstatus = politicalstatus;
	}

	public Integer getWorkingyears() {
		return this.workingyears;
	}

	public void setWorkingyears(Integer workingyears) {
		this.workingyears = workingyears;
	}

	public String getCurrentsalaryrange() {
		return this.currentsalaryrange;
	}

	public void setCurrentsalaryrange(String currentsalaryrange) {
		this.currentsalaryrange = currentsalaryrange;
	}

	public String getCurrentindustry() {
		return this.currentindustry;
	}

	public void setCurrentindustry(String currentindustry) {
		this.currentindustry = currentindustry;
	}

	public String getCurrentunit() {
		return this.currentunit;
	}

	public void setCurrentunit(String currentunit) {
		this.currentunit = currentunit;
	}

	public String getCurrentposition() {
		return this.currentposition;
	}

	public void setCurrentposition(String currentposition) {
		this.currentposition = currentposition;
	}

	public String getNowworking() {
		return this.nowworking;
	}

	public void setNowworking(String nowworking) {
		this.nowworking = nowworking;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getAdress() {
		return this.adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public short getIswork() {
		return this.iswork;
	}

	public void setIswork(short iswork) {
		this.iswork = iswork;
	}

	public short getForwork() {
		return this.forwork;
	}

	public void setForwork(short forwork) {
		this.forwork = forwork;
	}

	public String getPtime() {
		return this.ptime;
	}

	public void setPtime(String ptime) {
		this.ptime = ptime;
	}

	public short getStatus() {
		return this.status;
	}

	public void setStatus(short status) {
		this.status = status;
	}

	public Set getJUserworks() {
		return this.JUserworks;
	}

	public void setJUserworks(Set JUserworks) {
		this.JUserworks = JUserworks;
	}

	public Set getJUserforjobs() {
		return this.JUserforjobs;
	}

	public void setJUserforjobs(Set JUserforjobs) {
		this.JUserforjobs = JUserforjobs;
	}

	public Set getJUserhobbies() {
		return this.JUserhobbies;
	}

	public void setJUserhobbies(Set JUserhobbies) {
		this.JUserhobbies = JUserhobbies;
	}

	public Set getJUsereducations() {
		return this.JUsereducations;
	}

	public void setJUsereducations(Set JUsereducations) {
		this.JUsereducations = JUsereducations;
	}

	public Set getJUserevaluations() {
		return this.JUserevaluations;
	}

	public void setJUserevaluations(Set JUserevaluations) {
		this.JUserevaluations = JUserevaluations;
	}

	public Set getJUsercompanyjobs() {
		return this.JUsercompanyjobs;
	}

	public void setJUsercompanyjobs(Set JUsercompanyjobs) {
		this.JUsercompanyjobs = JUsercompanyjobs;
	}

	public Set getJUserpaies() {
		return this.JUserpaies;
	}

	public void setJUserpaies(Set JUserpaies) {
		this.JUserpaies = JUserpaies;
	}

	public Set getJUservalueses() {
		return this.JUservalueses;
	}

	public void setJUservalueses(Set JUservalueses) {
		this.JUservalueses = JUservalueses;
	}

	public Set getJUserpapers() {
		return this.JUserpapers;
	}

	public void setJUserpapers(Set JUserpapers) {
		this.JUserpapers = JUserpapers;
	}

	public Set getJUserskills() {
		return this.JUserskills;
	}

	public void setJUserskills(Set JUserskills) {
		this.JUserskills = JUserskills;
	}

}