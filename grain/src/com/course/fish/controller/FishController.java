package com.course.fish.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.course.entity.Fish;
import com.course.entity.Supply;
import com.course.fish.service.FishServiceImpl;
import com.course.supply.service.SupplyServiceImpl;
import com.framework.Page;

@Controller
@RequestMapping("fish")
public class FishController {
	
	@Resource
	private FishServiceImpl fishServiceImpl;
	@Resource   //只能注入当前的ServiceImpl
	private SupplyServiceImpl supplyServiceImpl;
	
	@RequestMapping("add")
	public String add(
			@RequestParam(name="FishName") String fname,
			@RequestParam(name="FishPrice") Float fprice,
//			@RequestParam(name="FishDate") Date fDate,
			@RequestParam(name="FishGrade") String fgrade,
			@RequestParam(name="FishDescribe") String fdescribe,
			@RequestParam(name="FishClass") String fclass,
			@RequestParam(name="FishState") String fstate,
//			@RequestParam(name="FishPicture") String fpicture,
			@RequestParam(name="SupplyName") String fsupply,
//			@RequestParam(name="FishLocation") String flocation,
			HttpServletRequest request){
		
		Supply supply = this.supplyServiceImpl.findByName(fsupply);
		
		if (supply == null) {
			return "not found";
		}
		
		Fish f = new Fish();
		f.setFishName(fname);
		f.setFishPrice(fprice);
		f.setFishClass(fclass);
		f.setFishDescribe(fdescribe);
		f.setFishGrade(fgrade);
		f.setSupply(supply);
		this.fishServiceImpl.addFish(f);
		return "redirect:list";
	}
	@RequestMapping(value="edit",method=RequestMethod.GET)
	public String toEdit(@RequestParam("FishId") int fishId,
			HttpServletRequest request){
		Fish f = this.fishServiceImpl.getFish(fishId);
		request.setAttribute("fru", f);
		request.setAttribute("action", "edit");
		return "fish/edit";
	}
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(Fish f,HttpServletRequest request){
		String name = null;
		try {
			name = new String(f.getFishName().getBytes("ISO8859_1"),"UTF_8");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		f.setFishName(name);
		this.fishServiceImpl.editFish(f);
		return "redirect:list";
	}
	@RequestMapping("list")
	public String list(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
			Model model){
		Page<Fish> page;
		if (searchParam==null || "".equals(searchParam)) {
			page=this.fishServiceImpl.listFish(pageNum, 5,new Object[]{searchParam});
			
		} else {
			try {
				searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			page = this.fishServiceImpl.listFish(pageNum, 5, new Object[]{searchParam});
		}
			request.setAttribute("page", page);
			request.setAttribute("searchParam", searchParam);
			return "files/shangpinguanli-fish";
			
			}
		@RequestMapping(value="deleteFish")
			public String delete(@RequestParam("fishId") int fishId,
					HttpServletRequest request){
				this.fishServiceImpl.dropFish(fishId);
				return "redirect:list";
			}
		}