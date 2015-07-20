package com.jobchat.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Roleinfo entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Roleinfo implements java.io.Serializable {

	// Fields

	private Integer roleId;
	private String roleName;
	@SuppressWarnings("rawtypes")
	private Set powerses = new HashSet(0);
	@SuppressWarnings("rawtypes")
	private Set admins = new HashSet(0);

	// Constructors

	/** default constructor */
	public Roleinfo() {
	}

	/** full constructor */
	public Roleinfo(String roleName, Set powerses, Set admins) {
		this.roleName = roleName;
		this.powerses = powerses;
		this.admins = admins;
	}

	// Property accessors

	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Set getPowerses() {
		return this.powerses;
	}

	public void setPowerses(Set powerses) {
		this.powerses = powerses;
	}

	public Set getAdmins() {
		return this.admins;
	}

	public void setAdmins(Set admins) {
		this.admins = admins;
	}

}