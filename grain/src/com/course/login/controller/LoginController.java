package com.course.login.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.course.entity.Login;
import com.course.entity.Supply;
import com.course.entity.User;
import com.course.login.service.LoginServiceImpl;
import com.course.supply.service.SupplyServiceImpl;
import com.framework.Page;
import com.google.gson.Gson;;
@Controller
@RequestMapping("login")
public class LoginController {
	
	@Resource
	private LoginServiceImpl loginServiceImpl;
	
	@RequestMapping("hello")
	public String login(@RequestParam("username") String name,
			@RequestParam("password") String password,@RequestParam("root") String root,HttpServletRequest request, HttpSession session){
		Login lu=this.loginServiceImpl.login(name, password);
		
		if(lu!=null){
			
			session.setAttribute("loginName",lu.getLoginName());
			request.setAttribute("root", lu.getRoot());
			if(root.equals("0")){
				return "indexgly";
			}
			else if(root.equals("1"))	{
				return "indexyh";
			}else{
				return "redirect:/login.jsp";
			}
			
			
		}else{
			return "redirect:/login.jsp";
		}
		
	}
	
	@RequestMapping("checkname")
	@ResponseBody
	public String CheckNameExist(HttpServletRequest request){
		String name=request.getParameter("loginName");
		List<Login> list=new ArrayList<Login>();
		Login l1=new Login();
		l1.setLoginName("admin");
		l1.setPassword("111111");
		l1.setRoot("0");
		Login l2=new Login();
		l2.setLoginName("bb");
		l2.setPassword("22");
		l2.setRoot("1");
		list.add(l1);
		list.add(l2);
		Gson gson=new Gson();
		return gson.toJson(list);
	}

	@RequestMapping("addlogin")
	public String add(@RequestParam(name="LoginName") String uname,@RequestParam(name="password") String upassword,@RequestParam(name="Root") String root,HttpServletRequest request){
		String name = null;
		try {
			name = new String(uname.getBytes("ISO8859_1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Login u = new Login();
		u.setLoginName(uname);
		u.setRoot(root);
		u.setPassword(upassword);
		this.loginServiceImpl.addLogin(u);
		return "redirect:listlogin";
	}
	@RequestMapping("listlogin")
	public String list(@RequestParam(name="pageNum", defaultValue="1") int pageNum,
			@RequestParam(name="searchParam",defaultValue="") String searchParam,HttpServletRequest request,
			Model model){
		Page<Login> page;
		System.out.println("listlogin");
		if(searchParam==null || "".equals(searchParam)){
			page=this.loginServiceImpl.listLogin(pageNum, 5, null);	
		}else{
//			System.out.println("before"+searchParam);
			try {
			 searchParam = new String(searchParam.getBytes("ISO8859_1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
//			System.out.println("after"+searchParam);
			page=this.loginServiceImpl.listLogin(pageNum, 5, new Object[]{searchParam});
		}
		request.setAttribute("page", page);
		request.setAttribute("searchParam", searchParam);
		return "login";
		
	}
}
	

