package com.jobchat.service;
import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JUserhobbytype;


public class UserhobbytypeService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}
	

	//���
	public boolean addUserhobbytype(JUserhobbytype u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	//�޸ġ�
    public boolean updateUserhobbytype(JUserhobbytype u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //ɾ��
    public boolean delUserhobbytype(JUserhobbytype u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //��ȡ����
    public JUserhobbytype getHomemalltypeById(int id){

    	return (JUserhobbytype)cd.getObject(JUserhobbytype.class, id);
    }
	@SuppressWarnings("unchecked")
	public ArrayList<JUserhobbytype> getHomemalltypes(){
		String hql="from JUserhobbytype where status = '0'";
		return (ArrayList<JUserhobbytype>)cd.getObjects(hql);
	}  
	//��ȡ����
	public int getcount(){
		
		String hql="select count(*) from JUserhobbytype where status = '0'";

		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<JUserhobbytype> getUserhobbytypeByPageNum(int pageNum,int pageSize){
		
		String hql="from JUserhobbytype where status = '0' ";

		return (ArrayList<JUserhobbytype>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}


}
