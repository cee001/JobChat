package com.jobchat.service;

import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JKeyword;


public class KeywordService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addJKeyword(JKeyword u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJKeyword(JKeyword u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delKeyword(JKeyword u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JKeyword getJKeywordById(int id){

    	return (JKeyword)cd.getObject(JKeyword.class, id);
    }      
    
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JKeyword where status = '0'";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JKeyword> getKeywordByPageNum(int pageNum,int pageSize){
		String hql="from JKeyword where status = '0'";
		return (ArrayList<JKeyword>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
