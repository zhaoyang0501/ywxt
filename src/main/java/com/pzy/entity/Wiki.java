package com.pzy.entity;

/***
 * 零部件
 *
 */
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "t_wiki")
public class Wiki {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private String name;
	
	private String remark;
	
	private String type;
	
	private String creater;
	
	private Date creteDate;

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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCreater() {
		return creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	public Date getCreteDate() {
		return creteDate;
	}

	public void setCreteDate(Date creteDate) {
		this.creteDate = creteDate;
	}
}
