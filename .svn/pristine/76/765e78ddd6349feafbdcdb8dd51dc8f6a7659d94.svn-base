package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JCompanywelfare entity. @author MyEclipse Persistence Tools
 */

public class JCompanywelfare implements java.io.Serializable {

	// Fields

	@Expose
	private Integer companywelfareId;
	@Expose
	private JCompany JCompany;
	@Expose
	private JCompanywelfaretype JCompanywelfaretype;
	@Expose
	private String companywelfareText;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JCompanywelfare() {
	}

	/** minimal constructor */
	public JCompanywelfare(JCompany JCompany,
			JCompanywelfaretype JCompanywelfaretype, String ptime, short status) {
		this.JCompany = JCompany;
		this.JCompanywelfaretype = JCompanywelfaretype;
		this.ptime = ptime;
		this.status = status;
	}

	/** full constructor */
	public JCompanywelfare(JCompany JCompany,
			JCompanywelfaretype JCompanywelfaretype, String companywelfareText,
			String ptime, short status) {
		this.JCompany = JCompany;
		this.JCompanywelfaretype = JCompanywelfaretype;
		this.companywelfareText = companywelfareText;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getCompanywelfareId() {
		return this.companywelfareId;
	}

	public void setCompanywelfareId(Integer companywelfareId) {
		this.companywelfareId = companywelfareId;
	}

	public JCompany getJCompany() {
		return this.JCompany;
	}

	public void setJCompany(JCompany JCompany) {
		this.JCompany = JCompany;
	}

	public JCompanywelfaretype getJCompanywelfaretype() {
		return this.JCompanywelfaretype;
	}

	public void setJCompanywelfaretype(JCompanywelfaretype JCompanywelfaretype) {
		this.JCompanywelfaretype = JCompanywelfaretype;
	}

	public String getCompanywelfareText() {
		return this.companywelfareText;
	}

	public void setCompanywelfareText(String companywelfareText) {
		this.companywelfareText = companywelfareText;
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