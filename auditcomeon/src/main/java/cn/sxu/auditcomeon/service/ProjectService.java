package cn.sxu.auditcomeon.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.sxu.auditcomeon.bean.Project;
import cn.sxu.auditcomeon.mapper.ProjectMapper;

@Service
public class ProjectService implements IProjectService{
	@Resource
	private ProjectMapper projectMapper;
	public void insertProject(Project project) {
		projectMapper.insert(project);
	}
	public List<Project> selectById(Integer id){
		List<Project> list=projectMapper.selectById(id);
		return list;
	}
	public void delPro(Integer id) {
		projectMapper.delPro(id);
	}
	public List<Project> showAll(String departDest) {
		List<Project> list=projectMapper.showAll(departDest);
		return list;
	}
	public List<Project> selectAudit1(Integer belong) {
		List<Project> list=projectMapper.selectAudit1(belong);
		return list;
	}
	public Project findById(String id) {
		Project project=projectMapper.findById(id);
		return project;
	}
	public void updateAudit1Id(String idd,Integer id) {
		Project project=projectMapper.findById(idd);		
		project.setDepartAudit1Depatid(id);
		projectMapper.updateAudit1Id(project);
		
	}
	public void updateAudit2Id(String idd,Integer id) {
		Project project=projectMapper.findById(idd);		
		project.setDepartAudit2Depatid(id);
		projectMapper.updateAudit2Id(project);
		
	}
	public void updateAudit3Id(String idd,Integer id) {
		Project project=projectMapper.findById(idd);		
		project.setDepartAudit3Depatid(id);
		projectMapper.updateAudit3Id(project);
		
	}
	public List<Project> UserAudit1(Integer id) {
		List<Project> list=projectMapper.UserAudit1(id);
		
		return list;
	}
}
