package cn.sxu.auditcomeon.mapper;

import java.util.List;

import cn.sxu.auditcomeon.bean.User;

public interface UserMapper {
	void insert(User user);
	User selectByUsername(String username);
	Integer selectId(String username);
	User findById(Integer id);
	void updatePassword(User user);
	List<String> selectName();
	User showIdBelong(String name);
}
