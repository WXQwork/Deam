package cn.sxu.auditcomeon.service;

import java.util.List;

import cn.sxu.auditcomeon.bean.Project;

public interface IProjectService {
	void insertProject(Project project);
	List<Project> selectById(Integer id);
	void delPro(Integer id);
	List<Project> showAll(String departDest);
	List<Project> selectAudit1(Integer belong);
	void updateAudit1Id(String idd,Integer id);
	void updateAudit2Id(String idd,Integer id);
	void updateAudit3Id(String idd,Integer id);
	Project findById(String id);
	List<Project> UserAudit1(Integer id);
}
