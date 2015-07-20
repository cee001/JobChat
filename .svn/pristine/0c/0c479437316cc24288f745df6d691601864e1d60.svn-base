package com.jobchat.entity;

import java.util.HashSet;
import java.util.Set;

import com.google.gson.annotations.Expose;

/**
 * JUserpapertype entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class JUserpapertype implements java.io.Serializable {

	// Fields
	@Expose
	private Integer papertypeId;
	@Expose
	private String typename;
	@Expose
	private boolean status;
	@Expose
	private String ptime;
	@SuppressWarnings("rawtypes")
	private Set JUserpapers = new HashSet(0);

	// Constructors

	/** default constructor */
	public JUserpapertype() {
	}

	/** full constructor */
	public JUserpapertype(String typename, boolean status, String ptime,
			@SuppressWarnings("rawtypes") Set JUserpapers) {
		this.typename = typename;
		this.status = status;
		this.ptime = ptime;
		this.JUserpapers = JUserpapers;
	}

	// Property accessors

	public Integer getPapertypeId() {
		return this.papertypeId;
	}

	public void setPapertypeId(Integer papertypeId) {
		this.papertypeId = papertypeId;
	}

	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public boolean getStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getPtime() {
		return this.ptime;
	}

	public void setPtime(String ptime) {
		this.ptime = ptime;
	}

	@SuppressWarnings("rawtypes")
	public Set getJUserpapers() {
		return this.JUserpapers;
	}

	@SuppressWarnings("rawtypes")
	public void setJUserpapers(Set JUserpapers) {
		this.JUserpapers = JUserpapers;
	}

}