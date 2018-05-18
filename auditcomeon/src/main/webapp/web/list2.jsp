<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>工程管理信息系统</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/paginathing.js" ></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-datetimepicker.min.css"/>
<link rel="stylesheet" 
	href="${pageContext.request.contextPath }/css/bootstrapValidator.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.min.js" ></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.zh-CN.js" ></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrapValidator.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/shigong.css" />
<link rel="stylesheet" 
	href="${pageContext.request.contextPath }/css/toastr.min.css" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/toastr.min.js" ></script>
<style>
	.audit{
		display: none;
	}
	
	.showaudit{
		display: block;
	}
	.audit-body{
		box-sizing: border-box;
	}
</style>
</head>
<body>
	<div id="menu">
		<nav class="navbar navbar-expand-sm navbar-light bg-success">
			<div class="col-lg-2">
				<a class="navbar-brand">
        <img src="${pageContext.request.contextPath }/img/logo.png" alt="logo" style="height:40px;">
     </a >
			</div>
			<div class="col-lg-4">
				<span class="navbar-text font-italic" style="font-size: 28px; letter-spacing: 5px; font-weight: bold;">工程管理信息系统</span>
			</div>
			<div class="col-lg-5"></div>
			<div class="col-lg-1">
				<input class="btn btn-outline-warning"  type="button" id="out" value="退		出"></input>
				<!--<form class="form-inline">
					<div class="input-group col-1">
						<span class="input-group-addon"></span>
					</div>
					<div class="input-group col-5">
						
					</div>
					<input class="btn btn-outline-warning"  type="button" id="out" value="退		出"></input>
				</form>-->
			</div>
		</nav>

		<div class="left-menu and nav nav-tabs" id="aaa">
			<div id="logo-div">审计处</div>
			<div id="information">
				<p> ${user2.name} </p>
				<p> ${user2.username} </p>
			</div>
			<div class="menu-title">账号管理</div>
			<div class="menu-counte" href="#thir" role="tab"
				data-toggle="tab">
				<span class="badge badge-pill badge-primary"
					style="margin-right: 10px;">0</span>修改密码
			</div>
			<div class="menu-title">工程管理</div>
			<div class="menu-counte menu-counte-active" href="#one" role="tab"
				data-toggle="tab" aria-controls="one">
				<span class="badge badge-pill badge-primary"
					style="margin-right: 10px;">1</span>工程信息
			</div>
			<div class="menu-counte" href="#two" role="tab" data-toggle="tab"
				aria-controls="two">
				<span class="badge badge-pill badge-primary"
					style="margin-right: 10px;">2</span>派发工程
			</div>
			<div class="menu-counte" href="#thour" role="tab" data-toggle="tab"
				aria-controls="two">
				<span class="badge badge-pill badge-primary"
					style="margin-right: 10px;">3</span>审计工程
			</div>
		</div>

		<div class="right-menu">
			<div class="tab-content">
				<div class="tab-pane active" id="one">
					<div class="tab-pane-hend form-inline">
						<button class="btn btn-xs btn-outline-warning" data-toggle="modal"
							data-target="#addOne">查看工程</button>
					</div>
					<table class="table table-bordered table-hover" id="GCproect">
						<tr>
							<th class="text-center h3 text-info" colspan="6">工程信息表</th>
						</tr>
						<tr>
							<th class="text-center">工程ID</th>
							<th class="text-center">工程名称</th>
							<th class="text-center">年份</th>
							<th class="text-center">报送金额</th>
							<th class="text-center">报审金额</th>
							<th class="text-center">操作</th>  
						</tr>
						<tbody id="tbody-result">
						</tbody>
					</table>
					<!--模态框-->
				</div>
				<div class="tab-pane" id="two">
					<div class="tab-pane-hend form-inline">
						<!--data-toggle数据切换-->
						<button class="btn btn-xs btn-outline-warning" value="0" id="audita">一	审</button>
						<button class="btn btn-xs btn-outline-warning" style="margin-left: 20px;" value="1" id="auditb">二	审</button>
						<button class="btn btn-xs btn-outline-warning" style="margin-left: 20px;" value="2" id="auditc">三	审</button>
					</div>
					<div class="audit-body">
						<div class="audit showaudit">
							<!--一审的表格-->
							<table class="table table-bordered table-hover" id="GCproect">
								<tr>
									<th class="text-center h3 text-info" colspan="6">工程信息表</th>
								</tr>
								<tr>
									<th class="text-center">工程ID</th>
							<th class="text-center">工程名称</th>
							<th class="text-center">年份</th>
							<th class="text-center">报送金额</th>
							<th class="text-center">报审金额</th>
							<th class="text-center">操作</th>  
								</tr>
								<tbody id="tbody_1">
								</tbody>
							</table>
						</div>
						<div class="audit">
							<!--二审的表格-->
							<table class="table table-bordered table-hover" id="#">
								<tr>
									<th class="text-center h3 text-info" colspan="6">工程信息表</th>
								</tr>
								<tr>
									<th class="text-center">工程ID</th>
									<th class="text-center">审核者</th>
									<th class="text-center">初审金额</th>
									<th class="text-center">核减额</th>
									<th class="text-center">核减率</th>
									<th class="text-center">操作</th>  
								</tr>
								<tbody id="tbody_2">
								</tbody>
							</table>
						</div>
						<div class="audit">
							<!--三审的表格-->
							<table class="table table-bordered table-hover" id="#">
								<tr>
									<th class="text-center h3 text-info" colspan="6">工程信息表</th>
								</tr>
								<tr>
									<th class="text-center">工程ID</th>
									<th class="text-center">审核者</th>
									<th class="text-center">二审金额</th>
									<th class="text-center">核减额</th>
									<th class="text-center">核减率</th>
									<th class="text-center">操作</th>    
								</tr>
								<tbody id="tbody_3">
								</tbody>
							</table>
						</div>
					</div>
					<!--模态框-->
     <div class="modal fade" id="jiajia">
      <div class="modal-dialog">
       <div class="modal-content">
        <div class="modal-header">
         <h4 class="modal-title">工程审核</h4>
        </div>
        <div class="modal-body">
         <div class="container-fluid">
          <form class="form-horizontal" id="auditProject" method="post">
           <div class="form-group form-inline">
            <label for="bumen" class="col-3 control-label">审核部：</label> 
            <select class="col-7 form-control" id="bumen" onchange="selectBumen()">
             <option>...请选择审核部门...</option>
             
            </select> <input id="shDm" name="shDm" readonly="true"
             style="display: none;" />
           </div>
           <div class="form-group form-inline">
            <label for="shenheren" class="col-3 control-label">审核人：</label> 
            <select class="col-7 form-control" id="shenheren" onchange="selectDname()">
             <option>...请选择审核部门...</option>
            </select> <input id="shName" name="shName" readonly="true" style="display: none;"
              />
        <input id="audit1Id" name="audit1Id" readonly="true" style="display: none;"/>
           </div>
          </form>
         </div>
        </div>
        <div class="modal-footer">
         <button type="button" class="btn btn-xs btn-warning"
          data-dismiss="modal" id="cleanGCC">取消</button>
         <button type="button" class="btn btn-xs btn-primary" id="paifa" data-dismiss="modal">派发</button>
        </div>
       </div>
      </div>
     </div>
				</div>
				<div class="tab-pane" id="thir">
					<div class="tab-pane-thir">
						<form class="form-horizontal" id="form-horizontal">
							<div class="form-group form-inline">
								<label for="sKnot" class="col-3 control-label">原密码:</label>
								<input type="text" class="col-7 form-control fc-clear" id="bpwd" name="startname" />
							</div>
							<div class="form-group form-inline">
								<label for="sKnot" class="col-3 control-label">新密码:</label>
								<input type="text" class="col-7 form-control fc-clear" id="npwd" name="passwords" required />
							</div>
							<div class="form-group form-inline">
								<label for="sKnot" class="col-3 control-label">重复密码:</label>
								<input type="text" class="col-7 form-control fc-clear" id="cnpwd" name="confirmPassword"
								   required />
							</div>
							<div class="form-group text-right">
								<button type="reset" class="btn btn-xs btn-warning" style="margin-right: 20px;">取消</button>
								<button type="button" class="btn btn-xs btn-primary" style="margin-right: 70px;" id="psave">保存</button>
							</div>
						</form>
					</div>
				</div>
				
				<div class="tab-pane" id="thour">
					啦啦啦
				</div>
			</div>
		</div>
	</div>
