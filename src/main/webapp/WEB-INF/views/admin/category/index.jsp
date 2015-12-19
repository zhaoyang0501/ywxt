<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.category.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.adminCategory.initSearchDataTable();
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
						<div class="content-widgets light-gray">
							<div class="widget-head  bondi-blue" >
								<h3>系统资产管理</h3>
							</div>
							<div class="box well form-inline">
								<span>名称：</span>
								<input type="text" id="category_name" >
								<a onclick="$.adminCategory.initSearchDataTable()"
									class="btn btn-info" data-loading-text="正在加载..."><i class="icon-search"></i>查询</a>
							</div>
							<div class="widget-container">
								
									<a class="btn btn-success" style="float: right; margin: 5px;" onclick="$.adminCategory.showaddModal()"><i class="icon-plus"></i> 新增</a>
								<table class="responsive table table-striped table-bordered"
									id="dt_category_view">
									<thead>
										<tr>
											<th >设备编号</th>
											<th >设备名称</th>
											<th >存放地点</th>
											<th >使用时间</th>
											<th >设备类型</th>
											<th >供应商</th>
											<th >设备状态</th>
											<th >操作</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>

	<!-- 编辑新增弹出框 -->
	<div class="modal hide fade" id="category_modal">
		<div class="modal-header blue">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<label id="category_modal_header_label"></label>
		</div>
		<div class="modal-body" >
			<div class="row-fluid">
				<div class="span12">
					<div class="form-container grid-form form-background left-align form-horizontal">
						<form action="" method="get" id=''>
							<input type="hidden" id="categoryId" value="">
							<div class="control-group">
								<label for="name" class="control-label">设备名称：</label>
								<div class="controls">
									<input type="text" id="name" placeholder="">
								</div>
							</div>
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">设备编号：</label>
								<div class="controls">
									<input type="text" id="sn" placeholder="">
								</div>
							</div>
							
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">使用时间：</label>
								<div class="controls">
									<input type="text" id="year" placeholder="">
								</div>
							</div>
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">供应商：</label>
								<div class="controls">
									<input type="text" id="seller" placeholder="">
								</div>
							</div>
							
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">设备规格：</label>
								<div class="controls">
									<select name="sbgg" id='sbgg'>
											<option value="台">台</option>
											<option value=">套">套</option>	
											<option value="组">组</option>
											</select>
								</div>
							</div>
							
							
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">设备类型：</label>
								<div class="controls">
									<select name="type" id='type'>
											<option value="网络设备">网络设备</option>
											<option value="主机设备">主机设备</option>	
											<option value="电源设备">电源设备</option>
											<option value="室内电器">室内电器</option>
									</select>
								</div>
							</div>
							
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">设备状态：</label>
								<div class="controls">
									<select name="state" id='state'>
											<option value="正常">正常</option>
											<option value="警告">警告</option>	
											<option value="危险">危险</option>
											</select>
								</div>
							</div>
							
							
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">配置信息：</label>
								<div class="controls">
									<textarea id="pzxx" placeholder="" rows="3">
									</textarea>
								</div>
							</div>
							
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">检修信息：</label>
								<div class="controls">
									<textarea id="jxxx" placeholder="" rows="3">
									</textarea>
								</div>
							</div>
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">存放地址：</label>
								<div class="controls">
									<textarea id="addr" placeholder="" rows="3">
									</textarea>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal-footer center" id="div_footer">
			<a class="btn btn-primary" onclick="$.adminCategory.save()">保存</a>
			<a href="#" class="btn" data-dismiss="modal" id="closeViewModal">关闭</a>
		</div>
	</div>
</body>
</html>