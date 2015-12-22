package com.pzy.action.admin;

import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
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
import com.pzy.entity.Fixlog;
import com.pzy.entity.Runlog;
import com.pzy.entity.osworkflow.Approval;
import com.pzy.entity.osworkflow.CurrentStep;
import com.pzy.entity.osworkflow.Wfentry;
import com.pzy.service.AdminUserService;
import com.pzy.service.FixlogService;
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
	private Map<Integer,String>  actions = new LinkedHashMap<Integer, String>();;
	private String name;
	private Long id;
	private Runlog runlog;
	private Fixlog fixlog;
	private Map<String,String>  workflowNames;
	private String tip;
	
	private Wfentry wfentry;
	private List<Runlog> runlogs;
	
	private List<Approval> approvals;
	@Autowired
	private RunlogService runlogService;
	@Autowired
	private FixlogService fixlogService;
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
	
	@Action(value = "goApprove", results = { @Result(name = "runlog", location = "/WEB-INF/views/admin/runlog/approve.jsp"),
			 @Result(name = "fixlog", location = "/WEB-INF/views/admin/fixlog/approve.jsp")})
	public String goApprove() {
		AdminUser user=(AdminUser)ActionContext.getContext().getSession().get("adminuser");
		springWorkflow.SetContext(String.valueOf( user.getId()));
		approvals=workFlowService.findApproval(id);
		wfentry =workFlowService.findWfentry(id);
		/***查可执行动作*/
		int[] actionIds = springWorkflow.getAvailableActions(wfentry.getId(), null);
		for(int i=0;i<actionIds.length;i++){
			actions.put(springWorkflow.getWorkflowDescriptor(wfentry.getName()).getAction(actionIds[i]).getId(), 
					springWorkflow.getWorkflowDescriptor(wfentry.getName()).getAction(actionIds[i]).getName());
		}
		runlog=runlogService.findByWfentry(wfentry);
		fixlog=fixlogService.findByWfentry(wfentry);
		return wfentry.getName();
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
	public Wfentry getWfentry() {
		return wfentry;
	}
	public void setWfentry(Wfentry wfentry) {
		this.wfentry = wfentry;
	}
	public List<Approval> getApprovals() {
		return approvals;
	}
	public void setApprovals(List<Approval> approvals) {
		this.approvals = approvals;
	}
	public Map<Integer, String> getActions() {
		return actions;
	}
	public void setActions(Map<Integer, String> actions) {
		this.actions = actions;
	}
}
