<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.item.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.adminItem.initSearchDataTable();
		$(".date").datetimepicker({
			language:  'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
	        format:'yyyy-mm-dd',
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
		if("${tip}" != null && "${tip}" != ""){
			noty({"text":"处理成功，单据已提交","layout":"top","type":"success","timeout":"2000"});
		}
	});
</script>
</head>
	
	<script type="text/javascript">
		$(function() {
		});
		
		
		/**审核提交*/
		function submitForm(actionid){
			if($("#approvals").val()==""){
				noty({"text":"请填写审批意见！","layout":"top","type":"error","timeout":"2000"});
				return;
			}
			$("#workflowform input[name='actionid']").val(actionid);
			$("#workflowform").submit();
		}
	</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		<div class="main-wrapper">
			<div class="container-fluid">
			<c:if test="${name!=null }">
						<div class="alert alert-success">
								<button type="button" class="close" data-dismiss="alert">×</button>
								<i class="icon-ok-sign"></i><strong>提示!当前状态： ${name}</strong>
							</div>
						</c:if>
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets ">
						<div class="widget-head  bondi-blue">
							<h3>缺陷单提交</h3>
						</div>
						<div class="widget-container">
							<form id='dayoffform' class="form-horizontal " method="post" action="runlog/save">
							 <input type="hidden" name="token" id='token' value="${token}">
								<table id='' class=" responsive table table-striped table_bordered_black table-condensed formtable" >
									<tr>
											<td colspan="4">
												<div  class="table_title">
													 <h3>缺陷提交单</h3> 
												</div>
												 <div class="row-fluid ">
									         	 <div class="span4">	<span class='lable'>日期：</span> <input class='noborder_input'   value="<fmt:formatDate value="${bug.createDate }" type="time" dateStyle="full" pattern="yyyy-MM-dd"/>" type="text"> </div>
									          	<div class="span4"><span class='lable'>提交人：</span> <input value='${bug.creater.realname}' class='noborder_input' type="text"> </div>
									       	 </div>
											</td>
										</tr>
									<tr>
										<td class='lable'>发现日期</td>
										<td>${bug.createDate}
										  </td>
										<td class='lable'>缺陷设备：</td>
										<td >
											${bug.category.name }
										</td>
									</tr>
									<tr>
										<td class='lable'>缺陷类型：</td>
										<td >
											${bug.type }
										</td>
										<td class='lable'>缺陷等级：</td>
										<td >
											${bug.state }
										</td>
									<tr>
									<tr>
										<td class='lable'>缺陷标题：</td>
										<td colspan="3" >
											${bug.name }
										</td>
									<tr>
									<tr>
										<td class='lable'>缺陷详细内容：</td>
										<td colspan="3" >${bug.remark } </td>
									</tr>
									
									<tr>
										<td class='lable'>缺陷处理结果：</td>
										<td colspan="3" >${bug.result } </td>
									</tr>
									
									<tr>
										<td class='lable'>缺陷验收结果：</td>
										<td colspan="3" >${bug.checkresult } </td>
									</tr>
									
									<tr  class='remark'>
										<td colspan="4">
											<ol>
											  <li>请及时提交单据</li>
											  <li>不得替他人单据</li>
											</ol>
										</td>
									</tr>
								</table>
							</form>
							
							
							<div class="widget-header-block">
									<h4 class="widget-header">审批信息</h4>
								</div>
								<table id='dt_weekReport' class="responsive table table-striped table-bordered table-condensed">
									<thead>
										<tr>
											<th>时间</th>
											<th>流程节点</th>
											<th>动作</th>
											<th>处理人</th>
											<th>处理意见</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${approvals}" var="item">
											<tr>
											<td> <fmt:formatDate value="${item.createDate}" type="time" dateStyle="full" pattern="yyyy-MM-dd HH:mm"/></td>
											<td>${item.step.name}</td>
											<td>${item.action}</td>
											<td>${item.step.owner.realname}</td>
											<td>${item.approvel}</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
								
								
								
								
								
								
								
								<c:if test="${actions.size()!=0}">
								<form  id='workflowform' class="form-horizontal " method="post" action="${pageContext.request.contextPath}/admin/bug/doApprove">
									<input type="hidden" name='actionid' value="">
									<input type="hidden" name='id' value="${wfentry.id }">
									<fieldset class="default">
										<legend>审批批意见</legend>
										<div class="control-group">
											<c:if test="${wfentry.currentStep.stepId==3}">
											<label class="control-label">选择缺陷处理人</label>
											<div class="controls">
												<select name='nexter'>
													<c:forEach items="${users }" var="bean">
														<option value="${bean.id }">${bean.realname }</option>
													</c:forEach>
												</select>
											</div>
										</c:if>
											<c:if test="${wfentry.currentStep.stepId==4}">
											<label class="control-label">选择缺陷验收人</label>
											<div class="controls">
												<select name='nexter'>
													<c:forEach items="${users }" var="bean">
														<option value="${bean.id }">${bean.realname }</option>
													</c:forEach>
												</select>
											</div>
										</c:if>
										</div>
										<div class="control-group">
											<label class="control-label">审批批意见</label>
											<div class="controls">
												<textarea  name="approves" rows="3" class="span12"></textarea>
											</div>
										</div>
										<div class="control-group">
											<div class="controls">
													<c:forEach items="${actions}" var="item">
														<button type="button" onclick="submitForm(${item.key})" class="btn btn-primary">${item.value}</button>
													</c:forEach>
											</div>
										</div>
									</fieldset>
								</form>
								</c:if>
						</div>
					</div>
					
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>
</body>
</html>