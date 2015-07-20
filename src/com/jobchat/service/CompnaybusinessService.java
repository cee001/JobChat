package com.jobchat.service;

import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;

import com.jobchat.entity.JCompnaybusiness;


public class CompnaybusinessService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addCompnaybusiness(JCompnaybusiness u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateCompnaybusiness(JCompnaybusiness u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delCompnaybusiness(JCompnaybusiness u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JCompnaybusiness getSUserById(int id){

    	return (JCompnaybusiness)cd.getObject(JCompnaybusiness.class, id);
    }
 
	//通过cid单个查询
	@SuppressWarnings("unchecked")
	public JCompnaybusiness getCompnaybusinessBycid(int cid){
		JCompnaybusiness u=null;
		String hql="from JCompnaybusiness where company_id = '"+cid+"' and status = '0'";
		ArrayList<JCompnaybusiness> ls=(ArrayList<JCompnaybusiness>)cd.getObjects(hql);
		if(ls!=null&&ls.size()>0){
			
			u=(JCompnaybusiness)ls.get(0);
		}else{

		}
		return u;
	}  
	
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JCompnaybusiness> getSUsers(){
		String hql="from JCompnaybusiness";
		return (ArrayList<JCompnaybusiness>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JCompnaybusiness";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JCompnaybusiness ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JCompnaybusiness> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JCompnaybusiness";
		return (ArrayList<JCompnaybusiness>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
