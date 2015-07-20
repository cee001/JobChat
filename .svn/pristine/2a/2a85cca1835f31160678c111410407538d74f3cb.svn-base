package com.jobchat.service;
import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUser;
import com.jobchat.entity.JUserskilltype;


public class UserskilltypeService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	
	//添加
	public boolean addUserskilltype(JUserskilltype u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateUserskilltype(JUserskilltype u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delUserskilltype(JUserskilltype u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUserskilltype getUserskilltypeById(int id){

    	return (JUserskilltype)cd.getObject(JUser.class, id);
    }
    
 
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUserskilltype> getSUsers(){
		String hql="from JUserskilltype";
		return (ArrayList<JUserskilltype>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUserskilltype";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUserskilltype where status = '0'";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUserskilltype> getUserskilltypeByPageNum(int pageNum,int pageSize){
		String hql="from JUserskilltype where status = '0'";
		return (ArrayList<JUserskilltype>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
