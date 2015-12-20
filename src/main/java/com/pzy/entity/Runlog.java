package com.pzy.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/***
 *工单
 *
 */
@Entity
@Table(name = "t_runlog")
public class Runlog  {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
	private String remark;
	
	private String state;
	private  String device;
	@ManyToOne(fetch = FetchType.EAGER)
	private AdminUser creater;
	private String logstate;
	
	private Date createDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDevice() {
		return device;
	}

	public void setDevice(String device) {
		this.device = device;
	}

	public AdminUser getCreater() {
		return creater;
	}

	public void setCreater(AdminUser creater) {
		this.creater = creater;
	}

	public String getLogstate() {
		return logstate;
	}

	public void setLogstate(String logstate) {
		this.logstate = logstate;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}
