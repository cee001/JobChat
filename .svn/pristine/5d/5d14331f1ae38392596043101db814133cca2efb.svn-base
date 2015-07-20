package com.jobchat.service;

import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JCompanyenvironment;

public class CompanyenvironmentService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addJCompanyenvironment(JCompanyenvironment u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJCompanyenvironment(JCompanyenvironment u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delJCompanyenvironment(JCompanyenvironment u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JCompanyenvironment getJCompanyenvironmentById(int id){

    	return (JCompanyenvironment)cd.getObject(JCompanyenvironment.class, id);
    }      
	//通过cid单个查询
	@SuppressWarnings("unchecked")
	public JCompanyenvironment getCompnayenvironmentBycid(int cid){
		JCompanyenvironment u=null;
		String hql="from JCompanyenvironment where company_id = '"+cid+"' and status = '0'";
		ArrayList<JCompanyenvironment> ls=(ArrayList<JCompanyenvironment>)cd.getObjects(hql);
		if(ls!=null&&ls.size()>0){
			
			u=(JCompanyenvironment)ls.get(0);
		}else{

		}
		return u;
	}   
	
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanyenvironment> getAllCinfo(int cid){
		String hql="from JCompanyenvironment where company_id = '"+cid+"' and status = '0'";
		return (ArrayList<JCompanyenvironment>)cd.getObjects(hql);
	}
	
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanyenvironment> getJFriends(){
		String hql="from JCompanyenvironment";
		return (ArrayList<JCompanyenvironment>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JCompanyenvironment";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JCompanyenvironment";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanyenvironment> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JCompanyenvironment";
		return (ArrayList<JCompanyenvironment>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
