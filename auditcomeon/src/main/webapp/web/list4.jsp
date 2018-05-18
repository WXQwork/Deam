<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta charset="UTF-8">
<title>工程管理信息系统</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/paginathing.js" ></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" /> --%>
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
<link rel="stylesheet" 
	href="${pageContext.request.contextPath }/css/toastr.min.css" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/toastr.min.js" ></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrapValidator.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/shigong2.css" />
</head>
<body>
	<div id="menu">
		<nav class="navbar navbar-expand-sm navbar-light bg-success">
			<div class="col-lg-2 col-sm-3" id="nav">
				<a class="navbar-brand">
        <img src="${pageContext.request.contextPath }/img/logo.png" alt="logo" style="height:40px;">
     </a >
			</div>
			<div class="col-lg-2 col-sm-6" id="nav1">
				<span class="navbar-text font-italic" style="font-size: 28px; letter-spacing: 5px; font-weight: bold;">工程管理信息系统</span>
			</div>
			<div class="col-lg-7" id="nav2"></div>
			<div class="col-lg-1 col-sm-3 text-right" id="nav3">
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
		<div class="row-offcanvas row-offcanvas-left">
		<div class="left-menu and nav nav-tabs" id="aaa">
			<div id="logo-div">施工单位</div>
			<div id="information">
				<p> ${user.name } </p>
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
					style="margin-right: 10px;">1</span>我的工程
			</div>
			<div class="menu-counte" href="#two" role="tab" data-toggle="tab"
				aria-controls="two">
				<span class="badge badge-pill badge-primary"
					style="margin-right: 10px;">2</span>查看进度
			</div>
		</div>

		<div class="right-menu">
			<a class="toggle-btn" id="nimei">
				<i class="glyphicon glyphicon-user"></i>
			</a>
			<div class="tab-content">
				<div class="tab-pane active" id="one">
					<div id="contence" class="tab-pane-hend form-inline">
						<button class="btn btn-xs btn-outline-warning" data-toggle="modal"
							data-target="#addOne">添加工程</button>
					</div>
					<table class="table table-bordered table-hover" id="GCproect">
						<tr>
							<th class="text-center h3 text-info" colspan="4">工程信息表</th>
						</tr>
						<tr>
							<th class="text-center">工程ID</th>
							<th class="text-center">工程名称</th>
							<th class="text-center">年份</th>
							<th class="text-center">操作</th>  
						</tr>
						<tbody id="tbody-result">
						</tbody>
					</table>

					<!--模态框-->
					<div class="modal fade" id="addOne" role="dialog"
						aria-labelledby="gridSystemModalLabar">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title" id="gridSystemModalLabar">添加工程</h4>
									<button type="button" class="close" data-dismiss="modal"
										id="cleanGC">&times;</button>
								</div>
								<div class="modal-body" id="contence3">
									<div class="container-fluid">
										<form class="form-horizontal" id="insertProject" method="post">
											<div class="form-group form-inline">
												<label for="sId" class="col-3 control-label">工程ID:</label> <input
													type="text" class="col-7 form-control fc-clear" id="sId" name="id" placeholder />
											</div>
											<div class="form-group form-inline">
												<label for="sName" class="col-3 control-label">工程名称:</label>
												<input type="text" class="col-7 form-control fc-clear" id="sName" name="name"
													placeholder />
											</div>
											<div class="form-group form-inline">
												<label for="sYear" class="col-3 control-label">年<span
													style="margin-right: 14px;"></span>份:
												</label> <select class="col-7 form-control" id="sYear" onchange="selectShow()">
													<option>...请选择年份...</option>
													<option>2018</option>
													<option>2019</option>
													<option>2020</option>
													<option>2021</option>
												</select> <input id="year" name="year" readonly="true"
													style="display: none;" />
											</div>
											<div class="form-group form-inline">
												<label for="sDate" class="col-3 control-label">收到时间:</label>
												<div class="date form_datetime">
                    								<input class="form-control" size="14" type="text" name="obtaindate" value="请选择日期" readonly>
													<span class="input-group-addon" style="cursor: pointer;"><span class="glyphicon glyphicon-th"></span></span>
                								</div>
												<!--plan2-->
												<!--<input class="form_datetime form-control" type="text" value="请选择日期" size="16">-->
													
												
												
											</div>
											<div class="form-group form-inline">
												<label for="sDepartment" class="col-3 control-label">送审部门:</label>
												<select class="col-7 form-control fc-clear" id="sDepartment"
													name="sdepartDest" onchange="selectDname()" >
													<option>...请选择部门...</option>
													</select>
												<input type="text"  id="Department"
													name="departDest"readonly="true"
													style="display: none;"  placeholder />
											</div>
											<div class="form-group form-inline">
												<!-- 当前部门 -->
												<input type="text" id="departConstruct" 
													name="departConstruct" 
													style="display: none;" />
											</div>
											<div class="form-group form-inline">
												<label for="sMoneys" class="col-3 control-label">报送金额:</label>
												<input type="text" class="col-2 form-control fc-clear" id="sMoneys"
													name="priceReport" placeholder />
												<span class="input-group-addon" style="margin-left: 10px;">&yen;</span>
												<label for="sMoneye" class="col-3 control-label">报审金额:</label>
												<input
													type="text" class="col-2 form-control fc-clear" id="sMoneye" name="priceAudit"
													placeholder />
												<span class="input-group-addon" style="margin-left: 10px;">&yen;</span>
											</div>
											
											<div class="form-group form-inline">
												<input type="text" id="departConstructid" 
													name="departConstructid" 
													style="display: none;" />
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-warning"
										data-dismiss="modal" id="cleanGCC">取消</button>
									<button type="button" class="btn btn-xs btn-primary" id="save" data-dismiss="modal">保存</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="two">
					<div id="contence" class="tab-pane-hend form-inline">
						<input type="text" class="form-control" name="id" id="findId" placeholder="请输入工程ID" style="margin-right: 5px;" / >  
            			<button class="btn btn-info btn-warning" onclick="abs()">查找</button>
					</div>
					
					<table class="table table-bordered table-hover" id="GCproect">
						<tr>
							<th class="text-center h3 text-info" colspan="6">工程信息表</th>
						</tr>
						<tr>
							<th class="text-center">工程ID</th>
							<th class="text-center">工程名称</th>
							<th class="text-center">年份</th>
							<th class="text-center">送审部门</th>
							<th class="text-center">报审金额</th>
							 <th class="text-center">操作</th>
						</tr>
						<tbody id="tbody2">
						</tbody>
					</table>
					
					<div class="modal fade" id="findin" role="diashen">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title" id="#">工程信息</h4>
									<button type="button" class="close" data-dismiss="modal" id="#">&times;</button>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<ul class="nav nav-pills" role="tablist">
    										<li class="nav-item">
      											<a class="nav-link active" data-toggle="pill" href="#home">一审</a>
    										</li>
    										<li class="nav-item">
      											<a class="nav-link" data-toggle="pill" href="#home1">二审</a>
    										</li>
    										<li class="nav-item">
      											<a class="nav-link" data-toggle="pill" href="#home2">三审</a>
    										</li>
  										</ul>
  										<div class="tab-content">
    										<div id="home" class="container tab-pane active"><br>
      											<form class="form-horizontal" id="" method="post">
      												<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">工程ID:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="ffffff" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">审核着ID:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="fauditorid" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">审核者</label> 
														<input type="text" class="col-6 form-control fc-clear" id="fauditor" name="id" readonly />
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">初审金额:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="fpriceTotal" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">核减额:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="fpriceDecrease" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">核减率:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="frateDecrease" name="id" readonly/>
													</div>
      											</form>
    										</div>
    										<div id="home1" class="container tab-pane fade"><br>
      											<form class="form-horizontal" id="" method="post">
      											<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">工程ID:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="sfffff" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">审核着ID:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="sauditorid" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">审核者</label> 
														<input type="text" class="col-6 form-control fc-clear" id="sauditor" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">二审金额:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="spriceTotal" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">核减额:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="spriceDecrease" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">核减率:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="srateDecrease" name="id" readonly/>
													</div>
      											</form>
    										</div>
    										<div id="home2" class="container tab-pane fade"><br>
      											<form class="form-horizontal" id="" method="post">
      												<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">工程ID:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="tfffff" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">审核着ID:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="tauditorid" name="id" readonly />
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">审核者</label> 
														<input type="text" class="col-6 form-control fc-clear" id="tauditor" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">三审金额:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="tpriceTotal" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">核减额:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="tpriceDecrease" name="id" readonly/>
													</div>
													<div class="form-group form-inline">
														<label for="sId" class="col-3 control-label">核减率:</label> 
														<input type="text" class="col-6 form-control fc-clear" id="trateDecrease" name="id" readonly/>
													</div>
      											</form>
    										</div>
  										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-warning" data-dismiss="modal" id="">退出</button>
								</div>
							</div>
						</div>
					</div>
					<!-- <div class="finding">
						<div class="finding-soild"></div>
						<div class="finding-one">提交</div>
						<div class="finding-two" onmouseover="cjieshao2()" onmouseout="tjieshao2()">一审</div>
						<div class="finding-thir" onmouseover="cjieshao3()" onmouseout="tjieshao3()">二审</div>
						<div class="finding-thour" onmouseover="cjieshao4()" onmouseout="tjieshao4()">三审</div>
						<div class="finding-five">通过</div>
						<div class="finding-two-fr" id="nn2">
							1
						</div>
						<div class="finding-thir-fr" id="nn3">
							2
						</div>
						<div class="finding-thour-fr" id="nn4">
							3
						</div>
					</div>-->
				</div> 
				<div class="tab-pane" id="thir">
					<div id="contence" class="tab-pane-hend form-inline text-center">
						<h4 id="contence2">修改密码</h4>
					</div>
					<div class="card">
						<div class="card-header" style="height:40px;"></div>
						<div class="card-body">
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
  						<div class="card-footer"></div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
			$("#nimei").click(function() {
				$('.row-offcanvas').toggleClass('active')
			});
		});
