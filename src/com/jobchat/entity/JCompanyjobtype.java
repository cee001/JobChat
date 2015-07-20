package com.jobchat.entity;

import java.util.HashSet;
import java.util.Set;

import com.google.gson.annotations.Expose;

/**
 * JCompanyjobtype entity. @author MyEclipse Persistence Tools
 */

public class JCompanyjobtype implements java.io.Serializable {

	// Fields
	@Expose
	private Integer companyjobtypeId;
	@Expose
	private String companyjobtypeName;
	@Expose
	private Integer companyjobtypeType;
	@Expose
	private String ptime;
	@Expose
	private short status;
	private Set JCompanyjobs = new HashSet(0);

	// Constructors

	/** default constructor */
	public JCompanyjobtype() {
	}

	/** full constructor */
	public JCompanyjobtype(String companyjobtypeName,
			Integer companyjobtypeType, String ptime, short status,
			Set JCompanyjobs) {
		this.companyjobtypeName = companyjobtypeName;
		this.companyjobtypeType = companyjobtypeType;
		this.ptime = ptime;
		this.status = status;
		this.JCompanyjobs = JCompanyjobs;
	}

	// Property accessors

	public Integer getCompanyjobtypeId() {
		return this.companyjobtypeId;
	}

	public void setCompanyjobtypeId(Integer companyjobtypeId) {
		this.companyjobtypeId = companyjobtypeId;
	}

	public String getCompanyjobtypeName() {
		return this.companyjobtypeName;
	}

	public void setCompanyjobtypeName(String companyjobtypeName) {
		this.companyjobtypeName = companyjobtypeName;
	}

	public Integer getCompanyjobtypeType() {
		return this.companyjobtypeType;
	}

	public void setCompanyjobtypeType(Integer companyjobtypeType) {
		this.companyjobtypeType = companyjobtypeType;
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

	public Set getJCompanyjobs() {
		return this.JCompanyjobs;
	}

	public void setJCompanyjobs(Set JCompanyjobs) {
		this.JCompanyjobs = JCompanyjobs;
	}

}