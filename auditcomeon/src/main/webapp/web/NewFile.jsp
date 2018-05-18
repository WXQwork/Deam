<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>工程管理信息系统</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/paginathing.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" /> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-datetimepicker.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrapValidator.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.zh-CN.js" ></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrapValidator.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/shigong.css" />

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
				<a class="navbar-brand">Navbar</a>
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
			<div id="logo-div">事务所</div>
			<div id="information">
				<p> ${user.name} </p>
				<p> ${user.username} </p>
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
					style="margin-right: 10px;">1</span>一<span style="margin-right: 20px;"></span>审
			</div>
			<div class="menu-counte" href="#two" role="tab"
				data-toggle="tab" aria-controls="one">
				<span class="badge badge-pill badge-primary"
					style="margin-right: 10px;">1</span>二<span style="margin-right: 20px;"></span>审
			</div>
			<div class="menu-counte" href="#thour" role="tab"
				data-toggle="tab" aria-controls="one">
				<span class="badge badge-pill badge-primary"
					style="margin-right: 10px;">1</span>三<span style="margin-right: 20px;"></span>审
			</div>
		</div>

		<div class="right-menu">
			<div class="tab-content">
				<div class="tab-pane active" id="one">
					<div class="tab-pane-hend form-inline">
						<button class="btn btn-xs btn-outline-warning" data-toggle="modal"
							data-target="#addall">查看工程</button>
					</div>
					<table class="table table-bordered table-hover" id="#">
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
						<tbody id="audit1">
						</tbody>
					</table>
					
					
					<!--一审模态框-->
					<div class="modal fade" id="oneshen" role="diashenn">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title" >一审</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal" id="audit_1">
											<div class="form-group form-inline">
											<input type="text"  id="projectid" name="projectid" readonly="true" style="display:none" />
												<label for="onemoney" class="col-4 control-label">初审金额:</label> 
												<input type="text" class="col-6 form-control fc-clear" id="priceT" name="priceT" placeholder onchange="jisuan()"/>
												<span class="input-group-addon" style="margin-left: 10px;">&yen;</span>
											</div>
											<div class="form-group form-inline">
												<label for="onemoneye" class="col-4 control-label">初审核减额:</label> 
												<input type="text"  id="priceD" name="priceD" readonly="true"  style="display:none"/>
												<input type="text" class="col-6 form-control fc-clear"  name="priceDZ" id="priceDZ" readonly  placeholder="初审核减额"/>
											</div>
												
											<div class="form-group form-inline">
												<label for="onemoneyl" class="col-4 control-label">初审核减率:</label>
												<input type="text"  id="rateD" name="rateD" readonly="true" style="display:none"/> 
												<input type="text" class="col-6 form-control fc-clear"  name="rateDZ" id="rateDZ" readonly placeholder="初审核减率"/>
											</div>
											<div class="form-group form-inline">
												<label for="sDate" class="col-4 control-label">初审送出时间:</label>
												<div class="date form_datetime">
                    								<input class="form-control" size="14" type="text" name="Dsend" placeholder="请选择日期" readonly>
													<span class="input-group-addon" style="cursor: pointer;"><span class="glyphicon glyphicon-th"></span></span>
                								</div>
											</div>
											<div class="form-group form-inline">
												<label for="sDate" class="col-4 control-label">初审送回时间:</label>
												<div class="date form_datetime">
                    								<input class="form-control" size="14" type="text" name="Dreturn" placeholder="请选择日期" readonly>
													<span class="input-group-addon" style="cursor: pointer;"><span class="glyphicon glyphicon-th"></span></span>
                								</div>
											</div>
											
										</form>
										
                    						<input type="text" name="priceA" id="priceA" readonly="true" style="display:none" >
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-warning" data-dismiss="modal" id="">取消</button>
									<button type="button" class="btn btn-xs btn-primary" id="audit1TJ" data-dismiss="modal">保存</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				
					
					
				
				<div class="tab-pane" id="two">
					<div class="tab-pane-hend form-inline">
						<button class="btn btn-xs btn-outline-warning" data-toggle="modal"
							data-target="#">审核工程</button>
					</div>
					<table class="table table-bordered table-hover" id="#">
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
						<tbody id="audit2">
						
						</tbody>
					</table>
					
					<!--二审模态框-->
					<!--在下面ajax里刷新二审的这个里
						"<td class='text-center'>"
						+"<button class='btn btn-primary btn-sm' data-toggle='modal' data-target='#oneshen' onclick=''>"
						+"审核"
						+"</button>"
						+"</td>"
						把data-target='#oneshen'变成data-target='#twoshen'
						三审同理
						
						！！还有里面的input里的id和name自己改
					-->
					<div class="modal fade" id="twoshen" role="diashenn">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title" >二审</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal" id="audit_1">
											<div class="form-group form-inline">
											<input type="text"  id="projectid" name="projectid" readonly="true" style="display:none" />
												<label for="onemoney" class="col-4 control-label">二审金额:</label> 
												<input type="text" class="col-6 form-control fc-clear" id="priceT" name="priceT" placeholder onchange="jisuan()"/>
												<span class="input-group-addon" style="margin-left: 10px;">&yen;</span>
											</div>
											<div class="form-group form-inline">
												<label for="onemoneye" class="col-4 control-label">二审核减额:</label> 
												<input type="text"  id="priceD" name="priceD" readonly="true"  style="display:none"/>
												<input type="text" class="col-6 form-control fc-clear"  name="priceDZ" id="priceDZ" readonly  placeholder="初审核减额"/>
											</div>
												
											<div class="form-group form-inline">
												<label for="onemoneyl" class="col-4 control-label">二审核减率:</label>
												<input type="text"  id="rateD" name="rateD" readonly="true" style="display:none"/> 
												<input type="text" class="col-6 form-control fc-clear"  name="rateDZ" id="rateDZ" readonly placeholder="初审核减率"/>
											</div>
											<div class="form-group form-inline">
												<label for="sDate" class="col-4 control-label">二审送出时间:</label>
												<div class="date form_datetime">
                    								<input class="form-control" size="14" type="text" name="Dsend" placeholder="请选择日期" readonly>
													<span class="input-group-addon" style="cursor: pointer;"><span class="glyphicon glyphicon-th"></span></span>
                								</div>
											</div>
											<div class="form-group form-inline">
												<label for="sDate" class="col-4 control-label">二审送回时间:</label>
												<div class="date form_datetime">
                    								<input class="form-control" size="14" type="text" name="Dreturn" placeholder="请选择日期" readonly>
													<span class="input-group-addon" style="cursor: pointer;"><span class="glyphicon glyphicon-th"></span></span>
                								</div>
											</div>
											
										</form>
										
                    						<input type="text" name="priceA" id="priceA" readonly="true" style="display:none" >
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-warning" data-dismiss="modal" id="">取消</button>
									<button type="button" class="btn btn-xs btn-primary" id="" data-dismiss="modal">保存</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="tab-pane" id="thour">
					<div class="tab-pane-hend form-inline">
						<button class="btn btn-xs btn-outline-warning" data-toggle="modal"
							data-target="#">审核工程</button>
					</div>
					<table class="table table-bordered table-hover" id="#">
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
						<tbody id="audit3">
						</tbody>
					</table>
					
					
					<!--三审模态框-->
					<div class="modal fade" id="oneshen" role="diashenn">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title" >三审</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal" id="audit_1">
											<div class="form-group form-inline">
											<input type="text"  id="projectid" name="projectid" readonly="true" style="display:none" />
												<label for="onemoney" class="col-4 control-label">三审金额:</label> 
												<input type="text" class="col-6 form-control fc-clear" id="priceT" name="priceT" placeholder onchange="jisuan()"/>
												<span class="input-group-addon" style="margin-left: 10px;">&yen;</span>
											</div>
											<div class="form-group form-inline">
												<label for="onemoneye" class="col-4 control-label">三审核减额:</label> 
												<input type="text"  id="priceD" name="priceD" readonly="true"  style="display:none"/>
												<input type="text" class="col-6 form-control fc-clear"  name="priceDZ" id="priceDZ" readonly  placeholder="初审核减额"/>
											</div>
												
											<div class="form-group form-inline">
												<label for="onemoneyl" class="col-4 control-label">三审核减率:</label>
												<input type="text"  id="rateD" name="rateD" readonly="true" style="display:none"/> 
												<input type="text" class="col-6 form-control fc-clear"  name="rateDZ" id="rateDZ" readonly placeholder="初审核减率"/>
											</div>
											<div class="form-group form-inline">
												<label for="sDate" class="col-4 control-label">三审送出时间:</label>
												<div class="date form_datetime">
                    								<input class="form-control" size="14" type="text" name="Dsend" placeholder="请选择日期" readonly>
													<span class="input-group-addon" style="cursor: pointer;"><span class="glyphicon glyphicon-th"></span></span>
                								</div>
											</div>
											<div class="form-group form-inline">
												<label for="sDate" class="col-4 control-label">三审送回时间:</label>
												<div class="date form_datetime">
                    								<input class="form-control" size="14" type="text" name="Dreturn" placeholder="请选择日期" readonly>
													<span class="input-group-addon" style="cursor: pointer;"><span class="glyphicon glyphicon-th"></span></span>
                								</div>
											</div>
											
										</form>
										
                    						<input type="text" name="priceA" id="priceA" readonly="true" style="display:none" >
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-warning" data-dismiss="modal" id="">取消</button>
									<button type="button" class="btn btn-xs btn-primary" id="" data-dismiss="modal">保存</button>
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
				
			</div>
		</div>
	</div>
