package com.pzy.action.admin;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pzy.entity.AdminUser;
import com.pzy.entity.Runlog;
import com.pzy.service.RunlogService;

/***
 * 
 * @author 263608237@qq.com
 *
 */
@Namespace("/admin/runlog")
@ParentPackage("json-default")
public class RunlogAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer sEcho = 1;
	private Integer iDisplayStart = 0;
	private Integer iDisplayLength = 10;
	private Map<String, Object> resultMap = new HashMap<String, Object>();

	private String name;
	private Long id;
	private Runlog runlog;
	
	private String tip;
	
	private List<Runlog> runlogs;
	@Autowired
	private RunlogService runlogService;
	
	@Action(value = "create", results = { @Result(name = "success", location = "/WEB-INF/views/admin/runlog/create.jsp") })
	public String create() {
		return SUCCESS;
	}
	@Action(value = "index", results = { @Result(name = "success", location = "/WEB-INF/views/admin/runlog/index.jsp") })
	public String index() {
		runlogs = runlogService.findRunlogs();
		return SUCCESS;
	}

	@Action(value = "list", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String list() {
		int pageNumber = (int) (iDisplayStart / iDisplayLength) + 1;
		int pageSize = iDisplayLength;
		Page<Runlog> list = runlogService.findAll(pageNumber, pageSize,
				name);
		resultMap.put("aaData", list.getContent());
		resultMap.put("iTotalRecords", list.getTotalElements());
		resultMap.put("iTotalDisplayRecords", list.getTotalElements());
		resultMap.put("sEcho", sEcho);
		return SUCCESS;
	}

	@Action(value = "delete", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String delete() {
		try {
			runlogService.delete(id);
			resultMap.put("state", "success");
			resultMap.put("msg", "删除成功");
		} catch (Exception e) {
			resultMap.put("state", "error");
			resultMap.put("msg", "删除失败，外键约束");
		}

		return SUCCESS;
	}

	@Action(value = "get", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String get() {
		resultMap.put("runlog", runlogService.find(id));
		resultMap.put("state", "success");
		resultMap.put("msg", "删除成功");
		return SUCCESS;
	}

	@Action(value = "update", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String update() {
		Runlog bean = runlogService.find(runlog.getId());
		bean.setName(runlog.getName());
		bean.setRemark(runlog.getRemark());
		bean.setCreater(runlog.getCreater());
		runlogService.save(bean);
		resultMap.put("state", "success");
		resultMap.put("msg", "修改成功");
		return SUCCESS;
	}


	@Action(value = "save", results = { @Result(name = "success", location = "/WEB-INF/views/admin/runlog/create.jsp") })
	public String save() throws Exception {
		AdminUser user=(AdminUser)ActionContext.getContext().getSession().get("adminuser");
		runlog.setCreater(user);
		runlog.setLogstate("新建");
		runlogService.save(runlog);
		tip = "系统运行日志录入成功！";
		return SUCCESS;
	}

	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	/* ~~~~~~~~get and setter~~~~~~~~~ */
	@JSON
	public Map<String, Object> getResultMap() {
		return resultMap;
	}

	public void setResultMap(Map<String, Object> resultMap) {
		this.resultMap = resultMap;
	}

	public Integer getSEcho() {
		return sEcho;
	}

	public void setSEcho(Integer sEcho) {
		this.sEcho = sEcho;
	}

	public Integer getIDisplayStart() {
		return iDisplayStart;
	}

	public void setIDisplayStart(Integer idisplayStart) {
		this.iDisplayStart = idisplayStart;
	}

	public Integer getIDisplayLength() {
		return iDisplayLength;
	}

	public void setIDisplayLength(Integer iDisplayLength) {
		this.iDisplayLength = iDisplayLength;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	

	public Runlog getRunlog() {
		return runlog;
	}

	public void setRunlog(Runlog runlog) {
		this.runlog = runlog;
	}

	public List<Runlog> getRunlogs() {
		return runlogs;
	}

	public void setRunlogs(List<Runlog> runlogs) {
		this.runlogs = runlogs;
	}
}
