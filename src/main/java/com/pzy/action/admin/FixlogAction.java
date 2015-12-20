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
import com.pzy.entity.Category;
import com.pzy.entity.Fixlog;
import com.pzy.service.CategoryService;
import com.pzy.service.FixlogService;

/***
 * 
 * @author 263608237@qq.com
 *
 */
@Namespace("/admin/fixlog")
@ParentPackage("json-default")
public class FixlogAction extends ActionSupport {
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
	private Fixlog fixlog;
	
	private String tip;
	
	private List<Fixlog> fixlogs;
	@Autowired
	private FixlogService fixlogService;
	@Autowired
	private CategoryService categoryService;
	
	private List<Category> categorys;
	
	@Action(value = "create", results = { @Result(name = "success", location = "/WEB-INF/views/admin/fixlog/create.jsp") })
	public String create() {
		categorys=categoryService.findAll();
		return SUCCESS;
	}
	@Action(value = "index", results = { @Result(name = "success", location = "/WEB-INF/views/admin/fixlog/index.jsp") })
	public String index() {
		fixlogs = fixlogService.findFixlogs();
		return SUCCESS;
	}

	@Action(value = "list", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String list() {
		int pageNumber = (int) (iDisplayStart / iDisplayLength) + 1;
		int pageSize = iDisplayLength;
		Page<Fixlog> list = fixlogService.findAll(pageNumber, pageSize,
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
			fixlogService.delete(id);
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
		resultMap.put("fixlog", fixlogService.find(id));
		resultMap.put("state", "success");
		resultMap.put("msg", "删除成功");
		return SUCCESS;
	}

	@Action(value = "update", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String update() {
		Fixlog bean = fixlogService.find(fixlog.getId());
		bean.setName(fixlog.getName());
		bean.setRemark(fixlog.getRemark());
		bean.setCreater(fixlog.getCreater());
		fixlogService.save(bean);
		resultMap.put("state", "success");
		resultMap.put("msg", "修改成功");
		return SUCCESS;
	}


	@Action(value = "save", results = { @Result(name = "success", location = "/WEB-INF/views/admin/fixlog/create.jsp") })
	public String save() throws Exception {
		AdminUser user=(AdminUser)ActionContext.getContext().getSession().get("adminuser");
		fixlog.setCreater(user);
		fixlog.setLogstate("新建");
		fixlogService.save(fixlog);
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

	

	public Fixlog getFixlog() {
		return fixlog;
	}

	public void setFixlog(Fixlog fixlog) {
		this.fixlog = fixlog;
	}

	public List<Fixlog> getFixlogs() {
		return fixlogs;
	}

	public void setFixlogs(List<Fixlog> fixlogs) {
		this.fixlogs = fixlogs;
	}
	public List<Category> getCategorys() {
		return categorys;
	}
	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
}
