/*
 * Project Name:LSHWebSite
 * File Name:Notice.java
 * Package Name:com.lsh.site.entity
 * Date:2014年5月29日上午9:15:41
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;





/**
 * ClassName: Notice <br/>
 * Description: 类描述
 * date: 2014年5月29日 上午9:15:41 <br/>
 *
 * @author GaoFeiFeng
 * @version 1.0
 * @since JDK 1.6
 */
@Entity
@Table(name = "t_notice")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_notice_sequence")
public class Notice extends BaseEntity{

	/**
	 * serialVersionUID:TODO(用一句话描述这个变量表示什么).
	 */
	private static final long serialVersionUID = 1L;
	
	private String title;   //标题
	
	private Date begin_time; //开始时间
	
	private Date end_time; //结束时间
	
	private String content; //公告内容

	/**
	 * title.
	 *
	 * @return  the title
	 */
	@NotNull
	@Length(max = 70)
	@Column(name = "title" ,nullable = false)
	public String getTitle() {
		return title;
	}

	/**
	 * title.
	 *
	 * @param   title    the title to set
	 */
	
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * begin_time.
	 *
	 * @return  the begin_time
	 */
	@NotNull
	@Column(name = "begin_time")
	public Date getBegin_time() {
		return begin_time;
	}

	/**
	 * begin_time.
	 *
	 * @param   begin_time    the begin_time to set
	 */
	public void setBegin_time(Date begin_time) {
		this.begin_time = begin_time;
	}

	/**
	 * end_tiem.
	 *
	 * @return  the end_tiem
	 */
	@NotNull
	@Column(name = "end_time")
	public Date getEnd_time() {
		return end_time;
	}

	/**
	 * end_tiem.
	 *
	 * @param   end_tiem    the end_tiem to set
	 */
	public void setEnd_time(Date end_time) {
		this.end_time = end_time;
	}

	/**
	 * content.
	 *
	 * @return  the content
	 */
	@NotNull
	@Column(name = "content")
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
