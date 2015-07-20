package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JUserpaper entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class JUserpaper implements java.io.Serializable {

	// Fields
	@Expose
	private Integer userpaperId;
	@Expose
	private JUserinfo JUserinfo;
	@Expose
	private JUserpapertype JUserpapertype;
	@Expose
	private String idcard;
	@Expose
	private String ptime;
	@Expose
	private short status;
	@Expose
	private String paperimg;

	// Constructors

	/** default constructor */
	public JUserpaper() {
	}

	/** minimal constructor */
	public JUserpaper(JUserinfo JUserinfo, JUserpapertype JUserpapertype) {
		this.JUserinfo = JUserinfo;
		this.JUserpapertype = JUserpapertype;
	}

	/** full constructor */
	public JUserpaper(JUserinfo JUserinfo, JUserpapertype JUserpapertype,
			String idcard, String ptime, short status, String paperimg) {
		this.JUserinfo = JUserinfo;
		this.JUserpapertype = JUserpapertype;
		this.idcard = idcard;
		this.ptime = ptime;
		this.status = status;
		this.paperimg = paperimg;
	}

	// Property accessors

	public Integer getUserpaperId() {
		return this.userpaperId;
	}

	public void setUserpaperId(Integer userpaperId) {
		this.userpaperId = userpaperId;
	}

	public JUserinfo getJUserinfo() {
		return this.JUserinfo;
	}

	public void setJUserinfo(JUserinfo JUserinfo) {
		this.JUserinfo = JUserinfo;
	}

	public JUserpapertype getJUserpapertype() {
		return this.JUserpapertype;
	}

	public void setJUserpapertype(JUserpapertype JUserpapertype) {
		this.JUserpapertype = JUserpapertype;
	}

	public String getIdcard() {
		return this.idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
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

	public String getPaperimg() {
		return this.paperimg;
	}

	public void setPaperimg(String paperimg) {
		this.paperimg = paperimg;
	}

}