/*
 * Project Name:LSHWebSite
 * File Name:Test.java
 * Package Name:com.lsh.site.entity
 * Date:2014年4月25日上午10:51:49
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PreRemove;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;


import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;


/**
 * ClassName: Test <br/>
 * Description: Test date: 2014年4月25日 上午10:51:49 <br/>
 * 
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Entity
@Table(name = "t_test")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_test_sequence")
public class Test extends BaseEntity{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -3044030708799684716L;
	
	
	@NotEmpty(groups = Save.class)
	@Pattern(regexp = "^[0-9a-z_A-Z\\u4e00-\\u9fa5]+$")
	@Length(min = 2, max = 20)
	@Column(nullable = false, updatable = false, unique = true, length = 100)
	private String name;

	/**
	 * name.
	 * 
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * name.
	 * 
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 删除前处理
	 */
	@PreRemove
	public void preRemove() {

	}
}
