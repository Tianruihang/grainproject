package com.course.login.dao;

import javax.annotation.Resource;
import org.springframework.stereotype.Repository;
import com.course.entity.Login;
import com.course.entity.User;
import com.framework.BaseDao;
import com.framework.Page;

@Repository
public class LoginDaoImpl extends BaseDao<Login,String> {
	public void saveLogin(Login u){
		try {
			this.save(u);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Page<Login> findLogin(int pageNum,int pageSize,Object[] params){
		String hql;
		if(params !=null && params.length>0){
			hql="from Login s where s.loginName like ?";
			params[0]="%"+params[0]+"%";
		}else{
			hql="from Login";
		}
		try{
			Page<Login> page = new Page<Login>();
			page.setCurrentPageNum(pageNum);
			page.setPageSize(pageSize);
			page=this.findByPage(pageNum, pageSize, hql, params);
			return page;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	public Login findByNamdAndPwd(String name,String pwd){
		try{
			return super.findOne("from Login lu where lu.loginName=? and lu.password=?", new Object[]{name,pwd});
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