</body>
<!--先加载样式再添加字段-->
<script>
	$("#tbody_1").paginathing({
		perPage: 5,
		firstText: '首页',
		lastText: '末页',
//	  	insertAfter: '#GCproect',
//	  	pageNumbers: true
	})
</script>
<script>
	function getId(r){
		/* var i=r.id;
		alert(i); */
		var i=r.parentNode.parentNode.rowIndex;
		var tr = $(r).parent().parent().children("td").eq(0).text();
		document.getElementById("audit1Id").value=tr;
		$('#paifa').click(function(){
			$.ajax({
				"url":"${pageContext.request.contextPath}/showIdBelong.do",
				"data":"name="+$("#shName").val()+"&projectid="+$("#audit1Id").val(),
				"type":"POST",
		  		"dataType":"json",
		  		"success":function(obj){
		  			if(obj.state==1){
		  				toastr.options={
			  			        closeButton:true
			  			       }
			  			       toastr.info(obj.message);
		  				//alert(obj.message);
		  			}	  						
		  		}
			})
		})		
	}
	function getId2(r){
		var i=r.parentNode.parentNode.rowIndex;
		var tr = $(r).parent().parent().children("td").eq(0).text();
		document.getElementById("audit1Id").value=tr;
		$('#paifa').click(function(){
			$.ajax({
				"url":"${pageContext.request.contextPath}/showIdBelong2.do",
				"data":"name="+$("#shName").val()+"&projectid="+$("#audit1Id").val(),
				"type":"POST",
		  		"dataType":"json",
		  		"success":function(obj){
		  			var i=r.parentNode.parentNode.rowIndex;
		  			if(obj.state==1){
		  				//document.getElementById("tbody_2").deleteRow(i);
		  				toastr.options={
			  			        closeButton:true
			  			       }
			  			       toastr.info(obj.message);
		  			}	  			
		  		}
			})
		})		
	}
	function getId3(r){
		var i=r.parentNode.parentNode.rowIndex;
		/* document.getElementById("tbody_3").deleteRow(i); */
		var tr = $(r).parent().parent().children("td").eq(0).text();
		document.getElementById("audit1Id").value=tr;
		$('#paifa').click(function(){
			$.ajax({
				"url":"${pageContext.request.contextPath}/showIdBelong3.do",
				"data":"name="+$("#shName").val()+"&projectid="+$("#audit1Id").val(),
				"type":"POST",
		  		"dataType":"json",
		  		"success":function(obj){
		  			if(obj.state==1){
		  				toastr.options={
			  			        closeButton:true
			  			       }
			  			       toastr.info(obj.message);
		  				document.getElementById("tbody_3").deleteRow(i);

		  			}	  			
		  		}
			})
		})		
	}
	
	function selectDname(){
		var select=document.getElementById("shenheren");
		var index=select.selectedIndex;
		document.getElementById("shName").value=select.options[index].value;
	}
	function selectBumen(){
		var  select=document.getElementById("bumen");
		var index=select.selectedIndex ;   
		document.getElementById("shDm").value=select.options[index].value;
		$.ajax({
			"url":"${pageContext.request.contextPath}/showDm.do",
			"data":"name="+$("#shDm").val(),
			"type":"POST",
			"dataType":"json",
			"success":function(obj){
				//alert(obj.state);
				 var cNode=document.getElementById("shenheren");
				cNode.innerHTML="";
				var option = new Option("...请选择...");
				cNode.appendChild(option);
				for (i = 0; i < obj.data.length; i++) {
					//alert(obj.data[i].name);
					var op=new Option(obj.data[i],obj.data[i]);
					cNode.appendChild(op); 
				}
				
			}
		})
	}
	$(function(){
		$("#audita").click(function(){
			var dv=$(this).val();
			$(".audit").eq(dv).addClass("showaudit").siblings().removeClass("showaudit");
			
			var str="${user2.belong}";
				$.ajax({
					"url":"${pageContext.request.contextPath}/selectAudit1.do",
					"data":"departDest="+str,
					"type":"GET",
					"dataType":"json",
					"success":function(obj){
						var str = "";  
						var str2="暂无数据"
						var tbody=window.document.getElementById("tbody_1");  
						if(obj.data!=null){
							for(i=0;i<obj.data.length;i++){
								 str += "<tr id=f"+i+">" +  
			                        "<td class='text-center'>" + obj.data[i].id + "</td>" +  
			                        "<td class='text-center'>" + obj.data[i].name + "</td>" +  
			                        "<td class='text-center'>" + obj.data[i].year + "</td>" +
			                        "<td class='text-center'>" + obj.data[i].priceReport + "</td>" +
			                        "<td class='text-center'>" + obj.data[i].priceAudit + "</td>" +
			                        "<td class='text-center'>" +"<button class='btn btn-primary btn-sm' data-toggle='modal' data-target='#jiajia' id=f"+i+" onclick='getId(this)'>"
									+"派发"+"</button>"+ "</td>" +
			                        "</tr>"; 
							}
							tbody.innerHTML = str;  
							
						}
					}
						
				})
		
		});
		$("#auditb").click(function(){
			var dv=$(this).val();
			$(".audit").eq(dv).addClass("showaudit").siblings().removeClass("showaudit");
			var str="${user2.belong}";
				$.ajax({
					"url":"${pageContext.request.contextPath}/showAudit1.do",
					"data":"name="+str,
					"type":"GET",
					"dataType":"json",
					"success":function(obj){
						var str = "";  
						var str2="暂无数据"
						var tbody=window.document.getElementById("tbody_2");  
						if(obj.data!=null){
							for(i=0;i<obj.data.length;i++){
								 str += "<tr>" +  
			                        "<td class='text-center'>" + obj.data[i].projectid + "</td>" +  
			                        "<td class='text-center'>" + obj.data[i].auditor + "</td>" +  
			                        "<td class='text-center'>" + obj.data[i].priceTotal + "</td>" +
			                        "<td class='text-center'>" + obj.data[i].priceDecrease + "</td>" +
			                        "<td class='text-center'>" + obj.data[i].rateDecrease + "</td>" +
			                        "<td class='text-center'>" +"<button class='btn btn-primary btn-sm' data-toggle='modal' data-target='#jiajia' onclick='getId2(this)'>"
									+"派发"+"</button>"+ "</td>" +
			                        "</tr>"; 
							}
							tbody.innerHTML = str;  
							
						}
					}
						
				})
		});
		$("#auditc").click(function(){
			var dv=$(this).val();
			$(".audit").eq(dv).addClass("showaudit").siblings().removeClass("showaudit");
			var str="${user2.belong}";
			$.ajax({
				"url":"${pageContext.request.contextPath}/showAudit2.do",
				"data":"name="+str,
				"type":"GET",
				"dataType":"json",
				"success":function(obj){
					var str = "";  
					var str2="暂无数据"
					var tbody=window.document.getElementById("tbody_3");  
					if(obj.data!=null){
						for(i=0;i<obj.data.length;i++){
							 str += "<tr id="+i+">" +  
		                        "<td class='text-center'>" + obj.data[i].projectid + "</td>" +  
		                        "<td class='text-center'>" + obj.data[i].auditor + "</td>" +  
		                        "<td class='text-center'>" + obj.data[i].priceTotal + "</td>" +
		                        "<td class='text-center'>" + obj.data[i].priceDecrease + "</td>" +
		                        "<td class='text-center'>" + obj.data[i].rateDecrease + "</td>" +
		                        "<td class='text-center'>" +"<button class='btn btn-primary btn-sm' data-toggle='modal' data-target='#jiajia' onclick='getId3(this)'>"
								+"派发"+"</button>"+ "</td>" +
		                        "</tr>"; 
						}
						tbody.innerHTML = str;  
						
					}
				}
					
			})
		})
	})
