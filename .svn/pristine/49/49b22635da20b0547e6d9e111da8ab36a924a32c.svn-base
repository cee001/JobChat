package com.jobchat.service;

import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JCompanywelfaretype;


public class CompanywelfaretypeService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addJCompanywelfaretype(JCompanywelfaretype u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJCompanywelfaretype(JCompanywelfaretype u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delJCompanywelfaretype (JCompanywelfaretype u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JCompanywelfaretype getJCompanywelfaretypeById(int id){

    	return (JCompanywelfaretype)cd.getObject(JCompanywelfaretype.class, id);
    }      
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanywelfaretype> getCompanywelfaretype(){
		String hql="from JCompanywelfaretype";
		return (ArrayList<JCompanywelfaretype>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JCompanywelfaretype";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JCompanywelfaretype where status = '0'";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanywelfaretype> getCompanywelfaretypeByPageNum(int pageNum,int pageSize){
		String hql="from JCompanywelfaretype where status = '0'";
		return (ArrayList<JCompanywelfaretype>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
