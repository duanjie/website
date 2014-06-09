package com.lsh.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lsh.site.dao.LeaveMessageDao;
import com.lsh.site.entity.LeaveMessage;
import com.lsh.site.service.LeaveMessageService;

@Service("leaveMessageServiceImpl")
public class LeaveMessageServiceImpl extends BaseServiceImpl<LeaveMessage, Long> implements LeaveMessageService{
	
	
	@Resource(name="leaveMessageDaoImpl")
	public void setBaseDao(LeaveMessageDao leaveMessageDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(leaveMessageDao);
	}
	 
}
