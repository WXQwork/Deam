package cn.sxu.auditcomeon.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.sxu.auditcomeon.bean.Audit;
import cn.sxu.auditcomeon.mapper.AuditMapper;
@Service
public class AuditService implements IAuditService{
@Resource
	AuditMapper auditMapper;
	public void insertAudit(Audit audit) {
		auditMapper.insertAudit(audit);
	}
	public void insertAudit2(Audit audit) {
		auditMapper.insertAudit2(audit);
	}
	public void insertAudit3(Audit audit) {
		auditMapper.insertAudit3(audit);
	}
	
	public void updateAudit1(Integer id, Double priceT, Double priceD, Double rateD, Date Dsend, Date Dreturn) {
		Audit a=auditMapper.findByPid(id);
		a.setPriceTotal(priceT);
		a.setPriceDecrease(priceD);
		a.setRateDecrease(rateD);
		a.setDateSend(Dsend);
		a.setDateReturn(Dreturn);
		auditMapper.updateAudit1(a);
	}
	public void updateAudit2(Integer id, Double priceT, Double priceD, Double rateD, Date Dsend, Date Dreturn) {
		Audit a=auditMapper.findByPid2(id);
		a.setPriceTotal(priceT);
		a.setPriceDecrease(priceD);
		a.setRateDecrease(rateD);
		a.setDateSend(Dsend);
		a.setDateReturn(Dreturn);
		auditMapper.updateAudit2(a);
	}
	public void updateAudit3(Integer id, Double priceT, Double priceD, Double rateD, Date Dsend, Date Dreturn) {
		Audit a=auditMapper.findByPid3(id);
		a.setPriceTotal(priceT);
		a.setPriceDecrease(priceD);
		a.setRateDecrease(rateD);
		a.setDateSend(Dsend);
		a.setDateReturn(Dreturn);
		auditMapper.updateAudit3(a);
	}
	public List<Audit> showAudit1(Integer belong) {
		List<Audit> list=auditMapper.showAudit1(belong);
		return list;
	}
	public List<Audit> showAudit2(Integer belong) {
		List<Audit> list=auditMapper.showAudit2(belong);
		return list;
	}
	public List<Audit> UserAudit2(Integer id) {
		List<Audit> list=auditMapper.UserAudit2(id);
		return list;
	}
	public List<Audit> UserAudit3(Integer id) {
		List<Audit> list=auditMapper.UserAudit3(id);
		return list;
	}
	public Audit findByPid(Integer id) {
		Audit a=auditMapper.findByPid(id);
		
		return a;
	}
	public Audit findByPid2(Integer id) {
		Audit a=auditMapper.findByPid2(id);
		
		return a;
	}
	public Audit findByPid3(Integer id) {
		Audit a=auditMapper.findByPid3(id);
		
		return a;
	}
	
}
