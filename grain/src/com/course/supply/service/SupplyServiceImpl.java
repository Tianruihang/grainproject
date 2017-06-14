package com.course.supply.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.course.entity.Meat;
import com.course.entity.Supply;
import com.course.meat.dao.MeatDaoImpl;
import com.course.supply.dao.SupplyDaoImpl;
import com.framework.Page;

@Service
@Transactional
public class SupplyServiceImpl {
	@Resource
	private SupplyDaoImpl supplyDaoImpl;
	
	public void addSupply(Supply s){
		this.supplyDaoImpl.saveSupply(s);
	}
	
	@Transactional(readOnly=true)
	public Page<Supply>listSupply(int pageNum,int pageSize,Object[] param){
		return this.supplyDaoImpl.findSupply(pageNum, pageSize,param);
	}
	
	@Transactional(readOnly=true)
	public Supply getSupply(int supplyId){
		return this.supplyDaoImpl.getSupply(supplyId);
	}
	
	@Transactional(readOnly=true)
	public Supply findByName(String supplyName){
		return this.supplyDaoImpl.findByName(supplyName);
	}
	public void editSupply(Supply s){
		Supply sdb = this.supplyDaoImpl.getSupply(s.getSupplyId());
		sdb.setSupplyName(s.getSupplyName());
			
		this.supplyDaoImpl.updateSupply(sdb);
	}
	public void dropSupply(int supplyId){
		this.supplyDaoImpl.deleteSupply(supplyId);
	}


}
