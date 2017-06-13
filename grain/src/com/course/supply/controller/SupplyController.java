package com.course.supply.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.course.entity.Supply;
import com.course.supply.service.SupplyServiceImpl;
import com.framework.Page;


@Controller
@RequestMapping("supply")

public class SupplyController {
	@Resource
	private SupplyServiceImpl supplyServiceImpl;
	
	@RequestMapping("add")
	public String add(@RequestParam(name="supplyName") String sname,HttpServletRequest request){
		String name = null;
		try {
			name = new String(sname.getBytes("ISO8859_1"),"UTF-8");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		Supply s = new Supply();
		s.setSupplyName(name);
		this.supplyServiceImpl.addSupply(s);
		return "redirect:list";
	}
	@RequestMapping(value="edit",method=RequestMethod.GET)
	public String toEdit(@RequestParam("SupplyId") int supplyId,
			HttpServletRequest request){
		Supply s = this.supplyServiceImpl.getSupply(supplyId);
		request.setAttribute("sup", s);
		request.setAttribute("action", "edit");
		return "files/addgeranjianjie";
	}
	@RequestMapping(value="delete")
	public String delete(@RequestParam("supplyId") int supplyId,
			HttpServletRequest request){
		this.supplyServiceImpl.dropSupply(supplyId);
		return "redirect:list";
	}
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(Supply s,HttpServletRequest request){
		String name = null;
		try {
			name = new String(s.getSupplyName().getBytes("ISO8859_1"),"UTF_8");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		s.setSupplyName(name);
		this.supplyServiceImpl.editSupply(s);
		return "redirect:list";
	}
	@RequestMapping("list")
	public String list(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
			Model model){
		Page<Supply> page;
		if (searchParam==null || "".equals(searchParam)) {
			page=this.supplyServiceImpl.listSupply(pageNum, 5,new Object[]{searchParam});
			
		} else {
			try {
				searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			page = this.supplyServiceImpl.listSupply(pageNum, 5, new Object[]{searchParam});
		}
			request.setAttribute("page", page);
			request.setAttribute("searchParam", searchParam);
			return "files/gongyingshangguanli";
	
	}
	@RequestMapping("chakan")
	public String chakan(@RequestParam(name="supplyId")int supplyId,HttpServletRequest request){
		Supply supply = this.supplyServiceImpl.getSupply(supplyId);
		HttpSession session = request.getSession();
		session.setAttribute("supply",supply);
		return "files/gerenjianjiechakan";
	}
	@RequestMapping("chakanyh")
	public String chakanyh(@RequestParam(name="supplyId")int supplyId,HttpServletRequest request){
		Supply supply = this.supplyServiceImpl.getSupply(supplyId);
		HttpSession session = request.getSession();
		session.setAttribute("supp",supply);
		return "files/gerenjianjiechakanyh";
	}

}
