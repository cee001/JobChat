package com.jobchat.service;
import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUser;

import com.jobchat.entity.JUservalues;

public class UservaluesService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}
	
	//添加
	public boolean addUservalues(JUservalues u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateUservalues(JUservalues u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delUservalues(JUservalues u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUser getUservaluesById(int id){

    	return (JUser)cd.getObject(JUservalues.class, id);
    }
    
	public JUservalues getJUservaluesByUinfoid(int uinfoId){
		JUservalues u=null;
		String hql="from JUservalues where userinfo_id='"+uinfoId+"'";
		@SuppressWarnings("unchecked")
		ArrayList<JUservalues> ls=(ArrayList<JUservalues>)cd.getObjects(hql);
		if(ls!=null&&ls.size()>0){	
			u=(JUservalues)ls.get(0);
		}else{

		}
		return u;
	}   
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUservalues> getUservalues(){
		String hql="from JUservalues";
		return (ArrayList<JUservalues>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUservalues";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUservalues ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUservalues> getJUservaluesByPageNum(int pageNum,int pageSize){
		String hql="from JUservalues";
		return (ArrayList<JUservalues>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
