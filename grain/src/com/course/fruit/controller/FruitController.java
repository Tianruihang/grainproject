package com.course.fruit.controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.course.entity.Fruit;
import com.course.entity.Supply;
import com.course.fruit.service.FruitServiceImpl;
import com.course.supply.service.SupplyServiceImpl;
import com.framework.Page;

@Controller
@RequestMapping("fruit")
public class FruitController {
	
	@Resource
	private FruitServiceImpl fruitServiceImpl;
	@Resource   //只能注入当前的ServiceImpl
	private SupplyServiceImpl supplyServiceImpl;
	
	@RequestMapping("add")
	public String add(
			@RequestParam(name="FruitName") String fname,
			@RequestParam(name=("FruitPrice"))Float fprice,
//			@RequestParam(name="FruitDate") Date fDate,
			@RequestParam(name="FruitGrade") String fgrade,
			@RequestParam(name="FruitDescribe") String fdescribe,
			@RequestParam(name="FruitClass") String fclass,
			@RequestParam(name="FruitState") String fstate,
//			@RequestParam(name="FruitPicture") String fpicture,
			@RequestParam(name="SupplyName") String fsupply,
			HttpServletRequest request){
		
		Supply supply = this.supplyServiceImpl.findByName(fsupply);
		
		if (supply == null) {
			return "not found";
		}
		
		Fruit f = new Fruit();
		
		f.setFruitName(fname);
		f.setFruitPrice(fprice);
		f.setFruitClass(fclass);
		f.setFruitDescribe(fdescribe);
		f.setFruitGrade(fgrade);
		f.setFruitState(fstate);
		f.setSupply(supply);
		
		this.fruitServiceImpl.addFruit(f);
		
		return "redirect:list";
	}
	
	@RequestMapping(value="edit",method=RequestMethod.GET)
	public String toEdit(@RequestParam("FruitId") int fruitId,
			HttpServletRequest request){
		Fruit f = this.fruitServiceImpl.getFruit(fruitId);
		request.setAttribute("fru", f);
		request.setAttribute("action", "edit");
		return "fruit/edit";
	}
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(Fruit f,HttpServletRequest request){
		String name = null;
		try {
			name = new String(f.getFruitName().getBytes("ISO8859_1"),"UTF_8");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		f.setFruitName(name);
		this.fruitServiceImpl.editFruit(f);
		return "redirect:list";
	}
	@RequestMapping("list")
	public String list(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
			Model model){
		Page<Fruit> page;
		if (searchParam==null || "".equals(searchParam)) {
			page=this.fruitServiceImpl.listFruit(pageNum, 5,new Object[]{searchParam});
			
		} else {
			try {
				searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			page = this.fruitServiceImpl.listFruit(pageNum, 5, new Object[]{searchParam});
		}
			request.setAttribute("page", page);
			request.setAttribute("searchParam", searchParam);
			return "files/shangpinguanli-fruit";
	
	}
	@RequestMapping("qtlist")
	public String qtlist(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
			Model model){
		Page<Fruit> page;
		if (searchParam==null || "".equals(searchParam)) {
			page=this.fruitServiceImpl.listFruit(pageNum, 5,new Object[]{searchParam});
			
		} else {
			try {
				searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			page = this.fruitServiceImpl.listFruit(pageNum, 5, new Object[]{searchParam});
		}
			request.setAttribute("page", page);
			request.setAttribute("searchParam", searchParam);
			return "qt_files/fenleiyemian";
	}	
			@RequestMapping(value="deleteFruit")
			public String delete(@RequestParam("fruitId") int fruitId,
					HttpServletRequest request){
				this.fruitServiceImpl.dropFruit(fruitId);
				return "redirect:list";

		
	}
			@RequestMapping(value="deleteyhFruit")
			public String deleteyh(@RequestParam("fruitId") int fruitId,
					HttpServletRequest request){
				this.fruitServiceImpl.dropFruit(fruitId);
				return "redirect:chakanyh";

		
	}
			@RequestMapping(value="deletetejiayhFruit")
			public String deletetejiayh(@RequestParam("fruitId") int fruitId,
					HttpServletRequest request){
				this.fruitServiceImpl.dropFruit(fruitId);
				return "redirect:tejiayh";

		
	}
			@RequestMapping(value="deletetejiaFruit")
			public String deletetejia(@RequestParam("fruitId") int fruitId,
					HttpServletRequest request){
				this.fruitServiceImpl.dropFruit(fruitId);
				return "redirect:tejia";

		
	}
		
			
			
			
			@RequestMapping("chakanyh")
			public String chakanyh(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
					@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
					Model model){
				Page<Fruit> page;
				if (searchParam==null || "".equals(searchParam)) {
					page=this.fruitServiceImpl.listFruit(pageNum, 5,new Object[]{searchParam});
					
				} else {
					try {
						searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
					page = this.fruitServiceImpl.listFruit(pageNum, 5, new Object[]{searchParam});
				}
					request.setAttribute("page", page);
					request.setAttribute("searchParam", searchParam);
					return "files/shangpinguanliyh-fruit";
					
					}
			@RequestMapping("tejiayh")
			public String tejiayh(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
					@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
					Model model){
				Page<Fruit> page;
				if (searchParam==null || "".equals(searchParam)) {
					page=this.fruitServiceImpl.listFruit(pageNum, 5,new Object[]{searchParam});
					
				} else {
					try {
						searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
					page = this.fruitServiceImpl.listFruit(pageNum, 5, new Object[]{searchParam});
				}
					request.setAttribute("page", page);
					request.setAttribute("searchParam", searchParam);
					return "files/tejiashangpinyh-fruit";
					
					}
			@RequestMapping("tejia")
			public String tejia(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
					@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
					Model model){
				Page<Fruit> page;
				if (searchParam==null || "".equals(searchParam)) {
					page=this.fruitServiceImpl.listFruit(pageNum, 5,new Object[]{searchParam});
					
				} else {
					try {
						searchParam = new String(searchParam.getBytes("ISO8859_1"),"UTF-8");
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
					page = this.fruitServiceImpl.listFruit(pageNum, 5, new Object[]{searchParam});
				}
					request.setAttribute("page", page);
					request.setAttribute("searchParam", searchParam);
					return "files/tejiashangpin-fruit";
					
					}
}