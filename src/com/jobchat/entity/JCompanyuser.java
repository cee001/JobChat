package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JCompanyuser entity. @author MyEclipse Persistence Tools
 */

public class JCompanyuser implements java.io.Serializable {

	// Fields
	@Expose
	private Integer companyuserId;
	@Expose
	private JCompany JCompany;
	@Expose
	private String username;
	@Expose
	private String userphone;
	@Expose
	private String userphone2;
	@Expose
	private String userqq;
	@Expose
	private String useraddress;
	@Expose
	private String userphone3;
	@Expose
	private String userphone4;
	@Expose
	private String userphone5;
	@Expose
	private String userphone6;
	@Expose
	private String url;
	@Expose
	private String weichat;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JCompanyuser() {
	}

	/** minimal constructor */
	public JCompanyuser(JCompany JCompany) {
		this.JCompany = JCompany;
	}

	/** full constructor */
	public JCompanyuser(JCompany JCompany, String username, String userphone,
			String userphone2, String userqq, String useraddress,
			String userphone3, String userphone4, String userphone5,
			String userphone6, String url, String weichat, String ptime,
			short status) {
		this.JCompany = JCompany;
		this.username = username;
		this.userphone = userphone;
		this.userphone2 = userphone2;
		this.userqq = userqq;
		this.useraddress = useraddress;
		this.userphone3 = userphone3;
		this.userphone4 = userphone4;
		this.userphone5 = userphone5;
		this.userphone6 = userphone6;
		this.url = url;
		this.weichat = weichat;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getCompanyuserId() {
		return this.companyuserId;
	}

	public void setCompanyuserId(Integer companyuserId) {
		this.companyuserId = companyuserId;
	}

	public JCompany getJCompany() {
		return this.JCompany;
	}

	public void setJCompany(JCompany JCompany) {
		this.JCompany = JCompany;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserphone() {
		return this.userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUserphone2() {
		return this.userphone2;
	}

	public void setUserphone2(String userphone2) {
		this.userphone2 = userphone2;
	}

	public String getUserqq() {
		return this.userqq;
	}

	public void setUserqq(String userqq) {
		this.userqq = userqq;
	}

	public String getUseraddress() {
		return this.useraddress;
	}

	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}

	public String getUserphone3() {
		return this.userphone3;
	}

	public void setUserphone3(String userphone3) {
		this.userphone3 = userphone3;
	}

	public String getUserphone4() {
		return this.userphone4;
	}

	public void setUserphone4(String userphone4) {
		this.userphone4 = userphone4;
	}

	public String getUserphone5() {
		return this.userphone5;
	}

	public void setUserphone5(String userphone5) {
		this.userphone5 = userphone5;
	}

	public String getUserphone6() {
		return this.userphone6;
	}

	public void setUserphone6(String userphone6) {
		this.userphone6 = userphone6;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getWeichat() {
		return this.weichat;
	}

	public void setWeichat(String weichat) {
		this.weichat = weichat;
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