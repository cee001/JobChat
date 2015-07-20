package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JUserpay entity. @author MyEclipse Persistence Tools
 */

public class JUserpay implements java.io.Serializable {

	// Fields
	@Expose
	private Integer userpayId;
	@Expose
	private JUserinfo JUserinfo;
	@Expose
	private String alipay;
	@Expose
	private String wetchatpay;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JUserpay() {
	}

	/** minimal constructor */
	public JUserpay(JUserinfo JUserinfo, String ptime, short status) {
		this.JUserinfo = JUserinfo;
		this.ptime = ptime;
		this.status = status;
	}

	/** full constructor */
	public JUserpay(JUserinfo JUserinfo, String alipay, String wetchatpay,
			String ptime, short status) {
		this.JUserinfo = JUserinfo;
		this.alipay = alipay;
		this.wetchatpay = wetchatpay;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getUserpayId() {
		return this.userpayId;
	}

	public void setUserpayId(Integer userpayId) {
		this.userpayId = userpayId;
	}

	public JUserinfo getJUserinfo() {
		return this.JUserinfo;
	}

	public void setJUserinfo(JUserinfo JUserinfo) {
		this.JUserinfo = JUserinfo;
	}

	public String getAlipay() {
		return this.alipay;
	}

	public void setAlipay(String alipay) {
		this.alipay = alipay;
	}

	public String getWetchatpay() {
		return this.wetchatpay;
	}

	public void setWetchatpay(String wetchatpay) {
		this.wetchatpay = wetchatpay;
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