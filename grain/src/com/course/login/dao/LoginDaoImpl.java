package com.course.login.dao;

import javax.annotation.Resource;
import org.springframework.stereotype.Repository;
import com.course.entity.Login;
import com.framework.BaseDao;

@Repository
public class LoginDaoImpl extends BaseDao<Login,String> {

	public Login findByNamdAndPwd(String name,String pwd){
		try{
			return super.findOne("from Login lu where lu.loginName=? and lu.password=?", new Object[]{name,pwd});
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
}
