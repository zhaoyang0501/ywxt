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
 *维修日志
 *
 */
@Entity
@Table(name = "t_fixlog")
public class Fixlog  {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
	private String remark;
	
	private String categorystate;
	@ManyToOne(fetch = FetchType.EAGER)
	private  Category category;
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

	

	public String getCategorystate() {
		return categorystate;
	}

	public void setCategorystate(String categorystate) {
		this.categorystate = categorystate;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
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
