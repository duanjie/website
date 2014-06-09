/*
 * Project Name:LSHWebSite
 * File Name:Article.java
 * Package Name:com.lsh.site.entity
 * Date:2014年5月21日上午9:38:22
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

/**
 * ClassName: Article <br/>
 * Description: 文章
 * date: 2014年5月21日 上午9:38:22 <br/>
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 */
@Entity
@Table(name="t_article")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_article_sequence")
public class Article  extends BaseEntity{

	
	private static final long serialVersionUID = 2400447420740943058L;


	public static final String IS_HTML_PAGE_PROPERTY_NAME = "isHtmlPage";
	public static final String TITLE_HTML_PAGE_PROPERTY_NAME = "title";
	
	
	
	private Menu menu;                                            //菜单

	
	private  String title;                                         //文章标题
	
	
	private  String briefTitle;                                      //文章简洁标题
	
	
	private  String author;                                       //文章作者
	
	
	private  String content;
	
	
	private String titleColor;                                       //标题颜色
	
	
	private Long topLevel;                                        //置顶级别
	

	private String isHtmlPage;                                   //是否是HTML页面。0：不是，1：是
	
	@Length(min = 2, max = 90)
	@Column(nullable = false, length = 100)
	public String getTitle() {
		return title;
	}
	
	
	public void setTitle(String title) {
		this.title = title;
	}

	@Length(min = 0, max = 10)
	@Column(length = 10)
	public String getAuthor() {
		return author;
	}
	
	
	public void setAuthor(String author) {
		this.author = author;
	}
	
	@Column(nullable = false)
	public String getContent() {
		return content;
	}
	
	
	
	public void setContent(String content) {
		this.content = content;
	}
	
	@Length(min = 0, max = 30)
	@Column(name = "brief_title", length = 30)
	public String getBriefTitle() {
		return briefTitle;
	}
	
	
	public void setBriefTitle(String briefTitle) {
		this.briefTitle = briefTitle;
	}
	
	@Column(name="title_color")
	public String getTitleColor() {
		return titleColor;
	}
	
	
	public void setTitleColor(String titleColor) {
		this.titleColor = titleColor;
	}
	
	@Column(name="top_level")
	public Long getTopLevel() {
		return topLevel;
	}
	

	@Column(name="is_html_page")
	public String getIsHtmlPage() {
		return isHtmlPage;
	}

	public void setTopLevel(Long topLevel) {
		this.topLevel = topLevel;
	}
	
	
	
	@OneToOne
	@JoinColumn(name = "menu_id", updatable = false)
	public Menu getMenu() {
		return menu;
	}
	
	
	
	public void setMenu(Menu menu) {
		this.menu = menu;
	}
	
	

	public void setIsHtmlPage(String isHtmlPage) {
		this.isHtmlPage = isHtmlPage;
	}



}
