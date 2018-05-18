package cn.sxu.auditcomeon.service;

import java.util.List;

import cn.sxu.auditcomeon.bean.User;

public interface IUserService {
	void register(User user);
	boolean checkUsername(String username);
	User loginUsername(String username,String password);
	User checkUsername02(String username);
	Integer selectId(String username);
	User findById(Integer id);
	void updatePassword(Integer id,String bpwd,String npwd);
	List<String> selectName();
	User showIdBelong(String name);
}
