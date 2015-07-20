package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JCompanyculture entity. @author MyEclipse Persistence Tools
 */

public class JCompanyculture implements java.io.Serializable {

	// Fields
	@Expose
	private Integer companycultureId;
	@Expose
	private JCompany JCompany;
	@Expose
	private String corevalues;
	@Expose
	private String vision;
	@Expose
	private String managementidea;
	@Expose
	private String talentidea;
	@Expose
	private String culturalactivitypicture;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JCompanyculture() {
	}

	/** minimal constructor */
	public JCompanyculture(JCompany JCompany) {
		this.JCompany = JCompany;
	}

	/** full constructor */
	public JCompanyculture(JCompany JCompany, String corevalues, String vision,
			String managementidea, String talentidea,
			String culturalactivitypicture, String ptime, short status) {
		this.JCompany = JCompany;
		this.corevalues = corevalues;
		this.vision = vision;
		this.managementidea = managementidea;
		this.talentidea = talentidea;
		this.culturalactivitypicture = culturalactivitypicture;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getCompanycultureId() {
		return this.companycultureId;
	}

	public void setCompanycultureId(Integer companycultureId) {
		this.companycultureId = companycultureId;
	}

	public JCompany getJCompany() {
		return this.JCompany;
	}

	public void setJCompany(JCompany JCompany) {
		this.JCompany = JCompany;
	}

	public String getCorevalues() {
		return this.corevalues;
	}

	public void setCorevalues(String corevalues) {
		this.corevalues = corevalues;
	}

	public String getVision() {
		return this.vision;
	}

	public void setVision(String vision) {
		this.vision = vision;
	}

	public String getManagementidea() {
		return this.managementidea;
	}

	public void setManagementidea(String managementidea) {
		this.managementidea = managementidea;
	}

	public String getTalentidea() {
		return this.talentidea;
	}

	public void setTalentidea(String talentidea) {
		this.talentidea = talentidea;
	}

	public String getCulturalactivitypicture() {
		return this.culturalactivitypicture;
	}

	public void setCulturalactivitypicture(String culturalactivitypicture) {
		this.culturalactivitypicture = culturalactivitypicture;
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

}