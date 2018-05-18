package cn.sxu.auditcomeon.bean;

import java.io.Serializable;
import java.util.Date;

public class Audit implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer projectid;
	private Integer auditorid;
	private String auditor;
	private Double priceTotal;
	private Double priceDecrease;
	private Double rateDecrease;
	private Date dateSend;
	private Date dateReturn;
	public Integer getProjectid() {
		return projectid;
	}
	public void setProjectid(Integer projectid) {
		this.projectid = projectid;
	}
	public Integer getAuditorid() {
		return auditorid;
	}
	public void setAuditorid(Integer auditorid) {
		this.auditorid = auditorid;
	}
	public Double getPriceTotal() {
		return priceTotal;
	}
	public void setPriceTotal(Double priceTotal) {
		this.priceTotal = priceTotal;
	}
	public Double getPriceDecrease() {
		return priceDecrease;
	}
	public void setPriceDecrease(Double priceDecrease) {
		this.priceDecrease = priceDecrease;
	}
	public Double getRateDecrease() {
		return rateDecrease;
	}
	public void setRateDecrease(Double rateDecrease) {
		this.rateDecrease = rateDecrease;
	}
	public Date getDateSend() {
		return dateSend;
	}
	public void setDateSend(Date dateSend) {
		this.dateSend = dateSend;
	}
	public Date getDateReturn() {
		return dateReturn;
	}
	public void setDateReturn(Date dateReturn) {
		this.dateReturn = dateReturn;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((auditor == null) ? 0 : auditor.hashCode());
		result = prime * result + ((auditorid == null) ? 0 : auditorid.hashCode());
		result = prime * result + ((dateReturn == null) ? 0 : dateReturn.hashCode());
		result = prime * result + ((dateSend == null) ? 0 : dateSend.hashCode());
		result = prime * result + ((priceDecrease == null) ? 0 : priceDecrease.hashCode());
		result = prime * result + ((priceTotal == null) ? 0 : priceTotal.hashCode());
		result = prime * result + ((projectid == null) ? 0 : projectid.hashCode());
		result = prime * result + ((rateDecrease == null) ? 0 : rateDecrease.hashCode());
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
		Audit other = (Audit) obj;
		if (auditor == null) {
			if (other.auditor != null)
				return false;
		} else if (!auditor.equals(other.auditor))
			return false;
		if (auditorid == null) {
			if (other.auditorid != null)
				return false;
		} else if (!auditorid.equals(other.auditorid))
			return false;
		if (dateReturn == null) {
			if (other.dateReturn != null)
				return false;
		} else if (!dateReturn.equals(other.dateReturn))
			return false;
		if (dateSend == null) {
			if (other.dateSend != null)
				return false;
		} else if (!dateSend.equals(other.dateSend))
			return false;
		if (priceDecrease == null) {
			if (other.priceDecrease != null)
				return false;
		} else if (!priceDecrease.equals(other.priceDecrease))
			return false;
		if (priceTotal == null) {
			if (other.priceTotal != null)
				return false;
		} else if (!priceTotal.equals(other.priceTotal))
			return false;
		if (projectid == null) {
			if (other.projectid != null)
				return false;
		} else if (!projectid.equals(other.projectid))
			return false;
		if (rateDecrease == null) {
			if (other.rateDecrease != null)
				return false;
		} else if (!rateDecrease.equals(other.rateDecrease))
			return false;
		return true;
	}
	public Audit(Integer projectid, Integer auditorid, String auditor, Double priceTotal, Double priceDecrease,
			Double rateDecrease, Date dateSend, Date dateReturn) {
		super();
		this.projectid = projectid;
		this.auditorid = auditorid;
		this.auditor = auditor;
		this.priceTotal = priceTotal;
		this.priceDecrease = priceDecrease;
		this.rateDecrease = rateDecrease;
		this.dateSend = dateSend;
		this.dateReturn = dateReturn;
	}
	public String getAuditor() {
		return auditor;
	}
	public void setAuditor(String auditor) {
		this.auditor = auditor;
	}
	public Audit() {
		super();
	}
	@Override
	public String toString() {
		return "Audit [projectid=" + projectid + ", auditorid=" + auditorid + ", auditor=" + auditor + ", priceTotal="
				+ priceTotal + ", priceDecrease=" + priceDecrease + ", rateDecrease=" + rateDecrease + ", dateSend="
				+ dateSend + ", dateReturn=" + dateReturn + "]";
	}
	

}
