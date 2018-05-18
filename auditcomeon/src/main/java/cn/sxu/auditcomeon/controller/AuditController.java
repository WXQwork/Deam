package cn.sxu.auditcomeon.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sxu.auditcomeon.bean.Audit;
import cn.sxu.auditcomeon.bean.ResponseResult;
import cn.sxu.auditcomeon.service.IAuditService;

@Controller
public class AuditController {
@Resource
 	private IAuditService auditService;
	@RequestMapping("/UserAudit2.do")
	@ResponseBody
	public ResponseResult<List<Audit>> UserAudit2(Integer id){
		ResponseResult<List<Audit>> rr=new ResponseResult<List<Audit>>();
		List<Audit> list=auditService.UserAudit2(id);
		rr.setData(list);
		return rr;
	}
	@RequestMapping("/UserAudit3.do")
	@ResponseBody
	public ResponseResult<List<Audit>> UserAudit3(Integer id){
		ResponseResult<List<Audit>> rr=new ResponseResult<List<Audit>>();
		List<Audit> list=auditService.UserAudit3(id);
		rr.setData(list);
		return rr;
	}
	@RequestMapping("/findByPid.do")
	@ResponseBody
	public ResponseResult<Audit> findByPid(Integer id){
		ResponseResult<Audit> rr=new ResponseResult<Audit>();
		Audit a=auditService.findByPid(id);
		rr.setData(a);
		System.out.println(a);
		return rr;
	}
	@RequestMapping("/findByPid2.do")
	@ResponseBody
	public ResponseResult<Audit> findByPid2(Integer id){
		ResponseResult<Audit> rr=new ResponseResult<Audit>();
		Audit a=auditService.findByPid2(id);
		rr.setData(a);
		System.out.println(a);
		return rr;
	}
	@RequestMapping("/findByPid3.do")
	@ResponseBody
	public ResponseResult<Audit> findByPid3(Integer id){
		ResponseResult<Audit> rr=new ResponseResult<Audit>();
		Audit a=auditService.findByPid3(id);
		rr.setData(a);
		System.out.println(a);
		return rr;
	}
	@RequestMapping("/updateAudit1.do")
	@ResponseBody
	public ResponseResult<Void> updateAudit1(Integer projectid,Double priceT,Double priceD,Double rateD,String Dsend,String Dreturn) throws ParseException{
		ResponseResult<Void> rr=new ResponseResult<Void>();
		SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
		Date d1=sd.parse(Dsend);
		Date d2=sd.parse(Dreturn);
		auditService.updateAudit1(projectid, priceT, priceD, rateD, d1, d2);
		rr.setMessage("审核成功");
		return rr;
	}
	@RequestMapping("/updateAudit2.do")
	@ResponseBody
	public ResponseResult<Void> updateAudit2(Integer projectid,Double priceT,Double priceD,Double rateD,String Dsend,String Dreturn) throws ParseException{
		ResponseResult<Void> rr=new ResponseResult<Void>();
		SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
		Date d1=sd.parse(Dsend);
		Date d2=sd.parse(Dreturn);
		auditService.updateAudit2(projectid, priceT, priceD, rateD, d1, d2);
		rr.setMessage("审核成功");
		return rr;
	}
	@RequestMapping("/updateAudit3.do")
	@ResponseBody
	public ResponseResult<Void> updateAudit3(Integer projectid,Double priceT,Double priceD,Double rateD,String Dsend,String Dreturn) throws ParseException{
		ResponseResult<Void> rr=new ResponseResult<Void>();
		SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
		Date d1=sd.parse(Dsend);
		Date d2=sd.parse(Dreturn);
		auditService.updateAudit3(projectid, priceT, priceD, rateD, d1, d2);
		rr.setMessage("审核成功");
		return rr;
	}
	@RequestMapping("/showAudit1.do")
	@ResponseBody
	public ResponseResult<List<Audit>> showAudit1(Integer name){
		ResponseResult<List<Audit>> rr=new ResponseResult<List<Audit>>();
		List<Audit> list=auditService.showAudit1(name);
		rr.setData(list);
		return rr;
	}
	@RequestMapping("/showAudit2.do")
	@ResponseBody
	public ResponseResult<List<Audit>> showAudit2(Integer name){
		ResponseResult<List<Audit>> rr=new ResponseResult<List<Audit>>();
		List<Audit> list=auditService.showAudit2(name);
		rr.setData(list);
		return rr;
	}
}
