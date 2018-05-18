package cn.sxu.auditcomeon.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sxu.auditcomeon.bean.Department;
import cn.sxu.auditcomeon.bean.ResponseResult;
import cn.sxu.auditcomeon.bean.User;
import cn.sxu.auditcomeon.service.IDepartmentService;

@Controller
public class DepartmentController {
	@Resource
	private IDepartmentService departmentService;
	@RequestMapping("/showDm.do")
	@ResponseBody
	public ResponseResult<List<String>> showDm(String name){
		ResponseResult<List<String>> rr=new ResponseResult<List<String>>();
		List<String> list=departmentService.selectByDname(name);
		rr.setData(list);
		return rr;
	}
//	查询所有事务所部门
	@RequestMapping("/showDname.do")
	@ResponseBody
	public ResponseResult<List<Department>> showDname(){
		ResponseResult<List<Department>> rr=new ResponseResult<List<Department>>();
		List<Department> list=departmentService.selectByDTId();
		rr.setData(list);
		return rr;
	}
	//根据部门具体名字查找工程id
		@RequestMapping("/showId.do")
		@ResponseBody
		public ResponseResult<Void> showId(String name){
			ResponseResult<Void> rr=new ResponseResult<Void>();
		
			rr.setMessage(departmentService.selectByName(name)+"");
			return rr;
		}
		@RequestMapping("/showName.do")
		@ResponseBody
		public ResponseResult<List<Department>> showName(String departmenttypeid){
			ResponseResult<List<Department>> rr=new ResponseResult<List<Department>>();
			List<Department> list=departmentService.selectById(departmenttypeid);
			rr.setData(list);
			return rr;
		}
}
