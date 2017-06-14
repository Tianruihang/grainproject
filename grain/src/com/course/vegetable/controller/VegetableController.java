package com.course.vegetable.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.course.entity.Supply;
import com.course.entity.Vegetable;
import com.course.supply.service.SupplyServiceImpl;
import com.course.vegetable.service.VegetableServiceImpl;
import com.framework.Page;

@Controller
@RequestMapping("vegetable")
public class VegetableController {
	
	@Resource
	private VegetableServiceImpl vegetableServiceImpl;
	@Resource   //只能注入当前的ServiceImpl
	private SupplyServiceImpl supplyServiceImpl;
	
	@RequestMapping("add")
	public String add(
			@RequestParam(name="VegetableName") String vname,
			@RequestParam(name="VegetablePrice") Float vprice,
//			@RequestParam(name="VegetableDate") Date vDate,
			@RequestParam(name="VegetableGrade") String vgrade,
			@RequestParam(name="VegetableDescribe") String vdescribe,
			@RequestParam(name="VegetableClass") String vclass,
			@RequestParam(name="VegetableState") String vstate,
//			@RequestParam(name="VegetablePicture") String vpicture,
			@RequestParam(name="SupplyName") String vsupply,
//			@RequestParam(name="VegetableLocation") String vlocation,
			HttpServletRequest request){
		
		
		
		Supply supply = this.supplyServiceImpl.findByName(vsupply);
		
		if (supply == null) {
			return "not found";
		}
		Vegetable v = new Vegetable();
		
		v.setVegetableName(vname);
		v.setVegetablePrice(vprice);				
		v.setVegetableClass(vclass);
//		v.setVegetableDate(vDate);
		v.setVegetableDescribe(vdescribe);
		v.setVegetableGrade(vgrade);
//		v.setVegetableLocation(location);
//		v.setVegetablePicture(vpicture);
		v.setVegetableState(vstate);
		v.setSupply(supply);	
			
		this.vegetableServiceImpl.addVegetable(v);
		
		return "redirect:list";
	}
	
	@RequestMapping(value="edit",method=RequestMethod.GET)
	public String toEdit(@RequestParam("VegetableId") int vegetableId,
			HttpServletRequest request){
		Vegetable f = this.vegetableServiceImpl.getVegetable(vegetableId);
		request.setAttribute("fru", f);
		request.setAttribute("action", "edit");
		return "vegetable/edit";
	}
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(Vegetable f,HttpServletRequest request){
		String name = null;
		try {
			name = new String(f.getVegetableName().getBytes("ISO8859_1"),"UTF_8");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		f.setVegetableName(name);
		this.vegetableServiceImpl.editVegetable(f);
		return "redirect:list";
	}
	@RequestMapping("telist")	
	public String telist(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
			@RequestParam(name="vegetableState",defaultValue="vState")String vste,
			Model model){
		Page<Vegetable> page;
		if (searchParam==null || "".equals(searchParam)) {
			page=this.vegetableServiceImpl.listVegetable(pageNum, 5,new Object[]{vste});
			
		} else {
			try {
				searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			page = this.vegetableServiceImpl.listVegetable(pageNum, 5, new Object[]{vste,searchParam});
		}
			request.setAttribute("page", page);
			request.setAttribute("searchParam", searchParam);
			return "files/tejiashangpin";
			
			}
	@RequestMapping("list")
	public String list(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="") String searchParam,
			HttpServletRequest request,
			Model model){
		Page<Vegetable> page;
		if (searchParam==null || "".equals(searchParam)) {
			page=this.vegetableServiceImpl.listVegetable(pageNum, 5,new Object[]{searchParam});
			
		} else {
			try {
				searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			page = this.vegetableServiceImpl.listVegetable(pageNum, 5, new Object[]{searchParam});
		}
			request.setAttribute("page", page);
			request.setAttribute("searchParam", searchParam);
			return "files/shangpinguanli-vegetable";
			
			}
	@RequestMapping(value="deleteVegetable")
		public String delete(@RequestParam("vegetableId") int vegetableId,
				HttpServletRequest request){
			this.vegetableServiceImpl.dropVegetable(vegetableId);
			return "redirect:list";
		}
	}