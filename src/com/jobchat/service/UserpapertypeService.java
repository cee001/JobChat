package com.jobchat.service;

import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUserpapertype;



public class UserpapertypeService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	
	//添加
	public boolean addUserpapertype(JUserpapertype u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateUserpapertype(JUserpapertype u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delUserpapertype(JUserpapertype u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUserpapertype getUserpaperById(int id){

    	return (JUserpapertype)cd.getObject(JUserpapertype.class, id);
    }

    
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUserpapertype";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUserpapertype where status = '0'";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUserpapertype> getUserpapertypeByPageNum(int pageNum,int pageSize){
		String hql="from JUserpapertype where status = '0'";
		return (ArrayList<JUserpapertype>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
