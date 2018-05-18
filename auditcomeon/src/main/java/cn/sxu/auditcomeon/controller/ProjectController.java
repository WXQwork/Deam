package cn.sxu.auditcomeon.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sxu.auditcomeon.bean.Department;
import cn.sxu.auditcomeon.bean.Project;
import cn.sxu.auditcomeon.bean.ResponseResult;
import cn.sxu.auditcomeon.service.ProjectService;

@Controller
public class ProjectController {
	@Resource
	private ProjectService projectService;
	
	
	@RequestMapping("/UserAudit1.do")
	@ResponseBody
	public ResponseResult<List<Project>> UserAudit1(Integer id){
		ResponseResult<List<Project>> rr=new ResponseResult<List<Project>>();
		List<Project> list=projectService.UserAudit1(id);
		rr.setData(list);
		return rr;
	}
	@RequestMapping("/delPro.do")
	@ResponseBody
	public ResponseResult<Void> delPro(Integer id) {
		ResponseResult<Void> rr=new ResponseResult<Void>();
		projectService.delPro(id);
		rr.setState("1");
		rr.setMessage("删除成功");
		return rr;
		
	}
	@RequestMapping("/toList.do")
	public String  list() {
		return "list";
	}
	@RequestMapping("/selectAudit1.do")
	@ResponseBody
	public ResponseResult<List<Project>> selectAudit1(Integer departDest){
		ResponseResult<List<Project>> rr=new ResponseResult<List<Project>>();
		List<Project> list=projectService.selectAudit1(departDest);
		rr.setData(list);
		return rr;
	}
	@RequestMapping("/showAll.do")
	@ResponseBody
	public ResponseResult<List<Project>> showAll(String departDest){
		ResponseResult<List<Project>> rr=new ResponseResult<List<Project>>();
		List<Project> list=projectService.showAll(departDest);
		rr.setData(list);
		return rr;
	}
	@RequestMapping("/insertProject.do")
	@ResponseBody
	public ResponseResult<Project> insertProject(String id,String name,String year,String obtaindate,String departDest,String departConstruct,Double priceReport,Double priceAudit,String departConstructid	) throws ParseException{
		ResponseResult<Project> rr=new ResponseResult<Project>();
		Project project=new Project();
		project.setId(id);
		project.setName(name);
		project.setYear(year);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date2=sdf.parse(obtaindate);
		Date date=new Date();
		project.setObtaindate(date2);
		project.setDepartDest(departDest);
		project.setDepartConstruct(departConstruct);
		project.setPriceReport(priceReport);
		project.setPriceAudit(priceAudit);
		project.setDepartConstructid(departConstructid);
		System.out.println(project);
		projectService.insertProject(project);	
		rr.setState("1");
		rr.setData(project);
		rr.setMessage("保存成功");
		return rr;
	}
	@RequestMapping("/selectById.do")
	@ResponseBody
	public ResponseResult<List<Project>> selectById(Integer id){
		List<Project> list=projectService.selectById(id);
		ResponseResult<List<Project>> rr=new ResponseResult<List<Project>>();
		rr.setData(list);
		return rr;
		
	}
	@RequestMapping("/findById.do")
	@ResponseBody
	public ResponseResult<Project> findById(Integer id){
		String idd=Integer.toString(id);
		Project list=projectService.findById(idd);
		ResponseResult<Project> rr=new ResponseResult<Project>();
		rr.setData(list);
		return rr;
		
	}
}
