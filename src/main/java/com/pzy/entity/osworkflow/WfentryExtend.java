package com.pzy.entity.osworkflow;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.pzy.entity.AdminUser;
@Entity
@Table(name = "os_wfentry_extend")
public class WfentryExtend {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	/**创建人*/
	@ManyToOne(fetch = FetchType.EAGER)
	private AdminUser creater;
	
	/**文件名称*/
	private String title;
	
	
	/**紧急程度*/
	private Integer degree;
	
	/**序号*/
	private String sn;
	
	@ManyToOne(fetch = FetchType.EAGER) 
	private Wfentry wfentry;
	
	private  Date createDate;
	
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Wfentry getWfentry() {
		return wfentry;
	}
	public void setWfentry(Wfentry wfentry) {
		this.wfentry = wfentry;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public AdminUser getCreater() {
		return creater==null?new AdminUser():creater;
	}
	public void setCreater(AdminUser creater) {
		this.creater = creater;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getDegree() {
		return degree;
	}
	public void setDegree(Integer degree) {
		this.degree = degree;
	}
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
}
