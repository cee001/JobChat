package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JUserhobby entity. @author MyEclipse Persistence Tools
 */

public class JUserhobby implements java.io.Serializable {

	// Fields
	@Expose
	private Integer userhobbyId;
	@Expose
	private JUserinfo JUserinfo;
	@Expose
	private JUserhobbytype JUserhobbytype;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JUserhobby() {
	}

	/** full constructor */
	public JUserhobby(JUserinfo JUserinfo, JUserhobbytype JUserhobbytype,
			String ptime, short status) {
		this.JUserinfo = JUserinfo;
		this.JUserhobbytype = JUserhobbytype;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getUserhobbyId() {
		return this.userhobbyId;
	}

	public void setUserhobbyId(Integer userhobbyId) {
		this.userhobbyId = userhobbyId;
	}

	public JUserinfo getJUserinfo() {
		return this.JUserinfo;
	}

	public void setJUserinfo(JUserinfo JUserinfo) {
		this.JUserinfo = JUserinfo;
	}

	public JUserhobbytype getJUserhobbytype() {
		return this.JUserhobbytype;
	}

	public void setJUserhobbytype(JUserhobbytype JUserhobbytype) {
		this.JUserhobbytype = JUserhobbytype;
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