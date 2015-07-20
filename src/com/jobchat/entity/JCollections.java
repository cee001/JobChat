package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JCollections entity. @author MyEclipse Persistence Tools
 */

public class JCollections implements java.io.Serializable {

	// Fields
	@Expose
	private Integer collectionsId;
	@Expose
	private JUser JUser;
	@Expose
	private JMessages JMessages;
	@Expose
	private String collectionsTime;
	@Expose
	private boolean collectionsStatus;

	// Constructors

	/** default constructor */
	public JCollections() {
	}

	/** full constructor */
	public JCollections(JUser JUser, JMessages JMessages,
			String collectionsTime, boolean collectionsStatus) {
		this.JUser = JUser;
		this.JMessages = JMessages;
		this.collectionsTime = collectionsTime;
		this.collectionsStatus = collectionsStatus;
	}

	// Property accessors

	public Integer getCollectionsId() {
		return this.collectionsId;
	}

	public void setCollectionsId(Integer collectionsId) {
		this.collectionsId = collectionsId;
	}

	public JUser getJUser() {
		return this.JUser;
	}

	public void setJUser(JUser JUser) {
		this.JUser = JUser;
	}

	public JMessages getJMessages() {
		return this.JMessages;
	}

	public void setJMessages(JMessages JMessages) {
		this.JMessages = JMessages;
	}

	public String getCollectionsTime() {
		return this.collectionsTime;
	}

	public void setCollectionsTime(String collectionsTime) {
		this.collectionsTime = collectionsTime;
	}

	public boolean getCollectionsStatus() {
		return this.collectionsStatus;
	}

	public void setCollectionsStatus(boolean collectionsStatus) {
		this.collectionsStatus = collectionsStatus;
	}

}