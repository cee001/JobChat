package com.jobchat.entity;

import java.util.HashSet;
import java.util.Set;

import com.google.gson.annotations.Expose;

/**
 * JUserhobbytype entity. @author MyEclipse Persistence Tools
 */

public class JUserhobbytype implements java.io.Serializable {

	// Fields
	@Expose
	private Integer userhobbytypeId;
	@Expose
	private String name;
	private String ptime;
	@Expose
	private short status;
	private Set JUserhobbies = new HashSet(0);

	// Constructors

	/** default constructor */
	public JUserhobbytype() {
	}

	/** minimal constructor */
	public JUserhobbytype(String name, String ptime, short status) {
		this.name = name;
		this.ptime = ptime;
		this.status = status;
	}

	/** full constructor */
	public JUserhobbytype(String name, String ptime, short status,
			Set JUserhobbies) {
		this.name = name;
		this.ptime = ptime;
		this.status = status;
		this.JUserhobbies = JUserhobbies;
	}

	// Property accessors

	public Integer getUserhobbytypeId() {
		return this.userhobbytypeId;
	}

	public void setUserhobbytypeId(Integer userhobbytypeId) {
		this.userhobbytypeId = userhobbytypeId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Set getJUserhobbies() {
		return this.JUserhobbies;
	}

	public void setJUserhobbies(Set JUserhobbies) {
		this.JUserhobbies = JUserhobbies;
	}

}