package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JUserskill entity. @author MyEclipse Persistence Tools
 */

public class JUserskill implements java.io.Serializable {

	// Fields
	@Expose
	private Integer skillId;
	@Expose
	private JUserskilltype JUserskilltype;
	@Expose
	private JUserinfo JUserinfo;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JUserskill() {
	}

	/** full constructor */
	public JUserskill(JUserskilltype JUserskilltype, JUserinfo JUserinfo,
			String ptime, short status) {
		this.JUserskilltype = JUserskilltype;
		this.JUserinfo = JUserinfo;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getSkillId() {
		return this.skillId;
	}

	public void setSkillId(Integer skillId) {
		this.skillId = skillId;
	}

	public JUserskilltype getJUserskilltype() {
		return this.JUserskilltype;
	}

	public void setJUserskilltype(JUserskilltype JUserskilltype) {
		this.JUserskilltype = JUserskilltype;
	}

	public JUserinfo getJUserinfo() {
		return this.JUserinfo;
	}

	public void setJUserinfo(JUserinfo JUserinfo) {
		this.JUserinfo = JUserinfo;
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