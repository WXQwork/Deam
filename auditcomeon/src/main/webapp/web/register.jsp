<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>注册</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrapValidator.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrapValidator.js" ></script>
 <style>  
  body {
   background: url('${pageContext.request.contextPath }/img/bg.jpg') no-repeat center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
  }
 
    </style>
    
</head>
<body>
<div class="container">
    <div class="row">
        <!-- form: -->
        <section>
            <div class="col-lg-8 col-lg-offset-2">
                <div class="page-header">
                    <h2>注<span style="margin-left: 30px;">册</span></h2>
                </div>

                <form id="defaultForm" method="post" class="form-horizontal" action="target.php"
                      data-bv-message="This value is not valid"
                      data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                      data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                      data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
                    <!-- 姓名填写处-->
                    
                    
                    <!-- 用户名填写出-->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">用户名：</label>
                        <div class="col-lg-5"><!--身份唯一验证:data-bv-message-->
                            <input type="text" class="form-control" name="username"
                            	
                                  
                                   required data-bv-notempty-message="您的用户名不能为空！"
                                   pattern="[a-zA-Z0-9_\.]+" data-bv-regexp-message="首字母只能由字母、数字以及下划线组成。"
                                   data-bv-stringlength="true" data-bv-stringlength-min="6" data-bv-stringlength-max="30" data-bv-stringlength-message="用户名长度不得小于6，不得超过30。"
                                   data-bv-different="true" data-bv-different-field="password" data-bv-different-message="用户名和密码不能相同。"
                                   data-bv-remote="true" data-bv-remote-url="${pageContext.request.contextPath }/checkUsername.do"  data-bv-remote-message="用户名已存在。"
                                    />
                        </div>
                    </div>
					<!--密码-->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">密<span style="margin-left: 14px;">码</span>：</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="password"
                                   required data-bv-notempty-message="您的密码不能为空！"
                                   data-bv-identical="true" data-bv-identical-field="confirmPassword" data-bv-identical-message="两次输入的密码不同。"
                                   data-bv-different="true" data-bv-different-field="username" data-bv-different-message="密码不能和用户名相同。"/>
                        </div>
                    </div>
					<!--再次输入密码-->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">再次输入密码：</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="confirmPassword"
                                   required data-bv-notempty-message="您的密码不能为空！"
                                   data-bv-identical="true" data-bv-identical-field="password" data-bv-identical-message="两次输入的密码不同。"
                                   data-bv-different="true" data-bv-different-field="username" data-bv-different-message="密码不能和用户名相同。"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">真实姓名：</label>
                        <div class="col-lg-5"><!--身份唯一验证:data-bv-message-->
                            <input type="text" class="form-control" name="name"
                            required data-bv-notempty-message="真实姓名不能为空！"/>
                        </div>
                    </div>
                    <!--  所属部门-->
                    <div class="form-group">
                    	<label class="col-lg-3 control-label">所属部门：</label>
                    	<div class="col-lg-5">
                    		<select class="form-control" onchange="selectShow()" id="slList">
                    			<option>...请选择...</option>
                    			<option value="3">事务所</option>
                    			<option value="2">审计处</option>
                    			<option value="1">施工单位</option>
                    		</select>
                    		<input type="text"  id="typename" name="typename" readonly="true" style="display:none"/>
                    		<input type="text"  id="usergrant" name="usergrant" readonly="true" style="display:none"/>
                    		<input type="text" name="belong" id="belong" readonly="true" style="display:none" >
                    	</div>
                    </div>
                    
                    <div class="form-group">
                    	<label class="col-lg-3 control-label">具体单位：</label>
                    	<div class="col-lg-5">
                    		<select class="form-control"  id="sname" name="sname" onchange="selectName()">
                    			<option>...请选择...</option>
                    		</select>
                  		<input type="text"  id="Jname" name="Jname"  readonly="true" style="display:none"/>
                    	</div>
                    </div>
                    <div class="form-group"><!--列向右偏移3-->
                        <div class="col-lg-9 col-lg-offset-3">
                            <input type="button" class="btn-lg btn-primary" value="提交" id="tijiao"></input>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- :form -->
    </div>
</div>

<script type="text/javascript">
/* 根据部门名字，查找部门id */
function selectName(){	
	var  select=document.getElementById("sname");
	var index=select.selectedIndex ;   
	document.getElementById("Jname").value=select.options[index].value;
	  $.ajax({
		  "url":"${pageContext.request.contextPath}/showId.do",
			"data":"name="+$("#Jname").val(),
			"type":"POST",
			"dataType":"json",
			"success":function(obj){
				var str=obj.message;
				var i=str*1; 
				document.getElementById("belong").value=i;
			}
	  })
}
/* 根据所属部门，查找具体单位 */
function selectShow(){
	var  myselect=document.getElementById("slList");
	var index=myselect.selectedIndex ;   
	document.getElementById("usergrant").value=myselect.options[index].value;
	document.getElementById("typename").value=myselect.options[index].text;
	$.ajax({
		"url":"${pageContext.request.contextPath}/showName.do",
		"data":"departmenttypeid="+$("#usergrant").val(),
		"type":"POST",
		"dataType":"json",
		"success":function(obj){
			//alert(obj.state);
			 var cNode=document.getElementById("sname");
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
    $(document).ready(function() {
        $('#defaultForm').bootstrapValidator();
    });
    $('#tijiao').click(function(){
    		$.ajax({
    			"url":"${pageContext.request.contextPath}/register.do",
    			"data":$("#defaultForm").serialize(),
    			"type":"POST",
    	  		"dataType":"json",
    	  		"success":function(obj){
    	  			location.href="${pageContext.request.contextPath}/toLogin.do";
    	  		}
    		});
    })
</script>
</body>
</html>