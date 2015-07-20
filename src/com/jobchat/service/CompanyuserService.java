package com.jobchat.service;

import java.util.ArrayList;

import com.jobchat.dao.CommonDAO;

import com.jobchat.entity.JCompanyuser;




public class CompanyuserService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	//添加
	public boolean addJCompanyuser(JCompanyuser u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateJCompanyuser(JCompanyuser u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delJCompanyuser(JCompanyuser u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JCompanyuser getJCompanyuserById(int id){

    	return (JCompanyuser)cd.getObject(JCompanyuser.class, id);
    }      
  
	//��ȡ����
	@SuppressWarnings("unchecked")
	public JCompanyuser getCompanyuserBycid(int cid){
		JCompanyuser u=null;
		String hql="from JCompanyuser where company_id='"+cid+"'";
		ArrayList<JCompanyuser> ls=(ArrayList<JCompanyuser>)cd.getObjects(hql);
		if(ls!=null&&ls.size()>0){

			u=(JCompanyuser)ls.get(0);
		}else{

		}
		return u;
	}
	
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanyuser> getJCompanyuser(){
		String hql="from JCompanyuser";
		return (ArrayList<JCompanyuser>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JCompanyuser";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JCompanyuser ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JCompanyuser> getCompanyuserByPageNum(int pageNum,int pageSize){
		String hql="from JCompanyuser";
		return (ArrayList<JCompanyuser>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
