package com.course.meat.controller;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.course.entity.Meat;
import com.course.entity.Supply;
import com.course.meat.service.MeatServiceImpl;
import com.course.supply.service.SupplyServiceImpl;
import com.framework.Page;

@Controller
@RequestMapping("meat")
public class MeatController {
	@Resource
	private MeatServiceImpl meatServiceImpl;
	@Resource   //只能注入当前的ServiceImpl
	private SupplyServiceImpl supplyServiceImpl;
	
	@RequestMapping("add")
	public String add(
			@RequestParam(name="MeatName") String mname,
			@RequestParam(name="MeatPrice") Float mprice,
//			@RequestParam(name="MeatDate") Date mDate,
			@RequestParam(name="MeatGrade") String mgrade,
			@RequestParam(name="MeatDescribe") String mdescribe,
			@RequestParam(name="MeatClass") String mclass,
			@RequestParam(name="MeatState") String mstate,
//			@RequestParam(name="MeatPicture") String mpicture,
			@RequestParam(name="SupplyName") String msupply,
//			@RequestParam(name="MeatLocation") String mlocation,
			HttpServletRequest request){
		
		Supply supply = this.supplyServiceImpl.findByName(msupply);
		
		if (supply == null) {
			return "not found";
		}
		
		Meat f = new Meat();
		f.setMeatName(mname);
		f.setMeatPrice(mprice);
		f.setMeatClass(mclass);
		f.setMeatDescribe(mdescribe);
		f.setMeatGrade(mgrade);
		f.setMeatState(mstate);
		f.setSupply(supply);
		
		this.meatServiceImpl.addMeat(f);
		
		return "redirect:list";
	}
	@RequestMapping(value="edit",method=RequestMethod.GET)
	public String toEdit(@RequestParam("MeatId") int meatId,
			HttpServletRequest request){
		Meat f = this.meatServiceImpl.getMeat(meatId);
		request.setAttribute("fru", f);
		request.setAttribute("action", "edit");
		return "Meat/edit";
	}
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(Meat f,HttpServletRequest request){
		String name = null;
		try {
			name = new String(f.getMeatName().getBytes("ISO8859_1"),"UTF_8");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		f.setMeatName(name);
		this.meatServiceImpl.editMeat(f);
		return "redirect:list";
	}
	@RequestMapping("list")
	public String list(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
			Model model){
		Page<Meat> page;
		if (searchParam==null || "".equals(searchParam)) {
			page=this.meatServiceImpl.listMeat(pageNum, 5,new Object[]{searchParam});
			
		} else {
			try {
				searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			page = this.meatServiceImpl.listMeat(pageNum, 5, new Object[]{searchParam});
		}
			request.setAttribute("page", page);
			request.setAttribute("searchParam", searchParam);
			return "files/shangpinguanli-meat";
	
	}
	@RequestMapping(value="deleteMeat")
	public String delete(@RequestParam("meatId") int meatId,
			HttpServletRequest request){
		this.meatServiceImpl.dropMeat(meatId);
		return "redirect:list";
	}
}