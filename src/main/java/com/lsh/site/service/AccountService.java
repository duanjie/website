/*
 * Project Name:LSHWebSite
 * File Name:AccountService.java
 * Package Name:com.lsh.site.service
 * Date:2014年5月5日下午2:45:58
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.service;

import com.lsh.site.entity.Account;

/**
 * ClassName: AccountService <br/>
 * Description: 帐号 Service
 * date: 2014年5月5日 下午2:45:58 <br/>
 *
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
public interface AccountService extends BaseService<Account, Long>{

	public Account findByUsername(String username,Integer status);
}
