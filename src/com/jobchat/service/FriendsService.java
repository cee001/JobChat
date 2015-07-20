package com.jobchat.service;

import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JFriends;


public class FriendsService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addJFriends(JFriends u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJFriends(JFriends u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delJFriends(JFriends u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JFriends getJFriendsById(int id){

    	return (JFriends)cd.getObject(JFriends.class, id);
    }      
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JFriends> getJFriends(){
		String hql="from JFriends";
		return (ArrayList<JFriends>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JFriends";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JFriends ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JFriends> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JFriends";
		return (ArrayList<JFriends>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
