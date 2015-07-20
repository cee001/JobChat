package com.jobchat.service;

import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JCompany;


public class CompanyService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addJCompany(JCompany u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJCompany(JCompany u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delJCompany(JCompany u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JCompany getJCompanyById(int id){

    	return (JCompany)cd.getObject(JCompany.class, id);
    }     
    
	//通过cid单个查询
	@SuppressWarnings("unchecked")
	public JCompany getCompanyByuid(int userId){
		JCompany u=null;
		String hql="from JCompany where user_id='"+userId+"'";
		ArrayList<JCompany> ls=(ArrayList<JCompany>)cd.getObjects(hql);
		if(ls!=null&&ls.size()>0){
			System.out.println("��½�ɹ���");
			u=(JCompany)ls.get(0);
		}else{
			System.out.println("��½���ɹ���");
		}
		return u;
	}
	
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JCompany> getJFriends(){
		String hql="from JCompany";
		return (ArrayList<JCompany>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JCompany";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JCompany where status = '0'";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JCompany> getCompanyByPageNum(int pageNum,int pageSize){
		String hql="from JCompany where status = '0'";
		return (ArrayList<JCompany>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
