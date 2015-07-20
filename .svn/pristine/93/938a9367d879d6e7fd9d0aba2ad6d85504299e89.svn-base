package com.jobchat.entity;

import java.util.HashSet;
import java.util.Set;

import com.google.gson.annotations.Expose;

/**
 * JCompanylicensetype entity. @author MyEclipse Persistence Tools
 */

public class JCompanylicensetype implements java.io.Serializable {

	// Fields
	@Expose
	private Integer companylicensetypeId;
	@Expose
	private String companylicensetypeName;
	@Expose
	private String companylicensetypeTime;
	@Expose
	private short companylicensetypeStatus;
	private Set JCompanylicenses = new HashSet(0);

	// Constructors

	/** default constructor */
	public JCompanylicensetype() {
	}

	/** minimal constructor */
	public JCompanylicensetype(String companylicensetypeTime,
			short companylicensetypeStatus) {
		this.companylicensetypeTime = companylicensetypeTime;
		this.companylicensetypeStatus = companylicensetypeStatus;
	}

	/** full constructor */
	public JCompanylicensetype(String companylicensetypeName,
			String companylicensetypeTime, short companylicensetypeStatus,
			Set JCompanylicenses) {
		this.companylicensetypeName = companylicensetypeName;
		this.companylicensetypeTime = companylicensetypeTime;
		this.companylicensetypeStatus = companylicensetypeStatus;
		this.JCompanylicenses = JCompanylicenses;
	}

	// Property accessors

	public Integer getCompanylicensetypeId() {
		return this.companylicensetypeId;
	}

	public void setCompanylicensetypeId(Integer companylicensetypeId) {
		this.companylicensetypeId = companylicensetypeId;
	}

	public String getCompanylicensetypeName() {
		return this.companylicensetypeName;
	}

	public void setCompanylicensetypeName(String companylicensetypeName) {
		this.companylicensetypeName = companylicensetypeName;
	}

	public String getCompanylicensetypeTime() {
		return this.companylicensetypeTime;
	}

	public void setCompanylicensetypeTime(String companylicensetypeTime) {
		this.companylicensetypeTime = companylicensetypeTime;
	}

	public short getCompanylicensetypeStatus() {
		return this.companylicensetypeStatus;
	}

	public void setCompanylicensetypeStatus(short companylicensetypeStatus) {
		this.companylicensetypeStatus = companylicensetypeStatus;
	}

	public Set getJCompanylicenses() {
		return this.JCompanylicenses;
	}

	public void setJCompanylicenses(Set JCompanylicenses) {
		this.JCompanylicenses = JCompanylicenses;
	}

}