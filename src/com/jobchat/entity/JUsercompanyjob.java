package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JUsercompanyjob entity. @author MyEclipse Persistence Tools
 */

public class JUsercompanyjob implements java.io.Serializable {

	// Fields
	@Expose	
	private Integer usercompanyjobId;
	@Expose
	private JUserinfo JUserinfo;
	@Expose
	private JCompanyjob JCompanyjob;
	@Expose
	private float point;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JUsercompanyjob() {
	}

	/** full constructor */
	public JUsercompanyjob(JUserinfo JUserinfo, JCompanyjob JCompanyjob,
			float point, String ptime, short status) {
		this.JUserinfo = JUserinfo;
		this.JCompanyjob = JCompanyjob;
		this.point = point;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getUsercompanyjobId() {
		return this.usercompanyjobId;
	}

	public void setUsercompanyjobId(Integer usercompanyjobId) {
		this.usercompanyjobId = usercompanyjobId;
	}

	public JUserinfo getJUserinfo() {
		return this.JUserinfo;
	}

	public void setJUserinfo(JUserinfo JUserinfo) {
		this.JUserinfo = JUserinfo;
	}

	public JCompanyjob getJCompanyjob() {
		return this.JCompanyjob;
	}

	public void setJCompanyjob(JCompanyjob JCompanyjob) {
		this.JCompanyjob = JCompanyjob;
	}

	public float getPoint() {
		return this.point;
	}

	public void setPoint(float point) {
		this.point = point;
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