package com.jobchat.service;
import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUsereducation;



public class UsereducationService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	
	//添加
	public boolean addJUsereducation(JUsereducation u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJUsereducation(JUsereducation u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delJUsereducation(JUsereducation u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUsereducation getSUserById(int id){

    	return (JUsereducation)cd.getObject(JUsereducation.class, id);
    }
    
	
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUsereducation> getAllUinfo(int uinfoId){
		String hql="from JUsereducation where userinfo_id = '"+uinfoId+"' and status = '0'";;
		return (ArrayList<JUsereducation>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUsereducation";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUsereducation ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUsereducation> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JUsereducation";
		return (ArrayList<JUsereducation>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
