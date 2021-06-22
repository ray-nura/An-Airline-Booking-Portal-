package com.flyaway.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {

	
	public Admin() {
		super();
	}
	
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	int id;
	
	@Column(name="user_name")
	String user_name;
	
	@Column(name="password")
	String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Admin( String user_name, String password) {
		super();
		
		this.user_name = user_name;
		this.password = password;
	}

	@Override
	public String toString() {
		return String.format("Admin [id=%s, user_name=%s, password=%s]", id, user_name, password);
	}
	
}
