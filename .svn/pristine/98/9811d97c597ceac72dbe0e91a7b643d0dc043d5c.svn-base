/*
 * Project Name:LSHWebSite
 * File Name:Menu.java
 * Package Name:com.lsh.site.entity
 * Date:2014年4月25日上午9:50:14
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.entity;

import javax.persistence.*;

import java.util.List;

/**
 * 
 * ClassName: Menu <br/>
 * Description: 菜单 Entity 
 * date: 2014年5月5日 上午11:25:51 <br/>
 * 
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Entity
@Table(name = "t_menu")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_menu_sequence")
public class Menu extends BaseEntity {

	private static final long serialVersionUID = 1L;

	private String name;

	 
	private Menu parent;

	
	private short type;       // 0：非底层菜单，1：文章,2：相册,3：招聘

	private String url;
	
	private List<Menu> childMenus; 
	
	public Menu() {
	}
	
	public Menu(Long id){setId(id);}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}


	@ManyToOne  
    @JoinColumn(name="parent_id") 
	public Menu getParent() {
		return parent;
	}

	public void setParent(Menu parent) {
		this.parent = parent;
	}

	public short getType() {
		return this.type;
	}

	public void setType(short type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
 
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="parent")
	public List<Menu> getChildMenus() {
		return childMenus;
	}

	public void setChildMenus(List<Menu> childMenus) {
		this.childMenus = childMenus;
	}
	
}