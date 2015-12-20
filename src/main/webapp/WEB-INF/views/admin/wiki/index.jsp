<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.wiki.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.adminWiki.initSearchDataTable();
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
								<h3>知识库管理</h3>
							</div>
							<div class="box well form-inline">
								<span>问题：</span>
								<input type="text" id="wiki_name" >
								<a onclick="$.adminWiki.initSearchDataTable()"
									class="btn btn-info" data-loading-text="正在加载..."><i class="icon-search"></i>查询</a>
							</div>
							<div class="widget-container">
								
									<a class="btn btn-success" style="float: right; margin: 5px;" onclick="$.adminWiki.showaddModal()"><i class="icon-plus"></i> 新增</a>
								<table class="responsive table table-striped table-bordered"
									id="dt_wiki_view">
									<thead>
										<tr>
											<th >编号</th>
											<th >问题名称</th>
											<th >解决方案</th>
											<th >知识类型</th>
											<th >提供人</th>
											<th >创建日期</th>
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
	<div class="modal hide fade" id="wiki_modal"  style="min-height: 500px;">
		<div class="modal-header blue">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<label id="wiki_modal_header_label"></label>
		</div>
		<div class="modal-body"   style="min-height: 500px;">
			<div class="row-fluid" style="min-height: 500px;">
				<div class="span12">
					<div class="form-container grid-form form-background left-align form-horizontal">
						<form action="" method="get" id=''>
							<input type="hidden" id="wikiId" value="">
							<div class="control-group">
								<label for="name" class="control-label">问题名称：</label>
								<div class="controls">
									<input type="text" id="name" placeholder="">
								</div>
							</div>
							
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">问题类型：</label>
								<div class="controls">
									<select name="type" id='type'>
											<option value="运维常见问题">运维常见问题</option>
											<option value="网络问题">网络问题</option>	
											<option value="电气设备问题">电气设备问题</option>
									</select>
								</div>
							</div>
							
							
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">解决方案：</label>
								<div class="controls">
									<textarea id="remark" placeholder="" rows="6">
									</textarea>
								</div>
							</div>
							<div class="control-group">
								<label for="name" class="control-label">提供人：</label>
								<div class="controls">
									<input type="text" id="creater" placeholder="">
								</div>
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal-footer center" id="div_footer">
			<a class="btn btn-primary" onclick="$.adminWiki.save()">保存</a>
			<a href="#" class="btn" data-dismiss="modal" id="closeViewModal">关闭</a>
		</div>
	</div>
</body>
</html>