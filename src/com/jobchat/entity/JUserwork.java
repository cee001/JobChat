package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JUserwork entity. @author MyEclipse Persistence Tools
 */

public class JUserwork implements java.io.Serializable {

	// Fields

	@Expose
	private Integer userworkId;
	@Expose
	private JUserinfo JUserinfo;
	@Expose
	private String time;
	@Expose
	private String unitname;
	@Expose
	private String primarydepartment;
	@Expose
	private String twolevels;
	@Expose
	private String threelevels;
	@Expose
	private String post;
	@Expose
	private String job;
	@Expose
	private String witness;
	@Expose
	private String witnessphone;
	@Expose
	private String averagemonthlysalaryrange;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JUserwork() {
	}

	/** minimal constructor */
	public JUserwork(JUserinfo JUserinfo) {
		this.JUserinfo = JUserinfo;
	}

	/** full constructor */
	public JUserwork(JUserinfo JUserinfo, String time, String unitname,
			String primarydepartment, String twolevels, String threelevels,
			String post, String job, String witness, String witnessphone,
			String averagemonthlysalaryrange, String ptime, short status) {
		this.JUserinfo = JUserinfo;
		this.time = time;
		this.unitname = unitname;
		this.primarydepartment = primarydepartment;
		this.twolevels = twolevels;
		this.threelevels = threelevels;
		this.post = post;
		this.job = job;
		this.witness = witness;
		this.witnessphone = witnessphone;
		this.averagemonthlysalaryrange = averagemonthlysalaryrange;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getUserworkId() {
		return this.userworkId;
	}

	public void setUserworkId(Integer userworkId) {
		this.userworkId = userworkId;
	}

	public JUserinfo getJUserinfo() {
		return this.JUserinfo;
	}

	public void setJUserinfo(JUserinfo JUserinfo) {
		this.JUserinfo = JUserinfo;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getUnitname() {
		return this.unitname;
	}

	public void setUnitname(String unitname) {
		this.unitname = unitname;
	}

	public String getPrimarydepartment() {
		return this.primarydepartment;
	}

	public void setPrimarydepartment(String primarydepartment) {
		this.primarydepartment = primarydepartment;
	}

	public String getTwolevels() {
		return this.twolevels;
	}

	public void setTwolevels(String twolevels) {
		this.twolevels = twolevels;
	}

	public String getThreelevels() {
		return this.threelevels;
	}

	public void setThreelevels(String threelevels) {
		this.threelevels = threelevels;
	}

	public String getPost() {
		return this.post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getWitness() {
		return this.witness;
	}

	public void setWitness(String witness) {
		this.witness = witness;
	}

	public String getWitnessphone() {
		return this.witnessphone;
	}

	public void setWitnessphone(String witnessphone) {
		this.witnessphone = witnessphone;
	}

	public String getAveragemonthlysalaryrange() {
		return this.averagemonthlysalaryrange;
	}

	public void setAveragemonthlysalaryrange(String averagemonthlysalaryrange) {
		this.averagemonthlysalaryrange = averagemonthlysalaryrange;
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