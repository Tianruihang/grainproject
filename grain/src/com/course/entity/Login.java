package com.course.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="login")
public class Login {
	private Integer loginId;
	private String LoginName;
	private String Password;
	private String Root;
	
	private Set<Supply> supply;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getLoginId() {
		return loginId;
	}
	public void setLoginId(Integer loginId) {
		this.loginId = loginId;
	}
	public String getLoginName() {
		return LoginName;
	}
	
	public void setLoginName(String loginName) {
		this.LoginName = loginName;
	}
	
	public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) {
		this.Password = Password;
	}
	public String getRoot() {
		return Root;
	}
	public void setRoot(String Root) {
		this.Root = Root;
	}
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Supply> getSupply() {
		return supply;
	}
	public void setSupply(Set<Supply> supply) {
		this.supply = supply;
	}
	
	
}
