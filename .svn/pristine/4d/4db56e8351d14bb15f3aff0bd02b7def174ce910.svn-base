package com.jobchat.service;

import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JCompanyjobtype;


public class CompanyjobtypeService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addJCompanyjobtype(JCompanyjobtype u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJCompanyjobtype(JCompanyjobtype u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delJCompanyjobtype(JCompanyjobtype u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JCompanyjobtype getJCompanyjobtypeById(int id){

    	return (JCompanyjobtype)cd.getObject(JCompanyjobtype.class, id);
    }      
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanyjobtype> getJFriends(){
		String hql="from JCompanyjobtype";
		return (ArrayList<JCompanyjobtype>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JCompanyjobtype";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JCompanyjobtype where status = '0'";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanyjobtype> getCompanyjobtypeByPageNum(int pageNum,int pageSize){
		String hql="from JCompanyjobtype where status = '0'";
		return (ArrayList<JCompanyjobtype>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
