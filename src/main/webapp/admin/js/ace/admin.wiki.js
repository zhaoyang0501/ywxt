jQuery.adminWiki = {
		wikiDataTable:null,
		toSave:false,
		initSearchDataTable : function() {
			if (this.wikiDataTable == null) {
				this.wikiDataTable = $('#dt_wiki_view').dataTable({
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
					"sAjaxSource" : $.ace.getContextPath() + "/admin/wiki/list",
					"fnDrawCallback" : function(oSettings) {
						$('[rel="popover"],[data-rel="popover"]').popover();
					},
					"fnServerData" : function(sSource, aoData, fnCallback) {
						var name = $("#wiki_name").val();
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
					"aoColumns" : [{
						"mDataProp" : "id"
					}, {
						"mDataProp" : "name"
					} ,{
						"mDataProp" : "remark"
					},  {
						"mDataProp" : "type"
					}, {
						"mDataProp" : "creater"
					}, {
						"mDataProp" : "createDate"
					}, {
						"mDataProp" : ""
					}],
					"aoColumnDefs" : [
						{
							'aTargets' : [4],
							'fnRender' : function(oObj, sVal) {
								return "<span class='label label-success'>"+sVal+"</span>";
							}
						},
						{
							'aTargets' : [6],
							'fnRender' : function(oObj, sVal) {
								return "<button class=\"btn2 btn-info\" onclick=\"$.adminWiki.showEdit("+oObj.aData.id+")\"><i class=\"icon-pencil\"></i>修改</button>"+
								 "  <button class=\"btn2 btn-info\" onclick=\"$.adminWiki.deleteWiki("+oObj.aData.id+")\"><i class=\"icon-trash\"></i> 删除</button>";
							}
						},
					 {
						'aTargets' : [ '_all' ],
						'bSortable' : false,
						'sClass' : 'center'
					}]

				});
			} else {
				var oSettings = this.wikiDataTable.fnSettings();
				oSettings._iDisplayStart = 0;
				this.wikiDataTable.fnDraw(oSettings);
			}

		},
		deleteWiki :function(id){
			bootbox.confirm( "是否确认删除？", function (result) {
	            if(result){
	            	$.ajax({
	        			type : "get",
	        			url : $.ace.getContextPath() + "/admin/wiki/delete?id="+id,
	        			dataType : "json",
	        			success : function(json) {
	        				if(json.resultMap.state=='success'){
	        					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"success","timeout":"2000"});
	        					$.adminWiki.initSearchDataTable();
	        				}else{
	        					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"warning"});
	        				}
	        			}
	        		});
	            }
	        });
		},
		showaddModal: function(id){
			$.adminWiki.toSave=true;
			$("#user_modal_header_label").text("新增分类");
			$("#wiki_modal").modal('show');
		},
		save : function (){
			if($.adminWiki.toSave){
				$.ajax({
	    			type : "post",
	    			url : $.ace.getContextPath() + "/admin/wiki/save",
	    			data:{
	    				"wiki.name":$("#name").val(),
	    				"wiki.remark":$("#remark").val(),
	    				"wiki.creater":$("#creater").val(),
	    				"wiki.type":$("#type").val()
	    			},
	    			dataType : "json",
	    			success : function(json) {
	    				if(json.resultMap.state=='success'){
	    					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"success","timeout":"2000"});
	    					$.adminWiki.initSearchDataTable();
	    					$("#wiki_modal").modal('hide');
	    				}else{
	    					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"warning"});
	    				}
	    			}
	    		});
			}else{
				$.ajax({
	    			type : "post",
	    			url : $.ace.getContextPath() + "/admin/wiki/update",
	    			data:{
	    				"wiki.id":$("#wikiId").val(),
	    				"wiki.name":$("#name").val(),
	    				"wiki.remark":$("#remark").val(),
	    				"wiki.creater":$("#creater").val(),
	    				"wiki.type":$("#type").val()
	    			},
	    			dataType : "json",
	    			success : function(json) {
	    				if(json.resultMap.state=='success'){
	    					$("#user_edit_modal").modal('hide');
	    					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"success","timeout":"2000"});
	    					$.adminWiki.initSearchDataTable();
	    					$("#wiki_modal").modal('hide');
	    				}else{
	    					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"warning"});
	    				}
	    			}
	    		});
			}
		},
		showEdit: function (id){
			$("#wikiId").val(id);
			$.adminWiki.toSave=false;
			$.ajax({
    			type : "get",
    			url : $.ace.getContextPath() + "/admin/wiki/get?id="+id,
    			dataType : "json",
    			success : function(json) {
    				if(json.resultMap.state=='success'){
    					$("#user_modal_header_label").text("修改分类");
    					$("#wiki_modal").modal('show');
    					$("#name").val(json.resultMap.wiki.name);
    					$("#remark").val(json.resultMap.wiki.remark);
    					$("#type").val(json.resultMap.wiki.type);
    					$("#creater").val(json.resultMap.wiki.creater);
    				}else{
    					noty({"text":""+ json.resultMap.msg +"","layout":"top","type":"warning"});
    				}
    			}
    		});
		}
};