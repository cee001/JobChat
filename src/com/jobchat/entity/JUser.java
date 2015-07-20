package com.jobchat.entity;

import java.util.HashSet;
import java.util.Set;

import com.google.gson.annotations.Expose;

/**
 * JUser entity. @author MyEclipse Persistence Tools
 */

public class JUser implements java.io.Serializable {

	// Fields

	@Expose
	private Integer userId;
	@Expose
	private String userPhone;
	@Expose
	private String userPassword;
	@Expose
	private String userNikename;
	@Expose
	private String userTime;
	@Expose
	private Integer userStatus;
	@Expose
	private String userImgface;
	@Expose
	private short userType;
	@Expose
	private String userRefreshtime;
	@Expose
	private Integer userOutid;
	@Expose
	private String token;
	@Expose
	private String la;
	@Expose
	private String lo;
	private Set JMessageses = new HashSet(0);
	private Set JCompanies = new HashSet(0);
	private Set JCommentses = new HashSet(0);
	private Set JFriendsesForUserId = new HashSet(0);
	private Set JCollectionses = new HashSet(0);
	private Set JUserinfos = new HashSet(0);
	private Set JFriendsesForTouserId = new HashSet(0);

	// Constructors

	/** default constructor */
	public JUser() {
	}

	/** minimal constructor */
	public JUser(String userPhone, String userPassword, String userTime,
			Integer userStatus, short userType, String userRefreshtime,
			Integer userOutid) {
		this.userPhone = userPhone;
		this.userPassword = userPassword;
		this.userTime = userTime;
		this.userStatus = userStatus;
		this.userType = userType;
		this.userRefreshtime = userRefreshtime;
		this.userOutid = userOutid;
	}

	/** full constructor */
	public JUser(String userPhone, String userPassword, String userNikename,
			String userTime, Integer userStatus, String userImgface,
			short userType, String userRefreshtime, Integer userOutid,
			String la, String lo, Set JMessageses, Set JCompanies,
			Set JCommentses, Set JFriendsesForUserId, Set JCollectionses,
			Set JUserinfos, Set JFriendsesForTouserId) {
		this.userPhone = userPhone;
		this.userPassword = userPassword;
		this.userNikename = userNikename;
		this.userTime = userTime;
		this.userStatus = userStatus;
		this.userImgface = userImgface;
		this.userType = userType;
		this.userRefreshtime = userRefreshtime;
		this.userOutid = userOutid;
		this.la = la;
		this.lo = lo;
		this.JMessageses = JMessageses;
		this.JCompanies = JCompanies;
		this.JCommentses = JCommentses;
		this.JFriendsesForUserId = JFriendsesForUserId;
		this.JCollectionses = JCollectionses;
		this.JUserinfos = JUserinfos;
		this.JFriendsesForTouserId = JFriendsesForTouserId;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserPhone() {
		return this.userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserNikename() {
		return this.userNikename;
	}

	public void setUserNikename(String userNikename) {
		this.userNikename = userNikename;
	}

	public String getUserTime() {
		return this.userTime;
	}

	public void setUserTime(String userTime) {
		this.userTime = userTime;
	}

	public Integer getUserStatus() {
		return this.userStatus;
	}

	public void setUserStatus(Integer userStatus) {
		this.userStatus = userStatus;
	}

	public String getUserImgface() {
		return this.userImgface;
	}

	public void setUserImgface(String userImgface) {
		this.userImgface = userImgface;
	}

	public short getUserType() {
		return this.userType;
	}

	public void setUserType(short userType) {
		this.userType = userType;
	}

	public String getUserRefreshtime() {
		return this.userRefreshtime;
	}

	public void setUserRefreshtime(String userRefreshtime) {
		this.userRefreshtime = userRefreshtime;
	}

	public Integer getUserOutid() {
		return this.userOutid;
	}

	public void setUserOutid(Integer userOutid) {
		this.userOutid = userOutid;
	}
	
	

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getLa() {
		return this.la;
	}

	public void setLa(String la) {
		this.la = la;
	}

	public String getLo() {
		return this.lo;
	}

	public void setLo(String lo) {
		this.lo = lo;
	}

	public Set getJMessageses() {
		return this.JMessageses;
	}

	public void setJMessageses(Set JMessageses) {
		this.JMessageses = JMessageses;
	}

	public Set getJCompanies() {
		return this.JCompanies;
	}

	public void setJCompanies(Set JCompanies) {
		this.JCompanies = JCompanies;
	}

	public Set getJCommentses() {
		return this.JCommentses;
	}

	public void setJCommentses(Set JCommentses) {
		this.JCommentses = JCommentses;
	}

	public Set getJFriendsesForUserId() {
		return this.JFriendsesForUserId;
	}

	public void setJFriendsesForUserId(Set JFriendsesForUserId) {
		this.JFriendsesForUserId = JFriendsesForUserId;
	}

	public Set getJCollectionses() {
		return this.JCollectionses;
	}

	public void setJCollectionses(Set JCollectionses) {
		this.JCollectionses = JCollectionses;
	}

	public Set getJUserinfos() {
		return this.JUserinfos;
	}

	public void setJUserinfos(Set JUserinfos) {
		this.JUserinfos = JUserinfos;
	}

	public Set getJFriendsesForTouserId() {
		return this.JFriendsesForTouserId;
	}

	public void setJFriendsesForTouserId(Set JFriendsesForTouserId) {
		this.JFriendsesForTouserId = JFriendsesForTouserId;
	}

}