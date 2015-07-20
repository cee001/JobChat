package com.jobchat.entity;

import com.google.gson.annotations.Expose;

/**
 * JUserevaluation entity. @author MyEclipse Persistence Tools
 */

public class JUserevaluation implements java.io.Serializable {

	// Fields

	@Expose
	private Integer userevaluationId;
	@Expose
	private JUserinfo JUserinfo;
	@Expose
	private String character;
	@Expose
	private String occupationaltendency;
	@Expose
	private String managementcapabilityassessment;
	@Expose
	private String psychologicalqualityassessment;
	@Expose
	private String communicationskillsassessment;
	@Expose
	private String ptime;
	@Expose
	private short status;

	// Constructors

	/** default constructor */
	public JUserevaluation() {
	}

	/** minimal constructor */
	public JUserevaluation(JUserinfo JUserinfo, String ptime, short status) {
		this.JUserinfo = JUserinfo;
		this.ptime = ptime;
		this.status = status;
	}

	/** full constructor */
	public JUserevaluation(JUserinfo JUserinfo, String character,
			String occupationaltendency, String managementcapabilityassessment,
			String psychologicalqualityassessment,
			String communicationskillsassessment, String ptime, short status) {
		this.JUserinfo = JUserinfo;
		this.character = character;
		this.occupationaltendency = occupationaltendency;
		this.managementcapabilityassessment = managementcapabilityassessment;
		this.psychologicalqualityassessment = psychologicalqualityassessment;
		this.communicationskillsassessment = communicationskillsassessment;
		this.ptime = ptime;
		this.status = status;
	}

	// Property accessors

	public Integer getUserevaluationId() {
		return this.userevaluationId;
	}

	public void setUserevaluationId(Integer userevaluationId) {
		this.userevaluationId = userevaluationId;
	}

	public JUserinfo getJUserinfo() {
		return this.JUserinfo;
	}

	public void setJUserinfo(JUserinfo JUserinfo) {
		this.JUserinfo = JUserinfo;
	}

	public String getCharacter() {
		return this.character;
	}

	public void setCharacter(String character) {
		this.character = character;
	}

	public String getOccupationaltendency() {
		return this.occupationaltendency;
	}

	public void setOccupationaltendency(String occupationaltendency) {
		this.occupationaltendency = occupationaltendency;
	}

	public String getManagementcapabilityassessment() {
		return this.managementcapabilityassessment;
	}

	public void setManagementcapabilityassessment(
			String managementcapabilityassessment) {
		this.managementcapabilityassessment = managementcapabilityassessment;
	}

	public String getPsychologicalqualityassessment() {
		return this.psychologicalqualityassessment;
	}

	public void setPsychologicalqualityassessment(
			String psychologicalqualityassessment) {
		this.psychologicalqualityassessment = psychologicalqualityassessment;
	}

	public String getCommunicationskillsassessment() {
		return this.communicationskillsassessment;
	}

	public void setCommunicationskillsassessment(
			String communicationskillsassessment) {
		this.communicationskillsassessment = communicationskillsassessment;
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