package com.pzy.action.admin;

import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.time.DateUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import com.opensymphony.workflow.WorkflowException;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.osworkflow.SpringWorkflow;
import com.pzy.constants.ImsConstants.WorkFlowConstants;
import com.pzy.entity.AdminUser;
import com.pzy.entity.Runlog;
import com.pzy.entity.osworkflow.CurrentStep;
import com.pzy.service.AdminUserService;
import com.pzy.service.RunlogService;
import com.pzy.service.WorkFlowService;

/***
 * 
 * @author 263608237@qq.com
 *
 */
@Namespace("/admin/toapprove")
@ParentPackage("json-default")
public class ToapproveAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer sEcho = 1;
	private Integer iDisplayStart = 0;
	private Integer iDisplayLength = 10;
	private String workFlowName;
	private String startDate;
	private String endDate;
	private Long  craterId;
	
	private Map<String, Object> resultMap = new HashMap<String, Object>();

	private String name;
	private Long id;
	private Runlog runlog;
	private Map<String,String>  workflowNames;
	private String tip;
	
	private List<Runlog> runlogs;
	@Autowired
	private RunlogService runlogService;
	@Autowired
	private SpringWorkflow springWorkflow;
	@Autowired
	private AdminUserService adminUserService;
	@Autowired
	private WorkFlowService workFlowService;
	@Action(value = "index", results = { @Result(name = "success", location = "/WEB-INF/views/admin/toapprove/index.jsp") })
	public String index() {
		workflowNames= WorkFlowConstants.WORKFLOWNAME_MAP;
		runlogs = runlogService.findRunlogs();
		return SUCCESS;
	}

	@Action(value = "list", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String list() throws WorkflowException, ParseException {
		Date start = startDate==null?null:DateUtils.parseDate(startDate, "yyyy-MM-dd");
		Date end= endDate==null?null:DateUtils.parseDate(endDate, "yyyy-MM-dd");
		AdminUser creater = craterId==null?null:adminUserService.find(craterId);
		
		AdminUser user=(AdminUser)ActionContext.getContext().getSession().get("adminuser");
		Page<CurrentStep> currentSteps = 
				workFlowService.findTodoList(workFlowName, start, end,
						adminUserService.find(user.getId()),creater, null, (iDisplayStart / iDisplayLength) + 1, iDisplayLength);
		resultMap.put("aaData", currentSteps.getContent());
		resultMap.put("iTotalRecords", currentSteps.getTotalElements());
		resultMap.put("iTotalDisplayRecords", currentSteps.getTotalElements());
		resultMap.put("sEcho", sEcho);
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

	public String getWorkFlowName() {
		return workFlowName;
	}

	public void setWorkFlowName(String workFlowName) {
		this.workFlowName = workFlowName;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Long getCraterId() {
		return craterId;
	}

	public void setCraterId(Long craterId) {
		this.craterId = craterId;
	}

	public Map<String, String> getWorkflowNames() {
		return workflowNames;
	}

	public void setWorkflowNames(Map<String, String> workflowNames) {
		this.workflowNames = workflowNames;
	}
}
