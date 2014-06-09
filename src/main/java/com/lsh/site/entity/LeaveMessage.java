package com.lsh.site.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import org.hibernate.validator.constraints.Length;


/**
 * 
 * ClassName: LeaveMessage <br/>
 * Description: 留言反馈
 *
 * @author YangEnHua
 * @version 1.0
 * @since JDK 1.6
 *
 */

@Entity
@Table(name="t_leave_message")
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "t_leave_message_sequence")
public class LeaveMessage extends BaseEntity {

	private static final long serialVersionUID = 1L;
	
	private int leaveMessageType ; //1：普通，2：投诉
	
    private String title;            //标题
	
	private String content ;         //留言内容
	
	private String reply ;           //回复
	
	
	private String email ;           //邮箱
	
	private String phone ;           //电话
	
	private String qq ;              //qq
	
	private int checked ;           //审核，0：未审核，1：审核
	
	private int recommend ;         //推荐，0：未推荐，1：推荐 
	
	@Length(min=2,max=11)
	@Column(name="leave_message_type",length=11)
	public int getLeaveMessageType() {
		return leaveMessageType;
	}
	
	@Length(min=2,max=75)
	public String getTitle() {
		return title;
	}
	
	@Length(min=2,max=255)
	public String getContent() {
		return content;
	}

	@Length(min=0,max=255)
	public String getReply() {
		return reply;
	}

	@Length(min=0,max=50)
	public String getEmail() {
		return email;
	}

	@Length(min=0,max=50)
	public String getPhone() {
		return phone;
	}
	
	@Length(min=0,max=15)
	public String getQq() {
		return qq;
	}
	
	@Length(min=2,max=6)
	public int getChecked() {
		return checked;
	}

	@Length(min=2,max=6)
	public int getRecommend() {
		return recommend;
	}

	public void setLeaveMessageType(int leaveMessageType) {
		this.leaveMessageType = leaveMessageType;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public void setChecked(int checked) {
		this.checked = checked;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	

}
