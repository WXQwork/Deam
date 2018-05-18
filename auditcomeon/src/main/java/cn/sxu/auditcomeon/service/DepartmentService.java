package cn.sxu.auditcomeon.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.sxu.auditcomeon.bean.Department;
import cn.sxu.auditcomeon.bean.User;
import cn.sxu.auditcomeon.mapper.DepartmentMapper;
@Service
public class DepartmentService implements IDepartmentService{
	@Resource
	private DepartmentMapper departmentMapper;
	public List<Department> selectById(String departmenttypeid) {
		List<Department> d=departmentMapper.selectById(departmenttypeid);
		return d;
	}
	public Integer selectByName(String name) {
		return departmentMapper.selectByName(name);
	}
	public List<Department> selectByDTId() {
		List<Department> list=departmentMapper.selectByDTId();
		return list;
	}
	public List<String> selectByDname(String name) {
		List<String> list=departmentMapper.selectByDname(name);
		return list;
	}
	
	
}
