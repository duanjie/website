/*
 * Project Name:LSHWebSite
 * File Name:SiteMarket.java
 * Package Name:com.lsh.site.entity
 * Date:2014年5月9日上午9:25:00
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

/**
 * ClassName: SiteMarket <br/>
 * Description: 网站营销
 * date: 2014年5月9日 上午9:25:00 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Entity
@Table(name = "t_site_market")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_site_market_sequence")
public class SiteMarket extends BaseEntity{

	private static final long serialVersionUID = -7314882979077622296L;

	@Length(min = 2, max = 45)
	@Column(nullable = false,length = 45)
	private String banner;
	
	@Length(min = 2, max = 45)
	@Column(nullable = false,length = 45,name="item_first_image")
	private String itemFirstImage;
	
	@Length(min = 2, max = 30)
	@Column(nullable = false,length = 30,name="item_first_title")
	private String itemFirstTitle;
	
	@Lob
	@Column(nullable = false, name="item_first_content")
	private String itemFirstContent;
	
	
	@Length(min = 2, max = 45)
	@Column(nullable = false,length = 45,name="item_second_image")
	private String itemSecondImage;
	
	@Length(min = 2, max = 30)
	@Column(nullable = false,length = 30,name="item_second_title")
	private String itemSecondTitle;
	
	@Lob
	@Column(nullable = false, name="item_second_content")
	private String itemSecondContent;

	/**
	 * banner.
	 *
	 * @return  the banner
	 */
	public String getBanner() {
		return banner;
	}

	/**
	 * banner.
	 *
	 * @param   banner    the banner to set
	 */
	public void setBanner(String banner) {
		this.banner = banner;
	}

	/**
	 * itemFirstImage.
	 *
	 * @return  the itemFirstImage
	 */
	public String getItemFirstImage() {
		return itemFirstImage;
	}

	/**
	 * itemFirstImage.
	 *
	 * @param   itemFirstImage    the itemFirstImage to set
	 */
	public void setItemFirstImage(String itemFirstImage) {
		this.itemFirstImage = itemFirstImage;
	}

	/**
	 * itemFirstTitle.
	 *
	 * @return  the itemFirstTitle
	 */
	public String getItemFirstTitle() {
		return itemFirstTitle;
	}

	/**
	 * itemFirstTitle.
	 *
	 * @param   itemFirstTitle    the itemFirstTitle to set
	 */
	public void setItemFirstTitle(String itemFirstTitle) {
		this.itemFirstTitle = itemFirstTitle;
	}

	/**
	 * itemFirstContent.
	 *
	 * @return  the itemFirstContent
	 */
	public String getItemFirstContent() {
		return itemFirstContent;
	}

	/**
	 * itemFirstContent.
	 *
	 * @param   itemFirstContent    the itemFirstContent to set
	 */
	public void setItemFirstContent(String itemFirstContent) {
		this.itemFirstContent = itemFirstContent;
	}

	/**
	 * itemSecondImage.
	 *
	 * @return  the itemSecondImage
	 */
	public String getItemSecondImage() {
		return itemSecondImage;
	}

	/**
	 * itemSecondImage.
	 *
	 * @param   itemSecondImage    the itemSecondImage to set
	 */
	public void setItemSecondImage(String itemSecondImage) {
		this.itemSecondImage = itemSecondImage;
	}

	/**
	 * itemSecondTitle.
	 *
	 * @return  the itemSecondTitle
	 */
	public String getItemSecondTitle() {
		return itemSecondTitle;
	}

	/**
	 * itemSecondTitle.
	 *
	 * @param   itemSecondTitle    the itemSecondTitle to set
	 */
	public void setItemSecondTitle(String itemSecondTitle) {
		this.itemSecondTitle = itemSecondTitle;
	}

	/**
	 * itemSecondContent.
	 *
	 * @return  the itemSecondContent
	 */
	public String getItemSecondContent() {
		return itemSecondContent;
	}

	/**
	 * itemSecondContent.
	 *
	 * @param   itemSecondContent    the itemSecondContent to set
	 */
	public void setItemSecondContent(String itemSecondContent) {
		this.itemSecondContent = itemSecondContent;
	}

	
	
	
}
