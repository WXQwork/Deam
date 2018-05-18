package cn.sxu.auditcomeon.mapper;

import java.util.List;

import cn.sxu.auditcomeon.bean.Project;

public interface ProjectMapper {
	void insert(Project project);
	List<Project> selectById(Integer id);
	void delPro(Integer id);
	List<Project> showAll(String departDest);
	List<Project> selectAudit1(Integer departDest);
	void updateAudit1Id(Project project);
	void updateAudit2Id(Project project);
	void updateAudit3Id(Project project);
	Project findById(String id);
	List<Project> UserAudit1(Integer id);
}