</script>
<script>

</script>
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

	function cjieshao2(){
		document.getElementById("nn2").style.display="block";document.getElementById("nna").style.display="block";
	}
	function tjieshao2(){
		document.getElementById("nn2").style.display="none";document.getElementById("nna").style.display="none";
	}
	function cjieshao3(){
		document.getElementById("nn3").style.display="block";document.getElementById("nna").style.display="block";
	}
	function tjieshao3(){
		document.getElementById("nn3").style.display="none";document.getElementById("nna").style.display="none";
	}
	function cjieshao4(){
		document.getElementById("nn4").style.display="block";document.getElementById("nna").style.display="block";
	}
	function tjieshao4(){
		document.getElementById("nn4").style.display="none";document.getElementById("nna").style.display="none";
	}
</script>
<!--根据后台传值改变下边的圆大小-->
<script>
	function abs(){
		var idd=document.getElementById("findId").value;
		$.ajax({
			"url":"${pageContext.request.contextPath}/findById.do",
			"data":"id="+idd,
			"type":"GET",
			"dataType":"json",
			"success":function(obj){
				var str = "";  
				var str2="暂无数据"
				var tbody=window.document.getElementById("tbody2");  
				if(obj.data!=null){
						 str = "<tr>" +  
	                        "<td class='text-center'>" + obj.data.id + "</td>" +  
	                        "<td class='text-center'>" + obj.data.name + "</td>" +  
	                        "<td class='text-center'>" + obj.data.year + "</td>" +
	                        "<td class='text-center'>" + obj.data.departDest + "</td>" +
	                        "<td class='text-center'>" + obj.data.priceAudit + "</td>" +
	                        "<td class='text-center'>" +"<button class='btn btn-primary btn-sm' data-toggle='modal' data-target='#findin' onclick='getId(this)'>"
							+"查看"+"</button>"+ "</td>" +
	                        "</tr>"; 
					}
				tbody.innerHTML = str; 
			}
			})
		/* var i=2;
		if(i==1){
			$(".finding-one").addClass('jia');
		}else if(i==2){
			$(".finding-two").addClass('jia');
		} */
	}
