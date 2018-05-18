package cn.sxu.auditcomeon.mapper;

import java.util.List;

import cn.sxu.auditcomeon.bean.Audit;

public interface AuditMapper {
	void insertAudit(Audit audit);
	void insertAudit2(Audit audit);
	void insertAudit3(Audit audit);
	void updateAudit1(Audit audit);
	void updateAudit2(Audit audit);
	void updateAudit3(Audit audit);
	Audit findByPid(Integer id);
	Audit findByPid2(Integer id);
	Audit findByPid3(Integer id);
	List<Audit> showAudit1(Integer name);
	List<Audit> showAudit2(Integer name);
	List<Audit> UserAudit2(Integer id);
	List<Audit> UserAudit3(Integer id);
}
