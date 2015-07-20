package com.jobchat.service;

import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUserpaper;



public class UserpaperService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	
	//添加
	public boolean addUserpaper(JUserpaper u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateUserpaper(JUserpaper u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delUserpaper(JUserpaper u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUserpaper getUserpaperById(int id){

    	return (JUserpaper)cd.getObject(JUserpaper.class, id);
    }

    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUserpaper> getAllUinfo(int uinfoId){
		String hql="from JUserpaper where userinfo_id = '"+uinfoId+"' and status = '0'";
		return (ArrayList<JUserpaper>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUserpaper";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUserpaper ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUserpaper> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JUserpaper";
		return (ArrayList<JUserpaper>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
