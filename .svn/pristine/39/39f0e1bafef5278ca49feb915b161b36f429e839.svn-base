package com.jobchat.service;

import java.util.ArrayList;


import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.Roleinfo;


public class RoleinfoService {
	private CommonDAO cd;
	private Roleinfo ri;
	public Roleinfo getRi() {
		return ri;
	}

	public void setRi(Roleinfo ri) {
		this.ri = ri;
	}

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}
	
	//���
	public boolean addRole(Roleinfo ri){
		try{
			cd.addObject(ri);
			return true;
		}catch (Exception ex){
			return false;
		}
	}
    
    //�޸ġ�
    public boolean updateRole(Roleinfo ri){
        try{
        	cd.updateObject(ri);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    //ɾ��
    public boolean delRole(Roleinfo ri){
        try{
        	cd.delObject(ri);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
	public Roleinfo getRoleInfoById(int roleId){

		return (Roleinfo)cd.getObject(Roleinfo.class,roleId);
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Roleinfo> getAllRoleInfos(){
		String hql="from Roleinfo";

		return (ArrayList<Roleinfo>)cd.getObjects(hql);		
	}

}



