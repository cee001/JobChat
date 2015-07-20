package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JCompanylicense entity. @author MyEclipse Persistence Tools
 */

public class JCompanylicense implements java.io.Serializable {

	// Fields
	@Expose
	private Integer companylicenseId;
	@Expose
	private JCompany JCompany;
    @Expose
	private JCompanylicensetype JCompanylicensetype;
	@Expose
	private String ptime;
	@Expose
	private short status;
	@Expose
	private String companylicenseText;

	// Constructors

	/** default constructor */
	public JCompanylicense() {
	}

	/** minimal constructor */
	public JCompanylicense(JCompany JCompany,
			JCompanylicensetype JCompanylicensetype, String ptime, short status) {
		this.JCompany = JCompany;
		this.JCompanylicensetype = JCompanylicensetype;
		this.ptime = ptime;
		this.status = status;
	}

	/** full constructor */
	public JCompanylicense(JCompany JCompany,
			JCompanylicensetype JCompanylicensetype, String ptime,
			short status, String companylicenseText) {
		this.JCompany = JCompany;
		this.JCompanylicensetype = JCompanylicensetype;
		this.ptime = ptime;
		this.status = status;
		this.companylicenseText = companylicenseText;
	}

	// Property accessors

	public Integer getCompanylicenseId() {
		return this.companylicenseId;
	}

	public void setCompanylicenseId(Integer companylicenseId) {
		this.companylicenseId = companylicenseId;
	}

	public JCompany getJCompany() {
		return this.JCompany;
	}

	public void setJCompany(JCompany JCompany) {
		this.JCompany = JCompany;
	}

	public JCompanylicensetype getJCompanylicensetype() {
		return this.JCompanylicensetype;
	}

	public void setJCompanylicensetype(JCompanylicensetype JCompanylicensetype) {
		this.JCompanylicensetype = JCompanylicensetype;
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

	public String getCompanylicenseText() {
		return this.companylicenseText;
	}

	public void setCompanylicenseText(String companylicenseText) {
		this.companylicenseText = companylicenseText;
	}

}