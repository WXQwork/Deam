package cn.sxu.auditcomeon.bean;

import java.io.Serializable;
/**
 * 用户对象
 * @author apple
 *
 */
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String username;
	private String password;
	private String typename;
	private Integer usergrant;
	private String name;
	private Integer belong;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public Integer getUsergrant() {
		return usergrant;
	}
	public void setUsergrant(Integer usergrant) {
		this.usergrant = usergrant;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getBelong() {
		return belong;
	}
	public void setBelong(Integer belong) {
		this.belong = belong;
	}
	public User(Integer id, String username, String password, String typename, Integer usergrant, String name,
			Integer belong) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.typename = typename;
		this.usergrant = usergrant;
		this.name = name;
		this.belong = belong;
	}
	public User() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((belong == null) ? 0 : belong.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((typename == null) ? 0 : typename.hashCode());
		result = prime * result + ((usergrant == null) ? 0 : usergrant.hashCode());
		result = prime * result + ((username == null) ? 0 : username.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (belong == null) {
			if (other.belong != null)
				return false;
		} else if (!belong.equals(other.belong))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (typename == null) {
			if (other.typename != null)
				return false;
		} else if (!typename.equals(other.typename))
			return false;
		if (usergrant == null) {
			if (other.usergrant != null)
				return false;
		} else if (!usergrant.equals(other.usergrant))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", typename=" + typename
				+ ", usergrant=" + usergrant + ", name=" + name + ", belong=" + belong + "]";
	}
	
}
