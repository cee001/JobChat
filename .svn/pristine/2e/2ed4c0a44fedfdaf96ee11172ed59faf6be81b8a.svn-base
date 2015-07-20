package com.jobchat.service;

import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUserhobby;



public class UserhobbyService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addUserhobby(JUserhobby u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateUserhobby(JUserhobby u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delUserhobby(JUserhobby u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUserhobby getUserhobbyById(int id){

    	return (JUserhobby)cd.getObject(JUserhobby.class, id);
    }
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUserhobby> getAllUinfo(int uinfoId){
		String hql="from JUserhobby where userinfo_id = '"+uinfoId+"' and status = '0'";
		return (ArrayList<JUserhobby>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUserhobby";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUserhobby ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUserhobby> getUserhobbyByPageNum(int pageNum,int pageSize){
		String hql="from JUserhobby";
		return (ArrayList<JUserhobby>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
