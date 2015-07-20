package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JFriends entity. @author MyEclipse Persistence Tools
 */

public class JFriends implements java.io.Serializable {

	// Fields
	@Expose
	private Integer friendsId;
	@Expose
	private JUser JUserByUserId;
	@Expose
	private JUser JUserByTouserId;
	@Expose
	private String ptime;
	@Expose
	private short status;
	@Expose
	private String friendsUsername;

	// Constructors

	/** default constructor */
	public JFriends() {
	}

	/** minimal constructor */
	public JFriends(JUser JUserByUserId, JUser JUserByTouserId, String ptime,
			short status) {
		this.JUserByUserId = JUserByUserId;
		this.JUserByTouserId = JUserByTouserId;
		this.ptime = ptime;
		this.status = status;
	}

	/** full constructor */
	public JFriends(JUser JUserByUserId, JUser JUserByTouserId, String ptime,
			short status, String friendsUsername) {
		this.JUserByUserId = JUserByUserId;
		this.JUserByTouserId = JUserByTouserId;
		this.ptime = ptime;
		this.status = status;
		this.friendsUsername = friendsUsername;
	}

	// Property accessors

	public Integer getFriendsId() {
		return this.friendsId;
	}

	public void setFriendsId(Integer friendsId) {
		this.friendsId = friendsId;
	}

	public JUser getJUserByUserId() {
		return this.JUserByUserId;
	}

	public void setJUserByUserId(JUser JUserByUserId) {
		this.JUserByUserId = JUserByUserId;
	}

	public JUser getJUserByTouserId() {
		return this.JUserByTouserId;
	}

	public void setJUserByTouserId(JUser JUserByTouserId) {
		this.JUserByTouserId = JUserByTouserId;
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

	public String getFriendsUsername() {
		return this.friendsUsername;
	}

	public void setFriendsUsername(String friendsUsername) {
		this.friendsUsername = friendsUsername;
	}

}