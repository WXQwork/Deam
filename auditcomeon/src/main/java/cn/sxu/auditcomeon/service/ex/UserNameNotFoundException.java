package cn.sxu.auditcomeon.service.ex;

public class UserNameNotFoundException extends RuntimeException{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public UserNameNotFoundException() {
		
	}
	public UserNameNotFoundException(String message) {
		super(message);
	}

}
