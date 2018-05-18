package cn.sxu.auditcomeon.mapper;

import java.util.List;

import cn.sxu.auditcomeon.bean.Department;
import cn.sxu.auditcomeon.bean.User;

public interface DepartmentMapper {
	List<Department> selectById(String departmenttypeid);
	Integer selectByName(String name);
	List<Department> selectByDTId();
	List<String> selectByDname(String name);
}
