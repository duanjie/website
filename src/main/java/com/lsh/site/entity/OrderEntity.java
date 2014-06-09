/*
 * Project Name:LSHWebSite
 * File Name:OrderEntity.java
 * Package Name:com.lsh.site.entity
 * Date:2014年4月25日上午9:49:42
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.entity;

import javax.persistence.Column;
import javax.validation.constraints.Min;


import org.apache.commons.lang.builder.CompareToBuilder;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Store;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * ClassName: OrderEntity <br/>
 * Description: 类描述
 * date: 2014年4月25日 上午9:49:42 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public abstract class OrderEntity extends BaseEntity implements Comparable<OrderEntity> {

	private static final long serialVersionUID = 5995013015967525827L;

	/** "排序"属性名称 */
	public static final String ORDER_PROPERTY_NAME = "order";

	/** 排序 */
	private Integer order;

	/**
	 * 获取排序
	 * 
	 * @return 排序
	 */
	@JsonProperty
	@Field(store = Store.YES, index = Index.UN_TOKENIZED)
	@Min(0)
	@Column(name = "orders")
	public Integer getOrder() {
		return order;
	}

	/**
	 * 设置排序
	 * 
	 * @param order
	 *            排序
	 */
	public void setOrder(Integer order) {
		this.order = order;
	}

	/**
	 * 实现compareTo方法
	 * 
	 * @param orderEntity
	 *            排序对象
	 * @return 比较结果
	 */
	public int compareTo(OrderEntity orderEntity) {
		return new CompareToBuilder().append(getOrder(), orderEntity.getOrder()).append(getId(), orderEntity.getId()).toComparison();
	}

}