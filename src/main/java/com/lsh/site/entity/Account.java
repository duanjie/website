/*
 * Project Name:LSHWebSite
 * File Name:Account.java
 * Package Name:com.lsh.site.entity
 * Date:2014年4月25日上午9:50:14
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.entity;

import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * 
 * ClassName: Account <br/>
 * Description: 后台登陆帐号 
 * date: 2014年5月5日 上午11:22:41 <br/>
 * 
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Entity
@Table(name = "t_account")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_account_sequence")
public class Account extends BaseEntity {
	private static final long serialVersionUID = 1L;

	private String password;

	private short status;

	private String username;

	public Account() {
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public short getStatus() {
		return this.status;
	}

	public void setStatus(short status) {
		this.status = status;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}