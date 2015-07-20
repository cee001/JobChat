package com.jobchat.service;

import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUsercompanyjob;



public class UsercompanyjobService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	
	//添加
	public boolean addJUsercompanyjob(JUsercompanyjob u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJUsercompanyjob(JUsercompanyjob u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delJUsercompanyjob(JUsercompanyjob u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUsercompanyjob getUCjobById(int id){

    	return (JUsercompanyjob)cd.getObject(JUsercompanyjob.class, id);
    }
 
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUsercompanyjob> getSUsers(){
		String hql="from JUsercompanyjob";
		return (ArrayList<JUsercompanyjob>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUsercompanyjob";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUsercompanyjob where status = '0'";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUsercompanyjob> getUsercompanyjobByPageNum(int pageNum,int pageSize){
		String hql="from JUsercompanyjob  where status = '0'";

		return (ArrayList<JUsercompanyjob>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
