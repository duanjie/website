/*
 * Project Name:LSHWebSite
 * File Name:AccountDaoImpl.java
 * Package Name:com.lsh.site.dao.impl
 * Date:2014年5月5日下午2:37:48
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.dao.impl;

import javax.persistence.FlushModeType;
import javax.persistence.NoResultException;


import org.springframework.stereotype.Repository;

import com.lsh.site.dao.AccountDao;
import com.lsh.site.entity.Account;

/**
 * ClassName: AccountDaoImpl <br/>
 * Description: 帐号 Dao 实现
 * date: 2014年5月5日 下午2:37:48 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Repository("accountDaoImpl")
public class AccountDaoImpl extends BaseDaoImpl<Account, Long> implements AccountDao {

	public Account findByUsername(String username,Integer status) {
		if (username == null) {
			return null;
		}
		try {
			String jpql = "select account from Account account where lower(account.username) = lower(:username) and status =:status";
			return entityManager.createQuery(jpql, Account.class).setFlushMode(FlushModeType.COMMIT).setParameter("username", username).setParameter("status", status.shortValue()).getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

}