</script>
<!--这里有点小bug-->
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

<script>
		
		function selectShow(){
			var myselect=document.getElementById("sYear");
			var index=myselect.selectedIndex;
			document.getElementById("year").value=myselect.options[index].text;
		}
		window.onload=function(){
			      var str1="${user.id}";
			      document.getElementById("departConstructid").value=str1;
			      var str2="${user.name}";
			       document.getElementById("departConstruct").value=str2;
				 $.ajax({
					"url":"${pageContext.request.contextPath}/showDName.do",
					"type":"POST",
					"dataType":"json",
					"success":function(obj){
						//alert(obj.state);
						 var cNode=document.getElementById("sDepartment");
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
			var idd=${user.id};
			$.ajax({
				"url":"${pageContext.request.contextPath}/selectById.do",
				"data":"id="+idd,
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
		                        "<td class='text-center'>" +"<button class='btn btn-danger btn-sm' data-toggle='modal' data-target='#layer' onclick='deleteRow(this)'>"
								+"删除"+"</button>"+ "</td>" +
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
		}
		
	</script>
	<script>
	function selectDname(){
		var myselect=document.getElementById("sDepartment");
		var index=myselect.selectedIndex;
		document.getElementById("Department").value=myselect.options[index].text;
	}
		function deleteRow(r){
			var i=r.parentNode.parentNode.rowIndex;
			alert(i);
			document.getElementById("GCproect").deleteRow(i);
			var tr = $(r).parent().parent().children("td").eq(0).text();
			$.ajax({
				"url":"${pageContext.request.contextPath}/delPro.do",
				"data":"id="+tr,
				"type":"GET",
				"dataType":"json",
		  		"success":function(obj){
		  			alert(obj.message);
		  		}
			})
		}
		function getId(r){
			var i=r.parentNode.parentNode.rowIndex;
			var tr = $(r).parent().parent().children("td").eq(0).text();
			$.ajax({
				"url":"${pageContext.request.contextPath}/findByPid.do",
				"data":"id="+tr,
				"type":"GET",
				"dataType":"json",
		  		"success":function(obj){
		  			if(obj.data!=null){
		  				document.getElementById("ffffff").value=tr;
			  			document.getElementById("fauditorid").value=obj.data.auditorid;
			  			document.getElementById("fauditor").value=obj.data.auditor;
			  			document.getElementById("fpriceTotal").value=obj.data.priceTotal;
			  			document.getElementById("fpriceDecrease").value=obj.data.priceDecrease;
			  			document.getElementById("frateDecrease").value=obj.data.rateDecrease;
		  			}		  		
		  		}
			})
			$.ajax({
				"url":"${pageContext.request.contextPath}/findByPid2.do",
				"data":"id="+tr,
				"type":"GET",
				"dataType":"json",
		  		"success":function(obj){
		  			if(obj.data!=null){
		  				document.getElementById("sfffff").value=tr;
			  			document.getElementById("sauditorid").value=obj.data.auditorid;
			  			document.getElementById("sauditor").value=obj.data.auditor;
			  			document.getElementById("spriceTotal").value=obj.data.priceTotal;
			  			document.getElementById("spriceDecrease").value=obj.data.priceDecrease;
			  			document.getElementById("srateDecrease").value=obj.data.rateDecrease;
		  			}		  		
		  		}
			})
			$.ajax({
				"url":"${pageContext.request.contextPath}/findByPid3.do",
				"data":"id="+tr,
				"type":"GET",
				"dataType":"json",
		  		"success":function(obj){
		  			if(obj.data!=null){
		  				document.getElementById("tfffff").value=tr;
			  			document.getElementById("tauditorid").value=obj.data.auditorid;
			  			document.getElementById("tauditor").value=obj.data.auditor;
			  			document.getElementById("tpriceTotal").value=obj.data.priceTotal;
			  			document.getElementById("tpriceDecrease").value=obj.data.priceDecrease;
			  			document.getElementById("trateDecrease").value=obj.data.rateDecrease;
		  			}		  		
		  		}
			})
		}
	</script>
<script>
		/* $('#psave').click(function(){
			$.ajax({
				"url":"${pageContext.request.contextPath}/updatePwd.do",
				"data":"id="+${user.id}+"&bpwd="+$("#bpwd").val()+"&npwd="+$("#npwd").val(),
				"type":"POST",
		  		"dataType":"json",
		  		"success":function(obj){
		  			alert(obj.message);
		  		}
			});
		}) */
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
				+"<button class='btn btn-danger btn-sm' data-toggle='modal' data-target='#layer' onclick='deleteRow(this)'>"
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
	<!--点击取消消除input框里的值-->
<script>
		$('#out').click(function(){
			location.href="${pageContext.request.contextPath}/web/login.jsp";
		})
		$(".menu-counte").click(function(){
			$(this).addClass("menu-counte-active").siblings().removeClass("menu-counte-active");
		})
		$("#cleanGC").click(function(){
			$(".container-fluid form input").each(function(){
				$(this).val('');
			});
			$(".container-fluid form select").each(function(){
				$(this).val('');
			})
		})
		$("#cleanGCC").click(function(){
			$(".container-fluid form input").each(function(){
				$(this).val('');
			});
			$(".container-fluid form select").each(function(){
				$(this).val('');
			});
		})
	</script>
</html>



