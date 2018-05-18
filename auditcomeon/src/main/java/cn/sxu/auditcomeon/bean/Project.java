package cn.sxu.auditcomeon.bean;

import java.io.Serializable;
import java.util.Date;
/**
 * 项目对象
 * @author apple
 *
 */
public class Project implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
	private String year;
	private Date obtaindate;
	private String departDest;
	private String  departConstruct;
	private Double priceReport;
	private Double priceAudit;
	private String others;
	private String packages;
	private String parents;
	private String departConstructid;
	private Integer departAudit1Depatid;
	private Integer departAudit2Depatid;
	private Integer departAudit3Depatid;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public Date getObtaindate() {
		return obtaindate;
	}
	public void setObtaindate(Date obtaindate) {
		this.obtaindate = obtaindate;
	}
	public String getDepartDest() {
		return departDest;
	}
	public void setDepartDest(String departDest) {
		this.departDest = departDest;
	}
	public String getDepartConstruct() {
		return departConstruct;
	}
	public void setDepartConstruct(String departConstruct) {
		this.departConstruct = departConstruct;
	}
	public Double getPriceReport() {
		return priceReport;
	}
	public void setPriceReport(Double priceReport) {
		this.priceReport = priceReport;
	}
	public Double getPriceAudit() {
		return priceAudit;
	}
	public void setPriceAudit(Double priceAudit) {
		this.priceAudit = priceAudit;
	}
	public String getOthers() {
		return others;
	}
	public void setOthers(String others) {
		this.others = others;
	}
	public String getPackages() {
		return packages;
	}
	public void setPackages(String packages) {
		this.packages = packages;
	}
	public String getParents() {
		return parents;
	}
	public void setParents(String parents) {
		this.parents = parents;
	}
	public String getDepartConstructid() {
		return departConstructid;
	}
	public void setDepartConstructid(String departConstructid) {
		this.departConstructid = departConstructid;
	}
	public Integer getDepartAudit1Depatid() {
		return departAudit1Depatid;
	}
	public void setDepartAudit1Depatid(Integer departAudit1Depatid) {
		this.departAudit1Depatid = departAudit1Depatid;
	}
	public Integer getDepartAudit2Depatid() {
		return departAudit2Depatid;
	}
	public void setDepartAudit2Depatid(Integer departAudit2Depatid) {
		this.departAudit2Depatid = departAudit2Depatid;
	}
	public Integer getDepartAudit3Depatid() {
		return departAudit3Depatid;
	}
	public void setDepartAudit3Depatid(Integer departAudit3Depatid) {
		this.departAudit3Depatid = departAudit3Depatid;
	}
	public Project(String id, String name, String year, Date obtaindate, String departDest, String departConstruct,
			Double priceReport, Double priceAudit, String others, String packages, String parents,
			String departConstructid, Integer departAudit1Depatid, Integer departAudit2Depatid,
			Integer departAudit3Depatid) {
		super();
		this.id = id;
		this.name = name;
		this.year = year;
		this.obtaindate = obtaindate;
		this.departDest = departDest;
		this.departConstruct = departConstruct;
		this.priceReport = priceReport;
		this.priceAudit = priceAudit;
		this.others = others;
		this.packages = packages;
		this.parents = parents;
		this.departConstructid = departConstructid;
		this.departAudit1Depatid = departAudit1Depatid;
		this.departAudit2Depatid = departAudit2Depatid;
		this.departAudit3Depatid = departAudit3Depatid;
	}
	public Project() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((departAudit1Depatid == null) ? 0 : departAudit1Depatid.hashCode());
		result = prime * result + ((departAudit2Depatid == null) ? 0 : departAudit2Depatid.hashCode());
		result = prime * result + ((departAudit3Depatid == null) ? 0 : departAudit3Depatid.hashCode());
		result = prime * result + ((departConstruct == null) ? 0 : departConstruct.hashCode());
		result = prime * result + ((departConstructid == null) ? 0 : departConstructid.hashCode());
		result = prime * result + ((departDest == null) ? 0 : departDest.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((obtaindate == null) ? 0 : obtaindate.hashCode());
		result = prime * result + ((others == null) ? 0 : others.hashCode());
		result = prime * result + ((packages == null) ? 0 : packages.hashCode());
		result = prime * result + ((parents == null) ? 0 : parents.hashCode());
		result = prime * result + ((priceAudit == null) ? 0 : priceAudit.hashCode());
		result = prime * result + ((priceReport == null) ? 0 : priceReport.hashCode());
		result = prime * result + ((year == null) ? 0 : year.hashCode());
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
		Project other = (Project) obj;
		if (departAudit1Depatid == null) {
			if (other.departAudit1Depatid != null)
				return false;
		} else if (!departAudit1Depatid.equals(other.departAudit1Depatid))
			return false;
		if (departAudit2Depatid == null) {
			if (other.departAudit2Depatid != null)
				return false;
		} else if (!departAudit2Depatid.equals(other.departAudit2Depatid))
			return false;
		if (departAudit3Depatid == null) {
			if (other.departAudit3Depatid != null)
				return false;
		} else if (!departAudit3Depatid.equals(other.departAudit3Depatid))
			return false;
		if (departConstruct == null) {
			if (other.departConstruct != null)
				return false;
		} else if (!departConstruct.equals(other.departConstruct))
			return false;
		if (departConstructid == null) {
			if (other.departConstructid != null)
				return false;
		} else if (!departConstructid.equals(other.departConstructid))
			return false;
		if (departDest == null) {
			if (other.departDest != null)
				return false;
		} else if (!departDest.equals(other.departDest))
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
		if (obtaindate == null) {
			if (other.obtaindate != null)
				return false;
		} else if (!obtaindate.equals(other.obtaindate))
			return false;
		if (others == null) {
			if (other.others != null)
				return false;
		} else if (!others.equals(other.others))
			return false;
		if (packages == null) {
			if (other.packages != null)
				return false;
		} else if (!packages.equals(other.packages))
			return false;
		if (parents == null) {
			if (other.parents != null)
				return false;
		} else if (!parents.equals(other.parents))
			return false;
		if (priceAudit == null) {
			if (other.priceAudit != null)
				return false;
		} else if (!priceAudit.equals(other.priceAudit))
			return false;
		if (priceReport == null) {
			if (other.priceReport != null)
				return false;
		} else if (!priceReport.equals(other.priceReport))
			return false;
		if (year == null) {
			if (other.year != null)
				return false;
		} else if (!year.equals(other.year))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Project [id=" + id + ", name=" + name + ", year=" + year + ", obtaindate=" + obtaindate
				+ ", departDest=" + departDest + ", departConstruct=" + departConstruct + ", priceReport=" + priceReport
				+ ", priceAudit=" + priceAudit + ", others=" + others + ", packages=" + packages + ", parents="
				+ parents + ", departConstructid=" + departConstructid + ", departAudit1Depatid=" + departAudit1Depatid
				+ ", departAudit2Depatid=" + departAudit2Depatid + ", departAudit3Depatid=" + departAudit3Depatid + "]";
	}
	
	
}	
