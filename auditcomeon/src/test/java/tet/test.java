package tet;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.sxu.auditcomeon.bean.Audit;
import cn.sxu.auditcomeon.bean.Project;
import cn.sxu.auditcomeon.bean.User;
import cn.sxu.auditcomeon.mapper.AuditMapper;
import cn.sxu.auditcomeon.mapper.DepartmentMapper;
import cn.sxu.auditcomeon.mapper.ProjectMapper;
import cn.sxu.auditcomeon.mapper.UserMapper;
import cn.sxu.auditcomeon.service.AuditService;
import cn.sxu.auditcomeon.service.IAuditService;
import cn.sxu.auditcomeon.service.IProjectService;
import cn.sxu.auditcomeon.service.IUserService;
import cn.sxu.auditcomeon.service.ProjectService;
import cn.sxu.auditcomeon.service.UserService;



public class test {
	
	//@Test
	public void check() {
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		UserMapper um=ac.getBean("userMapper",UserMapper.class);
		IUserService userService=ac.getBean("userService",UserService.class);
		User user=userService.showIdBelong("郝星运");
		System.out.println(user);
	}
	@Test
	public void insert() {
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		AuditMapper pm=ac.getBean("auditMapper", AuditMapper.class);
		List<Audit> list=pm.showAudit1(2);
		System.out.println(list);
		//System.out.println(audit);
	}
	//@Test
	public void select2() {
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		ProjectMapper pm=ac.getBean("projectMapper", ProjectMapper.class);
		IProjectService userService=ac.getBean("projectService",ProjectService.class);
		List<Project> list=pm.UserAudit1(11);
		System.out.println(list);

	}
	//@Test 
	public void select() {
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		DepartmentMapper pm=ac.getBean("departmentMapper", DepartmentMapper.class);
		List<String> list=pm.selectByDname("泉哥审计处");
		System.out.println(list);
	}
	//@Test
	public void update() {
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		UserMapper um=ac.getBean("userMapper",UserMapper.class);
//		User02 user=um.selectByUsername("haodandan");
		//IUserService userService=ac.getBean("userService",UserService.class);
		//List<User> list=um.selectName();
		//System.out.println(list);
	}
}
