package com.pzy.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.pzy.entity.osworkflow.Wfentry;

@Entity
@Table(name = "t_fixlog")
public class Bug {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
	private String remark;
	
	private String state;
	private  String device;
	@ManyToOne(fetch = FetchType.EAGER)
	private AdminUser creater;
	private String bugstate;
	private String type;
	@ManyToOne(fetch = FetchType.EAGER)
	private  Category category;
	@ManyToOne(fetch = FetchType.EAGER)
	private Wfentry wfentry;
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
	public String getBugstate() {
		return bugstate;
	}
	public void setBugstate(String logstate) {
		this.bugstate = logstate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	private Date createDate;
}
