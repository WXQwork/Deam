<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>登陆</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrapValidator.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrapValidator.js" ></script>
    <link rel="stylesheet" 
	href="${pageContext.request.contextPath }/css/toastr.min.css" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/toastr.min.js" ></script>
    <style>  
  body {
   background: url('${pageContext.request.contextPath }/img/bg.jpg') no-repeat center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
  }
  .block{
   background-color:rgba(0,0,0,0.6);
  } 
    </style>
</head>
<body>
	<div class="col-lg-5 col-lg-offset-2">
    	<div class="page-header" style="margin-top:4em;">
			<h2>工程管理信息系统</h2>
        </div>
    </div>
    <div class="col-md-offset-4 col-md-4">
    	<!--这是一个面板panel-->
    	<div class="panel panel-primary" style="margin-top: 1em;">
	    	<!--这是一个导航组件nav-->
	    	<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#Prv" data-toggle="tab" onclick="cleatot()">事务所登陆</a></li>
				<li><a href="#CPrv" data-toggle="tab" onclick="cleatxt()">施工单位登陆</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<!--fade是一种浅淡浅出效果,第一个选项卡必须添加in-->
				<div class="tab-pane fade in active" id="Prv">
	                <div class="panel-body">
	                	<form name="LoginG" id="LoginG" method="post" target="_parent" >
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">用户名</span>
									<input id="cleanGN" name="username" type="text" class="form-control" placeholder="Username"
                                         required data-bv-notempty-message="您的用户名不能为空！"
										 data-bv-remote="true" data-bv-remote-url="${pageContext.request.contextPath}/checkUsername02.do" data-bv-remote-message="用户不存在!">
								</div>
								<br />
							</div><!-- /form-group-->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">密<span style="margin-right: 14px;"></span>码</span>
									<input id="cleanGP" name="password" type="Password" class="form-control" placeholder="Password"
										required data-bv-notempty-message="您的密码不能为空！"
										>
									<!--<span class="help-block" id="PasswordMessage" /> -->
								</div> 
							</div><!-- /form-group-->
		                    <br /> 
							<div class="form-group">
								<input class="btn btn-primary btn-block" type="button" value="登　　录" id="login"/>
							</div>
							<div class="form-group">
								<input class="btn btn-primary btn-block" type="button" value="注　　测" id="register" />
							</div>
						</form>
	                </div>
				</div>
				<div class="tab-pane fade" id="CPrv">
					
					<div class="panel-body">
						<form name="LoginS" id="LoginS" method="post" target="_parent" >
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">用户名</span>
									<input id="cleanSN" name="username2" type="text" class="form-control" placeholder="Username"
                                      
									    data-bv-remote="true" data-bv-remote-url="${pageContext.request.contextPath}/checkUsername03.do" data-bv-remote-message="您注册的用户不存在!">
								</div>
								<br />
							</div><!-- /form-group-->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">密<span style="margin-right: 14px;"></span>码</span>
									<input id="cleanSP" name="password" type="Password" class="form-control" placeholder="Password"
										required data-bv-notempty-message="您的密码不能为空！">
									<!--<span class="help-block" id="PasswordMessage" /> -->
								</div> 
							</div><!-- /form-group-->
		                    <br />
							<div class="form-group">
								<input class="btn btn-primary btn-block" type="button" value="登　　录" id="login2"/>
							</div>
							<div class="form-group">
								<input class="btn btn-primary btn-block" type="button" value="注　　测" id="register2"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
    </div>
    <script>
    	function cleatxt(){
    		var cleanGN = $("#cleanGN");
    		var cleanGP = $("#cleanGP");
    		cleanGN.val('');
    		cleanGP.val('');
    	}
    	function cleatot(){
    		var cleanSN = $("#cleanSN");
    		var cleanSP = $("#cleanSP");
    		cleanSN.val('');
    		cleanSP.val('');
    	}
    </script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#LoginG').bootstrapValidator();
    });
    $(document).ready(function() {
	// Generate a simple captcha
	$('#LoginS').bootstrapValidator({
		//message: 'This value is not valid',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				username2: {
//					message: 'The username is not valid',
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
			password: {
					validators: {
						notEmpty: {
							message: '密码不能为空'
							}
						}
					},
		}
	})
});
    $('#register').click(function(){
    	location.href="${pageContext.request.contextPath}/web/register.jsp";
    })
   $('#login').click(function(){
		$.ajax({
			"url":"${pageContext.request.contextPath}/Login.do",
			"data":$("#LoginG").serialize(),
			"type":"POST",
	  		"dataType":"json",
	  		"success":function(obj){
	  			if((obj.state)==1){
	  				if(obj.data.usergrant==1){
	  					location.href="${pageContext.request.contextPath}/web/list.jsp";
	  				}else if(obj.data.usergrant==2){
	  					location.href="${pageContext.request.contextPath}/web/list2.jsp";
	  				
	  			}else if(obj.data.usergrant==3){
	  				location.href="${pageContext.request.contextPath}/web/list3.jsp";
	  			}
	  			}else{
	  				toastr.options={
	  				        closeButton:true
	  				       }
	  				       toastr.info(obj.message);
	  			}
	  		}
		});
})
   
    $('#register2').click(function(){
    	location.href="${pageContext.request.contextPath}/web/register.jsp";
    })
   $('#login2').click(function(){
		$.ajax({
			"url":"${pageContext.request.contextPath}/Login2.do",
			"data":$("#LoginS").serialize(),
			"type":"POST",
	  		"dataType":"json",
	  		"success":function(obj){
	  			if((obj.state)==1){
	  				location.href="${pageContext.request.contextPath}/list.do";
	  			}else{
	  				toastr.options={
	  				        closeButton:true
	  				       }
	  				       toastr.info(obj.message);
	  			}
	  			
	  		}
		});
})
</script>
</body>
</html>