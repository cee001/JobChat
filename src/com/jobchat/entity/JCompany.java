package com.jobchat.entity;

import java.util.HashSet;
import java.util.Set;

import com.google.gson.annotations.Expose;

/**
 * JCompany entity. @author MyEclipse Persistence Tools
 */

public class JCompany implements java.io.Serializable {

	// Fields
	@Expose
	private Integer companyId;
	@Expose
	private JUser JUser;
	@Expose
	private String truename;
	@Expose
	private String city;
	@Expose
	private String address;
	@Expose
	private Integer registeredcapital;
	@Expose
	private String legalperson;
	@Expose
	private String leadingofficial;
	@Expose
	private String industrytype;
	@Expose
	private String unitproperty;
	@Expose
	private String staffsize;
	@Expose
	private String salesscale;
	@Expose
	private String setuptime;
	@Expose
	private String mainbusiness;
	@Expose
	private String brandname;
	@Expose
	private String mainproducts;
	@Expose
	private String majorclient;
	@Expose
	private String patent;
	@Expose
	private String majorshareholder;
	@Expose
	private String ptime;
	@Expose
	private short status;
	private Set JCompanylicenses = new HashSet(0);
	private Set JCompanycultures = new HashSet(0);
	private Set JCompnaybusinesses = new HashSet(0);
	private Set JCompanywelfares = new HashSet(0);
	private Set JCompanyenvironments = new HashSet(0);
	private Set JCompanyjobs = new HashSet(0);
	private Set JCompanyusers = new HashSet(0);

	// Constructors

	/** default constructor */
	public JCompany() {
	}

	/** minimal constructor */
	public JCompany(JUser JUser, String truename) {
		this.JUser = JUser;
		this.truename = truename;
	}

	/** full constructor */
	public JCompany(JUser JUser, String truename, String city, String address,
			Integer registeredcapital, String legalperson,
			String leadingofficial, String industrytype, String unitproperty,
			String staffsize, String salesscale, String setuptime,
			String mainbusiness, String brandname, String mainproducts,
			String majorclient, String patent, String majorshareholder,
			String ptime, short status, Set JCompanylicenses,
			Set JCompanycultures, Set JCompnaybusinesses, Set JCompanywelfares,
			Set JCompanyenvironments, Set JCompanyjobs, Set JCompanyusers) {
		this.JUser = JUser;
		this.truename = truename;
		this.city = city;
		this.address = address;
		this.registeredcapital = registeredcapital;
		this.legalperson = legalperson;
		this.leadingofficial = leadingofficial;
		this.industrytype = industrytype;
		this.unitproperty = unitproperty;
		this.staffsize = staffsize;
		this.salesscale = salesscale;
		this.setuptime = setuptime;
		this.mainbusiness = mainbusiness;
		this.brandname = brandname;
		this.mainproducts = mainproducts;
		this.majorclient = majorclient;
		this.patent = patent;
		this.majorshareholder = majorshareholder;
		this.ptime = ptime;
		this.status = status;
		this.JCompanylicenses = JCompanylicenses;
		this.JCompanycultures = JCompanycultures;
		this.JCompnaybusinesses = JCompnaybusinesses;
		this.JCompanywelfares = JCompanywelfares;
		this.JCompanyenvironments = JCompanyenvironments;
		this.JCompanyjobs = JCompanyjobs;
		this.JCompanyusers = JCompanyusers;
	}

	// Property accessors

	public Integer getCompanyId() {
		return this.companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public JUser getJUser() {
		return this.JUser;
	}

	public void setJUser(JUser JUser) {
		this.JUser = JUser;
	}

	public String getTruename() {
		return this.truename;
	}

	public void setTruename(String truename) {
		this.truename = truename;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getRegisteredcapital() {
		return this.registeredcapital;
	}

	public void setRegisteredcapital(Integer registeredcapital) {
		this.registeredcapital = registeredcapital;
	}

	public String getLegalperson() {
		return this.legalperson;
	}

	public void setLegalperson(String legalperson) {
		this.legalperson = legalperson;
	}

	public String getLeadingofficial() {
		return this.leadingofficial;
	}

	public void setLeadingofficial(String leadingofficial) {
		this.leadingofficial = leadingofficial;
	}

	public String getIndustrytype() {
		return this.industrytype;
	}

	public void setIndustrytype(String industrytype) {
		this.industrytype = industrytype;
	}

	public String getUnitproperty() {
		return this.unitproperty;
	}

	public void setUnitproperty(String unitproperty) {
		this.unitproperty = unitproperty;
	}

	public String getStaffsize() {
		return this.staffsize;
	}

	public void setStaffsize(String staffsize) {
		this.staffsize = staffsize;
	}

	public String getSalesscale() {
		return this.salesscale;
	}

	public void setSalesscale(String salesscale) {
		this.salesscale = salesscale;
	}

	public String getSetuptime() {
		return this.setuptime;
	}

	public void setSetuptime(String setuptime) {
		this.setuptime = setuptime;
	}

	public String getMainbusiness() {
		return this.mainbusiness;
	}

	public void setMainbusiness(String mainbusiness) {
		this.mainbusiness = mainbusiness;
	}

	public String getBrandname() {
		return this.brandname;
	}

	public void setBrandname(String brandname) {
		this.brandname = brandname;
	}

	public String getMainproducts() {
		return this.mainproducts;
	}

	public void setMainproducts(String mainproducts) {
		this.mainproducts = mainproducts;
	}

	public String getMajorclient() {
		return this.majorclient;
	}

	public void setMajorclient(String majorclient) {
		this.majorclient = majorclient;
	}

	public String getPatent() {
		return this.patent;
	}

	public void setPatent(String patent) {
		this.patent = patent;
	}

	public String getMajorshareholder() {
		return this.majorshareholder;
	}

	public void setMajorshareholder(String majorshareholder) {
		this.majorshareholder = majorshareholder;
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

	public Set getJCompanylicenses() {
		return this.JCompanylicenses;
	}

	public void setJCompanylicenses(Set JCompanylicenses) {
		this.JCompanylicenses = JCompanylicenses;
	}

	public Set getJCompanycultures() {
		return this.JCompanycultures;
	}

	public void setJCompanycultures(Set JCompanycultures) {
		this.JCompanycultures = JCompanycultures;
	}

	public Set getJCompnaybusinesses() {
		return this.JCompnaybusinesses;
	}

	public void setJCompnaybusinesses(Set JCompnaybusinesses) {
		this.JCompnaybusinesses = JCompnaybusinesses;
	}

	public Set getJCompanywelfares() {
		return this.JCompanywelfares;
	}

	public void setJCompanywelfares(Set JCompanywelfares) {
		this.JCompanywelfares = JCompanywelfares;
	}

	public Set getJCompanyenvironments() {
		return this.JCompanyenvironments;
	}

	public void setJCompanyenvironments(Set JCompanyenvironments) {
		this.JCompanyenvironments = JCompanyenvironments;
	}

	public Set getJCompanyjobs() {
		return this.JCompanyjobs;
	}

	public void setJCompanyjobs(Set JCompanyjobs) {
		this.JCompanyjobs = JCompanyjobs;
	}

	public Set getJCompanyusers() {
		return this.JCompanyusers;
	}

	public void setJCompanyusers(Set JCompanyusers) {
		this.JCompanyusers = JCompanyusers;
	}

}