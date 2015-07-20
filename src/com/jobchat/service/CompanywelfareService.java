package com.jobchat.service;

import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JCompanywelfare;


public class CompanywelfareService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addJCompanywelfare(JCompanywelfare u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJCompanywelfare(JCompanywelfare u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delJCompanywelfare(JCompanywelfare u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JCompanywelfare getJCompanywelfareById(int id){

    	return (JCompanywelfare)cd.getObject(JCompanywelfare.class, id);
    }      
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanywelfare> getAllCinfo(int cid){
		String hql="from JCompanywelfare where company_id = '"+cid+"' and status = '0'";
		return (ArrayList<JCompanywelfare>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JCompanywelfare";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JCompanywelfare ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanywelfare> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JCompanywelfare";
		return (ArrayList<JCompanywelfare>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
