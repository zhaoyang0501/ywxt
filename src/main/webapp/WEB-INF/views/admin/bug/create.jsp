<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			noty({"text":"${tip}","layout":"top","type":"success","timeout":"2000"});
		}
	});
</script>
</head>
	
	<script type="text/javascript">
		$(function() {
		});
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
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets ">
						<div class="widget-head  bondi-blue">
							<h3>缺陷单提交</h3>
						</div>
						<div class="widget-container">
							<form id='dayoffform' class="form-horizontal " method="post" action="bug/save">
							 <input type="hidden" name="token" id='token' value="${token}">
								<table id='' class=" responsive table table-striped table_bordered_black table-condensed formtable" >
									<tr>
										<td colspan="4">
											<div class="table_title">
												 <h3>系统缺陷单</h3> 
											</div>
										</td>
									</tr>
									<tr>
										<td class='lable'>发现日期</td>
										<td><div class="input-append date">
											 <input id="createDate" name="bug.createDate" type="text" readonly="readonly" class="form_datetime">
											 <span class="add-on"><i class="icon-th"></i></span>
										    </div>
										  </td>
										<td class='lable'>缺陷设备：</td>
										<td >
											<select name="bug.category.id"  style="width: 200px">
												<c:forEach items="${categorys }" var="bean" >
													<option value="${bean.id }">${bean.name }</option>
												</c:forEach>
											</select>
										</td>
									</tr>
									<tr>
										<td class='lable'>缺陷类型：</td>
										<td >
											<select name="bug.type" style="width: 200px">
												<option value="运行缺陷">运行缺陷</option>
												<option value="系统缺陷">系统缺陷</option>
											</select>
										</td>
										<td class='lable'>缺陷等级：</td>
										<td >
											<select name="bug.state" style="width: 200px">
												<option value="高">高</option>
												<option value="中">中</option>
												<option value="低">低</option>
											</select>
										</td>
									<tr>
									<tr>
										<td class='lable'>缺陷标题：</td>
										<td colspan="3" >
											<input name='bug.name' type="text" class="span8" style="width: 90%"></input>
										</td>
									<tr>
									<tr>
										<td class='lable'>缺陷详细内容：</span></td>
										<td colspan="3" ><textarea  name='bug.remark' style="width: 90%" rows="2" cols=""></textarea> </td>
									</tr>
									<tr  class='remark'>
										<td colspan="4">
											<ol>
											  <li>请及时提交维修单据</li>
											  <li>不得替他人提交单据</li>
											</ol>
										</td>
									</tr>
								</table>
								<div >
									<button type="submit" class="btn btn-primary" >提交</button>
								</div>
							</form>
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