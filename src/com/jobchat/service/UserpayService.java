package com.jobchat.service;

import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUserpay;



public class UserpayService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addUserpay(JUserpay u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateUserpay(JUserpay u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delUserpay(JUserpay u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUserpay getUserpayById(int id){

    	return (JUserpay)cd.getObject(JUserpay.class, id);
    }
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUserpay> getSUsers(){
		String hql="from JUserpay";
		return (ArrayList<JUserpay>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUserpay";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUserpay ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUserpay> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JUserpay";
		return (ArrayList<JUserpay>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
