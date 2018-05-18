package cn.sxu.auditcomeon.service.ex;

public class PasswordNotMatchException extends RuntimeException {
	public PasswordNotMatchException() {
		
	}
	public PasswordNotMatchException(String message) {
		super(message);
	}
}
