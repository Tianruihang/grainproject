package com.course.login.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.course.entity.Login;
import com.course.entity.User;
import com.course.login.dao.LoginDaoImpl;
import com.framework.Page;

@Service
@Transactional
public class LoginServiceImpl {
	
	@Resource
	private LoginDaoImpl loginDaoImpl;
	public void addLogin(Login u) {
		// TODO Auto-generated method stub
		this.loginDaoImpl.saveLogin(u);
		
	}
	
	@Transactional(readOnly=false)
	public void regist(){
		//insert user
		
		int a=10/0;
		
		//update score
		
	}

	public Login login(String name,String pwd){
		return this.loginDaoImpl.findByNamdAndPwd(name, pwd);
	}

	public Page<Login> listLogin(int pageNum, int i, Object[] object) {
		// TODO Auto-generated method stub
		return this.loginDaoImpl.findLogin(pageNum,i,object);
	}

	
	
}
