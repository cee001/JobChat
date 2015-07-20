package com.jobchat.service;

import java.util.ArrayList;
import java.util.List;


import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.Admin;

public class AdminService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}
	
	//��½
	public Admin checkLogin(String loginId,String loginPwd){
		Admin u=null;
		
		String hql="from Admin where loginId='"+loginId+"'and loginPwd='"+loginPwd+"'";
		@SuppressWarnings("rawtypes")
		List ls=cd.getObjects(hql);
		if(ls!=null&&ls.size()>0){
			System.out.println("ok");
			u=(Admin)ls.get(0);
		}else{
			System.out.println("no``");
		}
		return u;				
	}
	
	//���
	public boolean addUser(Admin u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //�޸ġ�
    public boolean updateUser(Admin u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //ɾ��
    public boolean delUser(Admin u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //��ȡ����
    public Admin getUserById(int id){

    	return (Admin)cd.getObject(Admin.class, id);
    }
    
    
	//��ȡ����
	@SuppressWarnings("unchecked")
	public ArrayList<Admin> getUsers(){
		String hql="from Admin";
		return (ArrayList<Admin>)cd.getObjects(hql);
	}
	
	//��ҳ��ȡ����
	public int getCounts(){
		String hql="from Admin";
		return cd.getObjects(hql).size();
		
	}
	
	public int getcount(){
		String hql="select count(*) from Admin";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Admin> getUserByPageNum(int pageNum,int pageSize){
		String hql="from Admin";
		return (ArrayList<Admin>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
