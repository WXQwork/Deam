package cn.sxu.auditcomeon.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sxu.auditcomeon.bean.Audit;
import cn.sxu.auditcomeon.bean.ResponseResult;
import cn.sxu.auditcomeon.bean.User;
import cn.sxu.auditcomeon.service.IAuditService;
import cn.sxu.auditcomeon.service.IProjectService;
import cn.sxu.auditcomeon.service.IUserService;

@Controller
public class UserController {
	@Resource
	private IProjectService projectService;
	@Resource
	private IUserService userService;
	@Resource
	private IAuditService auditService;
	//根据真实名字，查找userid和belong
	@RequestMapping("/showIdBelong.do")
	@ResponseBody
	public ResponseResult<Void> showIdBelong(String name,String projectid){
		ResponseResult<Void> rr=new ResponseResult<Void>();
		User user=userService.showIdBelong(name);
		System.out.println(user);
		Audit audit=new Audit();
		Integer i=Integer.parseInt(projectid);
		audit.setProjectid(i);
		audit.setAuditorid(user.getId());
		audit.setAuditor(name);
		auditService.insertAudit(audit);
		projectService.updateAudit1Id(projectid,user.getBelong());
		rr.setMessage("派发成功");
		rr.setState("1");
		
		return rr;
	}
	@RequestMapping("/showIdBelong2.do")
	@ResponseBody
	public ResponseResult<Void> showIdBelong2(String name,String projectid){
		ResponseResult<Void> rr=new ResponseResult<Void>();
		User user=userService.showIdBelong(name);
		System.out.println(user);
		Audit audit=new Audit();
		Integer i=Integer.parseInt(projectid);
		audit.setProjectid(i);
		audit.setAuditorid(user.getId());
		audit.setAuditor(name);
		auditService.insertAudit2(audit);
		
		projectService.updateAudit2Id(projectid,user.getBelong());
		rr.setMessage("派发成功");
		rr.setState("1");
		
		return rr;
	}
	@RequestMapping("/showIdBelong3.do")
	@ResponseBody
	public ResponseResult<Void> showIdBelong3(String name,String projectid){
		ResponseResult<Void> rr=new ResponseResult<Void>();
		User user=userService.showIdBelong(name);
		System.out.println(user);
		Audit audit=new Audit();
		Integer i=Integer.parseInt(projectid);
		audit.setProjectid(i);
		audit.setAuditorid(user.getId());
		audit.setAuditor(name);
		auditService.insertAudit3(audit);
		
		projectService.updateAudit3Id(projectid,user.getBelong());
		rr.setMessage("派发成功");
		rr.setState("1");
		
		return rr;
	}
	
	//更改密码
	@RequestMapping("/updatePwd.do")
	@ResponseBody
	public ResponseResult<Void> updatePwd(Integer id,String bpwd,String npwd){
		ResponseResult<Void> rr=new ResponseResult<Void>();
		try {
			userService.updatePassword(id, bpwd, npwd);
			rr.setState("1");
			rr.setMessage("修改成功");
		}catch(Exception e) {
			rr.setState("0");
			rr.setMessage(e.getMessage());
		}
		
		return rr;
	}
	
	//显示部门名字
	@RequestMapping("/showDName.do")
	@ResponseBody
	public ResponseResult<List<String>> showDName(){
		ResponseResult<List<String>> rr=new ResponseResult<List<String>>();
		List<String> list=userService.selectName();
		rr.setData(list);
		rr.setState("1");
		return rr;
		
	}
	@RequestMapping("/toLogin.do")
	public String toLogin() {
		return "login";
	}
	@RequestMapping("/Login.do")
	@ResponseBody
	public ResponseResult<User> Login(String username,String password,HttpSession session,HttpServletRequest request){
		ResponseResult<User> rr=new ResponseResult<User>();
		
		try {
			User user=userService.loginUsername(username,password);
			String str="user"+user.getId();
			
			rr.setData(user);
			//System.out.println(str);
			user.setId(userService.selectId(username));
			//request.setAttribute("username",user.getUsername());
			//session.setAttribute(str, user);
			if(user.getUsergrant()==1) {
				session.setAttribute("user", user);
			//	session.setAttribute(str, user);
			}else if(user.getUsergrant()==2) {
				session.setAttribute("user2", user);
			}else if(user.getUsergrant()==3) {
				session.setAttribute("user3", user);
			}
			
			rr.setState("1");
			rr.setMessage("登陆成功");
		}catch(Exception e) {
			rr.setState("0");
			
			rr.setMessage(e.getMessage());
		}
		return rr;
	}
	@RequestMapping("/Login2.do")
	@ResponseBody
	public ResponseResult<Void> Login2(String Username,String Password){
		ResponseResult<Void> rr=new ResponseResult<Void>();
		
		try {
			User user=userService.loginUsername(Username,Password);
			System.out.println(user);
			rr.setState("1");
			rr.setMessage("登陆成功");
		}catch(Exception e) {
			rr.setState("0");
			
			rr.setMessage(e.getMessage());
		}
		return rr;
	}
	@RequestMapping("/toRegister.do")
	public String toRegister() {
		return "register";
	}
	@RequestMapping("/register.do")
	@ResponseBody
	public ResponseResult<Void> register(String username, String password, String name,
			 String typename,String usergrant,String belong) {
		ResponseResult<Void> rr = 
				new ResponseResult<Void>();
		User user = new User();
		user.setName(name);
		user.setTypename(typename);
		user.setUsername(username);
		user.setPassword(password);
		user.setBelong(Integer.parseInt(belong));
		user.setUsergrant(Integer.parseInt(usergrant));
		userService.register(user);
		System.out.println(user);
		return rr;
	}
	@RequestMapping("/checkUsername.do")
	@ResponseBody
	public String checkUsername(@RequestParam String username){
		boolean result=!userService.checkUsername(username);
        String str=Boolean.toString(result);
        //return resultString;
        return "{\"valid\":"+str+"}";
	}
	@RequestMapping("/checkUsername02.do")
	@ResponseBody
	public String checkUsername02(@RequestParam String username){
		boolean result=userService.checkUsername(username);

		String str=Boolean.toString(result);
		//return resultString;
		return "{\"valid\":"+str+"}";
	}
	@RequestMapping("/checkUsername03.do")
	@ResponseBody
	public String checkUsername03(@RequestParam String username2){
		boolean result=userService.checkUsername(username2);
		
		String str=Boolean.toString(result);
		//return resultString;
		return "{\"valid\":"+str+"}";
	}


}
