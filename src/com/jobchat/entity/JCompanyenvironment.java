package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JCompanyenvironment entity. @author MyEclipse Persistence Tools
 */

public class JCompanyenvironment implements java.io.Serializable {

	// Fields
	@Expose
	private Integer companyenvironmentId;
	@Expose
	private JCompany JCompany;
	@Expose
	private String companyenvironmentWork;
	@Expose
	private String companyenvironmentLiving;
	@Expose
	private String companyenvironmentPlay;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JCompanyenvironment() {
	}

	/** minimal constructor */
	public JCompanyenvironment(JCompany JCompany, String ptime, short status) {
		this.JCompany = JCompany;
		this.ptime = ptime;
		this.status = status;
	}

	/** full constructor */
	public JCompanyenvironment(JCompany JCompany,
			String companyenvironmentWork, String companyenvironmentLiving,
			String companyenvironmentPlay, String ptime, short status) {
		this.JCompany = JCompany;
		this.companyenvironmentWork = companyenvironmentWork;
		this.companyenvironmentLiving = companyenvironmentLiving;
		this.companyenvironmentPlay = companyenvironmentPlay;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getCompanyenvironmentId() {
		return this.companyenvironmentId;
	}

	public void setCompanyenvironmentId(Integer companyenvironmentId) {
		this.companyenvironmentId = companyenvironmentId;
	}

	public JCompany getJCompany() {
		return this.JCompany;
	}

	public void setJCompany(JCompany JCompany) {
		this.JCompany = JCompany;
	}

	public String getCompanyenvironmentWork() {
		return this.companyenvironmentWork;
	}

	public void setCompanyenvironmentWork(String companyenvironmentWork) {
		this.companyenvironmentWork = companyenvironmentWork;
	}

	public String getCompanyenvironmentLiving() {
		return this.companyenvironmentLiving;
	}

	public void setCompanyenvironmentLiving(String companyenvironmentLiving) {
		this.companyenvironmentLiving = companyenvironmentLiving;
	}

	public String getCompanyenvironmentPlay() {
		return this.companyenvironmentPlay;
	}

	public void setCompanyenvironmentPlay(String companyenvironmentPlay) {
		this.companyenvironmentPlay = companyenvironmentPlay;
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