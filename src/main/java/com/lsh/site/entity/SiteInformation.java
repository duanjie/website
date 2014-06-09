/*
 * Project Name:LSHWebSite
 * File Name:SiteInformation.java
 * Package Name:com.lsh.site.entity
 * Date:2014年4月25日上午9:50:14
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.entity;

import javax.persistence.*;

/**
 * 
 * ClassName: SiteInformation <br/>
 * Description: 网站信息 
 * date: 2014年5月5日 下午2:29:05 <br/>
 * 
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Entity
@Table(name = "t_site_information")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_site_information_sequence")
public class SiteInformation extends BaseEntity {
	private static final long serialVersionUID = 1L;

	@Column(name = "company_address")
	private String companyAddress;

	@Column(name = "email_address")
	private String emailAddress;

	@Column(name = "logo_url")
	private String logoUrl;

	private String phone;

	private String title;

	public SiteInformation() {
	}


	public String getCompanyAddress() {
		return this.companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public String getEmailAddress() {
		return this.emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getLogoUrl() {
		return this.logoUrl;
	}

	public void setLogoUrl(String logoUrl) {
		this.logoUrl = logoUrl;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}