</body>
<script>
	$(function(){
		$("#audita").click(function(){
			var dv=$(this).val();
			$(".audit").eq(dv).addClass("showaudit").siblings().removeClass("showaudit");
		});
		$("#auditb").click(function(){
			var dv=$(this).val();
			$(".audit").eq(dv).addClass("showaudit").siblings().removeClass("showaudit");
		});
		$("#auditc").click(function(){
			var dv=$(this).val();
			$(".audit").eq(dv).addClass("showaudit").siblings().removeClass("showaudit");
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
			var idd=${user.id}
			$.ajax({
				"url":"${pageContext.request.contextPath}/UserAudit1.do",
				"data":"id="+idd,
				"type":"GET",
				"dataType":"json",
				"success":function(obj){
					var str = "";  
					var str2="暂无数据"
					var tbody=window.document.getElementById("audit1");  
					if(obj.data!=null){
						for(i=0;i<obj.data.length;i++){
							 str += "<tr>" +  
		                        "<td class='text-center'>" + obj.data[i].id + "</td>" +  
		                        "<td class='text-center'>" + obj.data[i].name + "</td>" +  
		                        "<td class='text-center'>" + obj.data[i].year + "</td>" +
		                        "<td class='text-center'>" + obj.data[i].priceReport + "</td>" +
		                        "<td class='text-center'>" + obj.data[i].priceAudit + "</td>" +
		                        "<td class='text-center'>" +"<button class='btn btn-primary btn-sm' data-toggle='modal' data-target='#oneshen' onclick='shenhe1(this)'>"
								+"审核"+"</button>"+ "</td>" +
		                        "</tr>"; 
						}
						tbody.innerHTML = str;  
					}
				}					
			})
			$.ajax({
				"url":"${pageContext.request.contextPath}/UserAudit2.do",
				"data":"id="+idd,
				"type":"GET",
				"dataType":"json",
				"success":function(obj){
					var str = "";  
					var str2="暂无数据"
					var tbody=window.document.getElementById("audit2");  
					if(obj.data!=null){
						for(i=0;i<obj.data.length;i++){
							 str += "<tr>" +  
		                        "<td class='text-center'>" + obj.data[i].projectid + "</td>" +  
		                        "<td class='text-center'>" + obj.data[i].auditor + "</td>" +  
		                        "<td class='text-center'>" + obj.data[i].priceTotal + "</td>" +
		                        "<td class='text-center'>" + obj.data[i].priceDecrease + "</td>" +
		                        "<td class='text-center'>" + obj.data[i].rateDecrease + "</td>" +
		                        "<td class='text-center'>" +"<button class='btn btn-primary btn-sm' data-toggle='modal' data-target='#oneshen' onclick=''>"
								+"审核"+"</button>"+ "</td>" +
		                        "</tr>"; 
						}
						tbody.innerHTML = str;  
					}
				}					
			})
		}
	</script>
	<script>
		function jisuan(){
			var i=document.getElementById("priceT").value;//初审金额
			var i2=document.getElementById("priceA").value;//报审金额
			document.getElementById("priceD").value=i2-i;//核减额
			document.getElementById("rateD").value=(i2-i)/i2;
			$("#priceDZ").attr('placeholder',i2-i);
			$("#rateDZ").attr('placeholder',(i2-i)/i2);
			
		}
		function shenhe1(r){
			var i=r.parentNode.parentNode.rowIndex;
			
			var tr = $(r).parent().parent().children("td").eq(0).text();
			
			$.ajax({
				"url":"${pageContext.request.contextPath}/findById.do",
				"data":"id="+tr,
				"type":"GET",
				"dataType":"json",
		  		"success":function(obj){
		  			alert(obj.data.priceAudit);
		  			document.getElementById("projectid").value=obj.data.id;
		  		document.getElementById("priceA").value=obj.data.priceAudit;
		  			 
		  			
		  		}
			})
		}
	</script>
<script>
		$('#audit1TJ').click(function(){
			$.ajax({
				"url":"${pageContext.request.contextPath}/updateAudit1.do",
				"data":$("#audit_1").serialize(),
				"type":"POST",
		  		"dataType":"json",
		  		"success":function(obj){
		  			alert(obj.message);
		  		}
			});
		})
		$('#psave').click(function(){
			$.ajax({
				"url":"${pageContext.request.contextPath}/updatePwd.do",
				"data":"id="+${user.id}+"&bpwd="+$("#bpwd").val()+"&npwd="+$("#npwd").val(),
				"type":"POST",
		  		"dataType":"json",
		  		"success":function(obj){
		  			alert(obj.message);
		  		}
			});
		})
		$('#save').click(function(){
		$.ajax({
			"url":"${pageContext.request.contextPath}/insertProject.do",
			"data":$("#insertProject").serialize(),
			"type":"POST",
	  		"dataType":"json",
	  		"success":function(obj){
	  			var dv=document.getElementById("GCproect");
				var len=dv.rows.length;
				var x=dv.insertRow(len);
				var tr="<tr>";
					tr+="<td class='text-center'>" + obj.data.id + "</td>" +  
		            "<td class='text-center'>" + obj.data.name + "</td>" +  
		            "<td class='text-center'>" + obj.data.year + "</td>";
				tr+="<td class='text-center'>"
				+"<button class='btn btn-primary btn-sm' data-toggle='modal' data-target='#layer' onclick='deleteRow(this)'>"
				+"删除"+"</button>"
				+"</td>";
				tr+="</tr>";
				x.innerHTML=tr;
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
	<!--显示日期函数-->
<script type="text/javascript">
     $(".form_datetime").datetimepicker({
      format: "yyyy-mm-dd",
      autoclose: true,
      todayBtn: true,
      todayHighlight: true,
      showMeridian: true,
      pickerPosition: "bottom-left",
      language: 'zh-CN',//中文，需要引用zh-CN.js包
      startView: 2,//月视图
      minView: 2,//日期时间选择器所能够提供的最精确的时间选择视图
      bootcssVer: 3,
      startDate: '2018-01-01'
     }); 
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




