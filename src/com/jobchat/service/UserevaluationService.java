package com.jobchat.service;
import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUserevaluation;



public class UserevaluationService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}
	

	//添加
	public boolean addUserevaluation(JUserevaluation u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateUserevaluation(JUserevaluation u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delUserevaluation(JUserevaluation u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUserevaluation getSUserById(int id){

    	return (JUserevaluation)cd.getObject(JUserevaluation.class, id);
    }
     
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUserevaluation> getAllUinfo(int uinfoId){
		String hql="from JUserevaluation where userinfo_id = '"+uinfoId+"' and status = '0'";
		return (ArrayList<JUserevaluation>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUserevaluation";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUserevaluation ";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUserevaluation> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JUserevaluation";
		return (ArrayList<JUserevaluation>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
