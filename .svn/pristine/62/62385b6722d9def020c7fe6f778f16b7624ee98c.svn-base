/*
 * Project Name:LSHWebSite
 * File Name:Recruitment.java
 * Package Name:com.lsh.site.entity
 * Date:2014年5月23日下午2:15:15
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

/**
 * ClassName: Recruitment <br/>
 * Description: 招聘
 * date: 2014年5月23日 下午2:15:15 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Entity
@Table(name = "t_recruitment")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_recruitment_sequence")
public class Recruitment extends BaseEntity{

	private static final long serialVersionUID = 4495557281812718496L;

	
	private Menu menu;                         //菜单                  
	
	
	private String title;                      //岗位名称
	
	
	private Date deadline;                     //截至日期 ,空表示：永久有效
	
	
	private String experience;                 //工作经验
	
	
	private String workplace;                 //工作地点
	
	
	private Short nature;                     //工作性质,0:全职,1:兼职
	
	
	private Short hasmanage;                 //管理经验,0:不要求,1要求
	
	
	private String nums;                     //招聘人数
	
	
	private String category;                 //职位类别
	
	
	private Short topLevel;                  //固顶级别，0不指定，最高6 
	
	
	private String description;              //职位描述

	/**
	 * menu.
	 *
	 * @return  the menu
	 */
	@OneToOne
	@JoinColumn(name = "menu_id")
	public Menu getMenu() {
		return menu;
	}

	/**
	 * menu.
	 *
	 * @param   menu    the menu to set
	 */
	public void setMenu(Menu menu) {
		this.menu = menu;
	}

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
	 * deadline.
	 *
	 * @return  the deadline
	 */
	@Column(name = "deadline")
	public Date getDeadline() {
		return deadline;
	}

	/**
	 * deadline.
	 *
	 * @param   deadline    the deadline to set
	 */
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	/**
	 * experience.
	 *
	 * @return  the experience
	 */
	@NotNull
	@Length(max = 20)
	@Column(name = "experience")
	public String getExperience() {
		return experience;
	}

	/**
	 * experience.
	 *
	 * @param   experience    the experience to set
	 */
	public void setExperience(String experience) {
		this.experience = experience;
	}

	/**
	 * workplace.
	 *
	 * @return  the workplace
	 */
	@NotNull
	@Length(max = 20)
	@Column(name = "workplace")
	public String getWorkplace() {
		return workplace;
	}

	/**
	 * workplace.
	 *
	 * @param   workplace    the workplace to set
	 */
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}

	/**
	 * nature.
	 *
	 * @return  the nature
	 */
	@NotNull
	@Column(name = "nature")
	public Short getNature() {
		return nature;
	}

	/**
	 * nature.
	 *
	 * @param   nature    the nature to set
	 */
	public void setNature(Short nature) {
		this.nature = nature;
	}

	/**
	 * hasmanage.
	 *
	 * @return  the hasmanage
	 */
	@NotNull
	@Column(name = "hasmanage")
	public Short getHasmanage() {
		return hasmanage;
	}

	/**
	 * hasmanage.
	 *
	 * @param   hasmanage    the hasmanage to set
	 */
	public void setHasmanage(Short hasmanage) {
		this.hasmanage = hasmanage;
	}

	/**
	 * nums.
	 *
	 * @return  the nums
	 */
	@NotNull
	@Length(max = 20)
	@Column(name = "nums")
	public String getNums() {
		return nums;
	}

	/**
	 * nums.
	 *
	 * @param   nums    the nums to set
	 */
	public void setNums(String nums) {
		this.nums = nums;
	}

	/**
	 * category.
	 *
	 * @return  the category
	 */
	@NotNull
	@Length(max = 20)
	@Column(name = "category")
	public String getCategory() {
		return category;
	}

	/**
	 * category.
	 *
	 * @param   category    the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}

	/**
	 * topLevel.
	 *
	 * @return  the topLevel
	 */
	@NotNull
	@Column(name = "top_level")
	public Short getTopLevel() {
		return topLevel;
	}

	/**
	 * topLevel.
	 *
	 * @param   topLevel    the topLevel to set
	 */
	public void setTopLevel(Short topLevel) {
		this.topLevel = topLevel;
	}

	/**
	 * description.
	 *
	 * @return  the description
	 */
	@NotNull
	@Length(max=500,min=10)
	@Column(name = "description")
	public String getDescription() {
		return description;
	}

	/**
	 * description.
	 *
	 * @param   description    the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