</script>
<!--和施工单位用的修改密码验证一样-->
<script>
    $(document).ready(function() {
    	$('#form-horizontal').bootstrapValidator({
    		feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				startname: {
					validators: {
						notEmpty: {
							message: '用户名不能为空'
						},
					regexp: {
						regexp: /^[a-zA-Z0-9_\.]+$/,
						message: '只接受数字和字母 '
						}
					}
				},
				passwords: {
					validators: {
						notEmpty: {
							message: '密码不能为空'
						},
						different: {
							field: 'startname',
							message:'新密码不能和旧密码相同。'
						},
					}
				},
				confirmPassword: {
					validators: {
						notEmpty: {
							message: '密码不能为空'
						},
						identical: {
							field: 'passwords',
							message:'两次输入的密码不能相同。'
						}
					}
				}
			}
    	})
    })
</script>
<script>
		
		window.onload=function(){
			var str="${user2.belong}"
			$.ajax({
				"url":"${pageContext.request.contextPath}/showAll.do",
				"data":"departDest="+str,
				"type":"GET",
				"dataType":"json",
				"success":function(obj){
					var str = "";  
					var str2="暂无数据"
					var tbody=window.document.getElementById("tbody-result");  
					if(obj.data!=null){
						for(i=0;i<obj.data.length;i++){
							 str += "<tr>" +  
		                        "<td class='text-center'>" + obj.data[i].id + "</td>" +  
		                        "<td class='text-center'>" + obj.data[i].name + "</td>" +  
		                        "<td class='text-center'>" + obj.data[i].year + "</td>" +
		                        "<td class='text-center'>" + obj.data[i].priceReport + "</td>" +
		                        "<td class='text-center'>" + obj.data[i].priceAudit + "</td>" +
		                        "<td class='text-center'>" +"<button class='btn btn-primary btn-sm' data-toggle='modal' data-target='#layer' >"
								+"查看"+"</button>"+ "</td>" +
		                        "</tr>"; 
						}
						tbody.innerHTML = str;  
						$("#tbody-result").paginathing({
						       perPage: 5,
						       firstText: '首页',
						       lastText: '末页',
						        //insertAfter: '#GCproect',
//						         pageNumbers: true
						      })
					}
				}
					
			})
			$.ajax({
		"url":"${pageContext.request.contextPath}/showDname.do",
		"type":"POST",
		"dataType":"json",
		"success":function(obj){
			//alert(obj.state);
			 var cNode=document.getElementById("bumen");
			cNode.innerHTML="";
			var option = new Option("...请选择...");
			cNode.appendChild(option);
			for (i = 0; i < obj.data.length; i++) {
				//alert(obj.data[i].name);
				var op=new Option(obj.data[i].name,obj.data[i].name);
				cNode.appendChild(op); 
			}
			
		}
	})
		}
	</script>
	
<script>	
		
		$('#psave').click(function(){
			$.ajax({
				"url":"${pageContext.request.contextPath}/updatePwd.do",
				"data":"id="+${user2.id}+"&bpwd="+$("#bpwd").val()+"&npwd="+$("#npwd").val(),
				"type":"POST",
		  		"dataType":"json",
		  		"success":function(obj){
		  			toastr.options={
	  				        closeButton:true
	  				       }
	  				       toastr.info(obj.message);
		  		}
			});
		})
		
		$(".container-fluid form input").each(function(){
			$(this).val('');
		});
		$(".container-fluid form select").each(function(){
			$(this).val('');
		})

	</script>
	<!--点击取消消除input框里的值-->
<script>
		$('#out').click(function(){
			location.href="${pageContext.request.contextPath}/web/login.jsp";
		})
		$(".menu-counte").click(function(){
			$(this).addClass("menu-counte-active").siblings().removeClass("menu-counte-active");
		})
	</script>
</html>



