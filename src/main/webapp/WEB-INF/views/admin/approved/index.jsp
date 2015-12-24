<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.approve.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
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
	});
</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		
		<input type="hidden" id="hf_id" />

		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets">
							<div class="widget-head  bondi-blue">
								<h3>我的已办</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					
							<div class="box well form-inline">
									<label>收到日期：</label>
									<div class=" input-append date">
										<input id="approved_startDate" style="width: 120px;" type="text" value="" readonly="readonly">
										<span class="add-on"><i class="icon-th"></i></span>
									</div>

									<label class="control-lableName">~</label>
									<div class=" input-append date">
										<input id="approved_endDate" style="width: 120px;" type="text" value="" readonly="readonly">
										<span class="add-on"><i class="icon-th"></i></span>
									</div>
									<label class="control-lableName">状态</label>
									<select  class='workState' id="approved_workFlowState" style="width: 150px;">
									    <option value="">&nbsp;</option>
										<option value="4">已办结&nbsp;</option>
										<option value="1">未办结&nbsp;</option>
									</select>
									<label class="control-lableName">流程：</label>
									<select  class='workFlowName' id="approved_workFlowName" style="width: 150px;">
										<option value="">&nbsp;</option>
										<c:forEach items="${workflowNames}" var="bean">
											<option value="${bean.key}">${bean.value}</option>
										</c:forEach>
									</select>
									<button  class="btn btn-info right" type="button" onclick="$.approve.initapproved()">
										<i class="icon-search icon-white"></i> 查询
									</button>
								</div>
								<table id='table_toapprove' class="table-hover responsive table table-striped table-bordered table-condensed">
									<thead>
										<tr>
											<th>待办文件名称</th>
											<th>创建时间</th>
											<th>提交人</th>
											<th>收到时间</th>
											<th>当前步骤</th>
											<th>状态</th>
										</tr>
									</thead>
								</table>
							</div>
				</div>
			</div>
		<%@ include file="../foot.jsp"%>
	</div>
</body>
</html>