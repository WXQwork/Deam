package cn.sxu.auditcomeon.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.sxu.auditcomeon.bean.User;
import java.util.List;
import cn.sxu.auditcomeon.mapper.UserMapper;
import cn.sxu.auditcomeon.service.ex.PasswordNotMatchException;
import cn.sxu.auditcomeon.service.ex.UserNameNotFoundException;

@Service
public class UserService implements IUserService {
	@Resource
	private UserMapper userMapper;
	public void register(User user) {
		userMapper.insert(user);
	}
	public boolean checkUsername(String username) {
		return userMapper.selectByUsername(username)!=null;
	}
	public User checkUsername02(String username) {
		return userMapper.selectByUsername(username);
	}
	public User loginUsername(String username,String password) {
		User user=userMapper.selectByUsername(username);
		if(user==null) {
			throw new UserNameNotFoundException("用户名不存在");
		}else if(user.getPassword().equals(password)) {
			return user;
		}else {
			throw new PasswordNotMatchException("密码错误");
		}
	}
	public Integer selectId(String username) {
		return userMapper.selectId(username);
	}
	public User findById(Integer id) {
		User user=userMapper.findById(id);
		return user;
	}
	public void updatePassword(Integer id,String bpwd,String npwd) {
		User user=userMapper.findById(id);
		if(bpwd.equals(user.getPassword())) {
			user.setPassword(npwd);
			userMapper.updatePassword(user);
		}else {
			throw new PasswordNotMatchException("原密码错误");
		}
	}
	public List<String> selectName() {
		List<String> list=userMapper.selectName();
		return list;
	}
//	根据name，查询User
	public User showIdBelong(String name) {
		User list=userMapper.showIdBelong(name);
		return list;
	}

	
}
