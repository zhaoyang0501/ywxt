jQuery.adminItem = {
		dataTable:null,
		toSave:false,
		initSearchDataTablenotice : function() {
			if (this.dataTable == null) {
				this.dataTable = $('#dt_table_view').dataTable({
					"sDom" : "<'row-fluid'<'span6'l>r>t<'row-fluid'<'span6'i><'span6'p>>",
					"sPaginationType" : "bootstrap",
					"oLanguage" : {
						"sLengthMenu" : "每页显示 _MENU_ 条记录",
						"sZeroRecords" : "抱歉， 暂时没有记录",
						"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
						"sSearch" : "",
						"sInfoEmpty" : "没有数据",
						"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
						"oPaginate" : {
							"sFirst" : "首页",
							"sPrevious" : "前一页",
							"sNext" : "后一页",
							"sLast" : "尾页"
						}
					},
					"bAutoWidth" : false,
					"iDisplayLength" : 10,
					"aLengthMenu" : [ 5, 10, 25, 50],
					"bServerSide" : true,
					"sServerMethod" : "POST",
					"bProcessing" : true,
					"bSort" : false,
					"sAjaxSource" : $.ace.getContextPath() + "/admin/item/noticelist",
					"fnDrawCallback" : function(oSettings) {
						$('[rel="popover"],[data-rel="popover"]').popover();
					},
					"fnServerData" : function(sSource, aoData, fnCallback) {
						var name = $("#name_").val();
						if (!!name) {
							aoData.push({
								"name" : "name",
								"value" : name
							});
						}
						$.ajax({
							"dataType" : 'json',
							"type" : "POST",
							"url" : sSource,
							"data" : aoData,
							"success" : function(data){
								fnCallback(data.resultMap);
							}
						});
					},
					"aoColumns" : [ {
						"mDataProp" : "name"
					}, {
						"mDataProp" : "tel"
					}, {
						"mDataProp" : "carid"
					}, {
						"mDataProp" : "createDate"
					}, {
						"mDataProp" : "needDate"
					}, {
						"mDataProp" : "remark"
					},{
						"mDataProp" : "state"
					},
					 {
						"mDataProp" : ""
					}],
					"aoColumnDefs" : [
						{
							'aTargets' : [6],
							'fnRender' : function(oObj, sVal) {
								return "<span class='label label-important'>"+sVal+"</span>";
							}
						},
						{
							'aTargets' : [7],
							'fnRender' : function(oObj, sVal) {
								return "<button class=\"btn2 btn-info\" onclick=\"$.adminItem.showEdit("+oObj.aData.id+")\"><i class=\"icon-pencil\"></i>订单完成</button>";
							}
						},
					 {
						'aTargets' : [ '_all' ],
						'bSortable' : false,
						'sClass' : 'center'
					}]

				});
			} else {
				var oSettings = this.dataTable.fnSettings();
				oSettings._iDisplayStart = 0;
				this.dataTable.fnDraw(oSettings);
			}

		},
		initSearchDataTablework : function() {
			if (this.dataTable == null) {
				this.dataTable = $('#dt_table_view').dataTable({
					"sDom" : "<'row-fluid'<'span6'l>r>t<'row-fluid'<'span6'i><'span6'p>>",
					"sPaginationType" : "bootstrap",
					"oLanguage" : {
						"sLengthMenu" : "每页显示 _MENU_ 条记录",
						"sZeroRecords" : "抱歉， 暂时没有记录",
						"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
						"sSearch" : "",
						"sInfoEmpty" : "没有数据",
						"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
						"oPaginate" : {
							"sFirst" : "首页",
							"sPrevious" : "前一页",
							"sNext" : "后一页",
							"sLast" : "尾页"
						}
					},
					"bAutoWidth" : false,
					"iDisplayLength" : 10,
					"aLengthMenu" : [ 5, 10, 25, 50],
					"bServerSide" : true,
					"sServerMethod" : "POST",
					"bProcessing" : true,
					"bSort" : false,
					"sAjaxSource" : $.ace.getContextPath() + "/admin/item/worklist",
					"fnDrawCallback" : function(oSettings) {
						$('[rel="popover"],[data-rel="popover"]').popover();
					},
					"fnServerData" : function(sSource, aoData, fnCallback) {
						var name = $("#name_").val();
						if (!!name) {
							aoData.push({
								"name" : "name",
								"value" : name
							});
						}
						$.ajax({
							"dataType" : 'json',
							"type" : "POST",
							"url" : sSource,
							"data" : aoData,
							"success" : function(data){
								fnCallback(data.resultMap);
							}
						});
					},
					"aoColumns" : [ {
						"mDataProp" : "name"
					}, {
						"mDataProp" : "tel"
					}, {
						"mDataProp" : "carid"
					}, {
						"mDataProp" : "createDate"
					}, {
						"mDataProp" : "needDate"
					}, {
						"mDataProp" : "remark"
					},{
						"mDataProp" : "state"
					},
					 {
						"mDataProp" : ""
					}],
					"aoColumnDefs" : [
						{
							'aTargets' : [6],
							'fnRender' : function(oObj, sVal) {
								return "<span class='label label-important'>"+sVal+"</span>";
							}
						},
						{
							'aTargets' : [7],
							'fnRender' : function(oObj, sVal) {
								return "<button class=\"btn2 btn-info\" onclick=\"$.adminItem.showEdit("+oObj.aData.id+")\"><i class=\"icon-pencil\"></i>确认完成</button>";
							}
						},
					 {
						'aTargets' : [ '_all' ],
						'bSortable' : false,
						'sClass' : 'center'
					}]

				});
			} else {
				var oSettings = this.dataTable.fnSettings();
				oSettings._iDisplayStart = 0;
				this.dataTable.fnDraw(oSettings);
			}

		},
		initSearchDataTablesend : function() {
			if (this.dataTable == null) {
				this.dataTable = $('#dt_table_view').dataTable({
					"sDom" : "<'row-fluid'<'span6'l>r>t<'row-fluid'<'span6'i><'span6'p>>",
					"sPaginationType" : "bootstrap",
					"oLanguage" : {
						"sLengthMenu" : "每页显示 _MENU_ 条记录",
						"sZeroRecords" : "抱歉， 暂时没有记录",
						"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
						"sSearch" : "",
						"sInfoEmpty" : "没有数据",
						"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
						"oPaginate" : {
							"sFirst" : "首页",
							"sPrevious" : "前一页",
							"sNext" : "后一页",
							"sLast" : "尾页"
						}
					},
					"bAutoWidth" : false,
					"iDisplayLength" : 10,
					"aLengthMenu" : [ 5, 10, 25, 50],
					"bServerSide" : true,
					"sServerMethod" : "POST",
					"bProcessing" : true,
					"bSort" : false,
					"sAjaxSource" : $.ace.getContextPath() + "/admin/item/sendlist",
					"fnDrawCallback" : function(oSettings) {
						$('[rel="popover"],[data-rel="popover"]').popover();
					},
					"fnServerData" : function(sSource, aoData, fnCallback) {
						var name = $("#name_").val();
						if (!!name) {
							aoData.push({
								"name" : "name",
								"value" : name
							});
						}
						$.ajax({
							"dataType" : 'json',
							"type" : "POST",
							"url" : sSource,
							"data" : aoData,
							"success" : function(data){
								fnCallback(data.resultMap);
							}
						});
					},
					"aoColumns" : [ {
						"mDataProp" : "name"
					}, {
						"mDataProp" : "tel"
					}, {
						"mDataProp" : "carid"
					}, {
						"mDataProp" : "createDate"
					}, {
						"mDataProp" : "needDate"
					}, {
						"mDataProp" : "remark"
					},{
						"mDataProp" : "state"
					},
					 {
						"mDataProp" : ""
					}],
					"aoColumnDefs" : [
						{
							'aTargets' : [6],
							'fnRender' : function(oObj, sVal) {
								return "<span class='label label-important'>"+sVal+"</span>";
							}
						},
						{
							'aTargets' : [7],
							'fnRender' : function(oObj, sVal) {
								return "<button class=\"btn2 btn-info\" onclick=\"$.adminItem.showEdit("+oObj.aData.id+")\"><i class=\"icon-pencil\"></i>分配修车工</button>";
							}
						},
					 {
						'aTargets' : [ '_all' ],
						'bSortable' : false,
						'sClass' : 'center'
					}]

				});
			} else {
				var oSettings = this.dataTable.fnSettings();
				oSettings._iDisplayStart = 0;
				this.dataTable.fnDraw(oSettings);
			}

		},
		initSearchDataTable : function() {
			if (this.dataTable == null) {
				this.dataTable = $('#dt_table_view').dataTable({
					"sDom" : "<'row-fluid'<'span6'l>r>t<'row-fluid'<'span6'i><'span6'p>>",
					"sPaginationType" : "bootstrap",
					"oLanguage" : {
						"sLengthMenu" : "每页显示 _MENU_ 条记录",
						"sZeroRecords" : "抱歉， 暂时没有记录",
						"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
						"sSearch" : "",
						"sInfoEmpty" : "没有数据",
						"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
						"oPaginate" : {
							"sFirst" : "首页",
							"sPrevious" : "前一页",
							"sNext" : "后一页",
							"sLast" : "尾页"
						}
					},
					"bAutoWidth" : false,
					"iDisplayLength" : 10,
					"aLengthMenu" : [ 5, 10, 25, 50],
					"bServerSide" : true,
					"sServerMethod" : "POST",
					"bProcessing" : true,
					"bSort" : false,
					"sAjaxSource" : $.ace.getContextPath() + "/admin/item/list",
					"fnDrawCallback" : function(oSettings) {
						$('[rel="popover"],[data-rel="popover"]').popover();
					},
					"fnServerData" : function(sSource, aoData, fnCallback) {
						var name = $("#name_").val();
						if (!!name) {
							aoData.push({
								"name" : "name",
								"value" : name
							});
						}
						$.ajax({
							"dataType" : 'json',
							"type" : "POST",
							"url" : sSource,
							"data" : aoData,
							"success" : function(data){
								fnCallback(data.resultMap);
							}
						});
					},
					"aoColumns" : [ {
						"mDataProp" : "name"
					}, {
						"mDataProp" : "imgPath"
					}, {
						"mDataProp" : "category.name"
					}, {
						"mDataProp" : "count"
					}, {
						"mDataProp" : "price"
					}, {
						"mDataProp" : "createDate"
					}, {
						"mDataProp" : "remark"
					},
					 {
						"mDataProp" : ""
					}],
					"aoColumnDefs" : [
						{
							'aTargets' : [6],
							'fnRender' : function(oObj, sVal) {
								if(sVal.length>10)
									return sVal.substring(0,10)+".....";
								else 
									return sVal;
							}
						},
						{
							'aTargets' : [1],
							'fnRender' : function(oObj, sVal) {
								return "<img title='product' alt='product' src='../upload/"+sVal+"' height=''50' width='50'>";
							}
						},
						
						{
							'aTargets' : [4],
							'fnRender' : function(oObj, sVal) {
								
								var count=parseInt(sVal);
								if(count<=10)
								return "<span class='label label-important'>"+sVal+"</span>";
								else if(count<50)
									return "<span class='label label-warning'>"+sVal+"</span>";
								else if(count>=50)
									return "<span class='label label-success'>"+sVal+"</span>";
							}
						},
						{
							'aTargets' : [8],
							'fnRender' : function(oObj, sVal) {
								return "<button class=\"btn2 btn-info\" onclick=\"$.adminItem.showEdit("+oObj.aData.id+")\"><i class=\"icon-pencil\"></i>修改</button>"+
								 "  &nbsp;<button class=\"btn2 btn-info\" onclick=\"$.adminItem.deleteit("+oObj.aData.id+")\"><i class=\"icon-trash\"></i> 删除</button>";
							}
						},
					 {
						'aTargets' : [ '_all' ],
						'bSortable' : false,
						'sClass' : 'center'
					}]

				});
			} else {
				var oSettings = this.dataTable.fnSettings();
				oSettings._iDisplayStart = 0;
				this.dataTable.fnDraw(oSettings);
			}

		},
		deleteit :function(id){
			bootbox.confirm( "是否确认删除？", function (result) {
	            if(result){
	            	$.ajax({
	        			type : "get",
	        			url : $.ace.getContextPath() + "/admin/item/delete?id="+id,
	        			dataType : "json",
	        			success : function(json) {
	        				if(json.resultMap.state=='success'){
	        					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"success","timeout":"2000"});
	        					$.adminItem.initSearchDataTable();
	        				}else{
	        					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"warning"});
	        				}
	        			}
	        		});
	            }
	        });
		},
		update : function (){
				$.ajax({
	    			type : "post",
	    			url : $.ace.getContextPath() + "/admin/item/update",
	    			data:{
	    				"item.id":$("#id").val(),
	    				"item.name":$("#name").val(),
	    				"item.remark":$("#remark").val(),
	    				"item.category.id":$("#category").val(),
	    				"item.categorySub.id":$("#categorySub").val(),
	    				"item.count":$("#count").val(),
	    				"item.score":$("#score").val()
	    			},
	    			dataType : "json",
	    			success : function(json) {
	    				if(json.resultMap.state=='success'){
	    					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"success","timeout":"2000"});
	    					$.adminItem.initSearchDataTable();
	    					$("#resource_modal").modal('hide');
	    				}else{
	    					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"warning"});
	    				}
	    			}
	    		});
		},
		showEdit: function (id){
			$("#itemid").val(id);
			$("#item_modal").modal('show');
		},
		showaddModal: function(id){
			$.adminItem.toSave=true;
			$("#modal_header_label").text("新增分类");
			$("#item_modal").modal('show');
		},
		save : function (){
			$("#_form").submit();
		}
};