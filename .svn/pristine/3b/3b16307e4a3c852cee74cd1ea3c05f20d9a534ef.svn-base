/*
 * Project Name:LSHWebSite
 * File Name:AboutUs.java
 * Package Name:com.lsh.site.entity
 * Date:2014年5月9日上午9:10:03
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
 * ClassName: AboutUs <br/>
 * Description: 关于我们
 * date: 2014年5月9日 上午9:10:03 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Entity
@Table(name = "t_about_us")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_about_us_sequence")
public class AboutUs extends BaseEntity{

	private static final long serialVersionUID = -618695660293032459L;

	
	@Length(min = 2, max = 45)
	@Column(nullable = false, length = 45)
	private String image;
	
	@Lob
	private String content;

	/**
	 * image.
	 *
	 * @return  the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * image.
	 *
	 * @param   image    the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}

	/**
	 * content.
	 *
	 * @return  the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * content.
	 *
	 * @param   content    the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
