package com.course.supply.dao;

import org.springframework.stereotype.Repository;

import com.course.entity.Meat;
import com.course.entity.Supply;
import com.framework.BaseDao;
import com.framework.Page;

@Repository

public class SupplyDaoImpl extends BaseDao<Supply,Integer>{
	public void saveSupply(Supply S){
		try{
			this.save(S);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public Page<Supply> findSupply(int pageNum,int pageSize,Object[] params){
		String hql;
		if(params !=null && params.length>0){
			hql="from Supply s where s.supplyName like ?";
			params[0]="%"+params[0]+"%";
		}else{
			hql="from Supply";
		}
		try{
			Page<Supply> page = new Page<Supply>();
			page.setCurrentPageNum(pageNum);
			page.setPageSize(pageSize);
			page=this.findByPage(pageNum, pageSize, hql, params);
			return page;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public Supply getSupply(int supplyId){
		try {
			Supply s = this.get(supplyId);
			return s;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	public void updateSupply(Supply s){
		try {
			this.update(s);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void deleteSupply(int supplyId){
		try {
			this.delete(supplyId);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
