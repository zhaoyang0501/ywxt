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
import com.pzy.entity.Bug;
import com.pzy.service.CategoryService;
import com.pzy.service.BugService;

/***
 * 
 * @author 263608237@qq.com
 *
 */
@Namespace("/admin/bug")
@ParentPackage("json-default")
public class BugAction extends ActionSupport {
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
	private Bug bug;
	
	private String tip;
	
	private List<Bug> bugs;
	@Autowired
	private BugService bugService;
	@Autowired
	private CategoryService categoryService;
	
	private List<Category> categorys;
	
	@Action(value = "create", results = { @Result(name = "success", location = "/WEB-INF/views/admin/bug/create.jsp") })
	public String create() {
		categorys=categoryService.findAll();
		return SUCCESS;
	}
	@Action(value = "index", results = { @Result(name = "success", location = "/WEB-INF/views/admin/bug/index.jsp") })
	public String index() {
		bugs = bugService.findBugs();
		return SUCCESS;
	}

	@Action(value = "list", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String list() {
		int pageNumber = (int) (iDisplayStart / iDisplayLength) + 1;
		int pageSize = iDisplayLength;
		Page<Bug> list = bugService.findAll(pageNumber, pageSize,
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
			bugService.delete(id);
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
		resultMap.put("bug", bugService.find(id));
		resultMap.put("state", "success");
		resultMap.put("msg", "删除成功");
		return SUCCESS;
	}

	@Action(value = "update", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String update() {
		Bug bean = bugService.find(bug.getId());
		bean.setName(bug.getName());
		bean.setRemark(bug.getRemark());
		bean.setCreater(bug.getCreater());
		bugService.save(bean);
		resultMap.put("state", "success");
		resultMap.put("msg", "修改成功");
		return SUCCESS;
	}


	@Action(value = "save", results = { @Result(name = "success", location = "/WEB-INF/views/admin/bug/create.jsp") })
	public String save() throws Exception {
		AdminUser user=(AdminUser)ActionContext.getContext().getSession().get("adminuser");
		bug.setCreater(user);
		bug.setBugstate("新建");
		bugService.save(bug);
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

	

	public Bug getBug() {
		return bug;
	}

	public void setBug(Bug bug) {
		this.bug = bug;
	}

	public List<Bug> getBugs() {
		return bugs;
	}

	public void setBugs(List<Bug> bugs) {
		this.bugs = bugs;
	}
	public List<Category> getCategorys() {
		return categorys;
	}
	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
}
