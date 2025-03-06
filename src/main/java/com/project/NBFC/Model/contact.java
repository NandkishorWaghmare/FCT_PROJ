package com.project.NBFC.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class contact {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long cid;
	private String name;
	private String email;
	private String message;
	public Long getCid() {
		return cid;
	}
	public void setCid(Long cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "contact [cid=" + cid + ", name=" + name + ", email=" + email + ", message=" + message + "]";
	}
	
	
	
	
	
	

}
