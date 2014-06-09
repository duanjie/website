/*
 * Project Name:LSHWebSite
 * File Name:AccountServiceImpl.java
 * Package Name:com.lsh.site.service.impl
 * Date:2014年5月5日下午2:46:52
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.AccountDao;
import com.lsh.site.entity.Account;
import com.lsh.site.service.AccountService;

/**
 * ClassName: AccountServiceImpl <br/>
 * Description: 帐号 Service 实现
 * date: 2014年5月5日 下午2:46:52 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Service("accountServiceImpl")
public class AccountServiceImpl extends BaseServiceImpl<Account, Long> implements AccountService{

	@Resource(name = "accountDaoImpl")
	private AccountDao accountDao;
	
	@Resource(name = "accountDaoImpl")
	public void setBaseDao(AccountDao accountDao) {
		super.setBaseDao(accountDao);
	}

	public Account findByUsername(String username,Integer status) {
		return accountDao.findByUsername(username,status);
	}
}
