package com.jobchat.service;
import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUser;
import com.jobchat.entity.JUserskill;

public class UserskillService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	
	//添加
	public boolean addUserskill(JUserskill u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //修改
    public boolean updateUserskill(JUserskill u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //删除
    public boolean delUserskill(JUserskill u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //通过id单个查询
    public JUserskill getUserskillById(int id){

    	return (JUserskill)cd.getObject(JUser.class, id);
    }
    
 
    
	//获取全部
	@SuppressWarnings("unchecked")
	public ArrayList<JUserskill> getAllUinfo(int uinfoId){
		String hql="from JUserskill  where userinfo_id = '"+uinfoId+"' and status = '0'";
		return (ArrayList<JUserskill>)cd.getObjects(hql);
	}
	
	//获取全部用户数量
	public int getCounts(){
		String hql="from JUserskill";
		return cd.getObjects(hql).size();
		
	}
	
	//分页获取数量	
	public int getcount(){
		String hql="select count(*) from JUserskill";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	//分页获取
	@SuppressWarnings("unchecked")
	public ArrayList<JUserskill> getSUserByPageNum(int pageNum,int pageSize){
		String hql="from JUserskill";
		return (ArrayList<JUserskill>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
}
