package cn.sxu.auditcomeon.service;

import java.util.List;

import cn.sxu.auditcomeon.bean.Department;
import cn.sxu.auditcomeon.bean.User;

public interface IDepartmentService {
	List<Department> selectById(String departmenttypeid);
	Integer selectByName(String name);
	List<Department> selectByDTId();
	List<String> selectByDname(String name);
}
