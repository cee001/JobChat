package com.jobchat.service;
import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUser;
import com.jobchat.entity.JUserwork;


public class UserworkService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	
	//添加
	public boolean addUserwork(JUserwork u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateUserwork(JUserwork u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delUserwork(JUserwork u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUserwork getUserworkById(int id){

    	return (JUserwork)cd.getObject(JUser.class, id);
    }
    
 
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUserwork> getAllUinfo(int uinfoId){
		String hql="from JUserwork where userinfo_id = '"+uinfoId+"' and status = '0'";
		return (ArrayList<JUserwork>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUserwork";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUserwork ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUserwork> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JUserwork";
		return (ArrayList<JUserwork>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
