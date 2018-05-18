package cn.sxu.auditcomeon.service;

import java.util.Date;
import java.util.List;

import cn.sxu.auditcomeon.bean.Audit;

public interface IAuditService {
	void insertAudit(Audit audit);
	void insertAudit2(Audit audit);
	void insertAudit3(Audit audit);
	void updateAudit1(Integer id,Double priceT,Double priceD,Double rateD,Date Dsend,Date Dreturn);
	void updateAudit2(Integer id,Double priceT,Double priceD,Double rateD,Date Dsend,Date Dreturn);
	void updateAudit3(Integer id,Double priceT,Double priceD,Double rateD,Date Dsend,Date Dreturn);
	List<Audit> showAudit1(Integer belong);
	List<Audit> showAudit2(Integer belong);
	List<Audit> UserAudit2(Integer id);
	List<Audit> UserAudit3(Integer id);
	Audit findByPid(Integer id);
	Audit findByPid2(Integer id);
	Audit findByPid3(Integer id);
}
