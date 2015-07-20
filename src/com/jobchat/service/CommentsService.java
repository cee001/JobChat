package com.jobchat.service;

import java.util.ArrayList;
import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.JComments;

public class CommentsService {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}

	public boolean addSComments(JComments u){
		try{
			cd.addObject(u);
			return true;
			
		}catch(Exception ex){
			return false;
		}
		
	}
	   //�޸ġ�
    public boolean updateSComments(JComments u){
        try{
        	cd.updateObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }
    }
    
    //ɾ��
    public boolean delSComments(JComments u){
        try{
        	cd.delObject(u);
        	return true;
        }catch(Exception ex){
        	return false;
        }    

    }
    
    //��ȡ����
    public JComments getSCommentsById(int id){

    	return (JComments)cd.getObject(JComments.class, id);
    }
    
    
	//��ȡ����
	@SuppressWarnings("unchecked")
	public ArrayList<JComments> getSCommentss(){
		String hql="from JComments";
		return (ArrayList<JComments>)cd.getObjects(hql);
	}
	
	//��ҳ��ȡ����
	public int getCounts(){
		String hql="from JComments";
		return cd.getObjects(hql).size();
		
	}
	public int getcount(){
		String hql="select count(*) from JComments";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<JComments> getSCommentsByPageNum(int pageNum,int pageSize){
		String hql="from JComments";
		return (ArrayList<JComments>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}
	
	public int getMidcount(int mid){
		String hql="select count(*) from JComments where comments_infostatus != '1' ";
		if(mid!=-1){
			hql+="and  message_id = '"+ mid +"'";
		}
		
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}	
	@SuppressWarnings("unchecked")
	public ArrayList<JComments> getTCommentsUIDByPageNum(int mid, int pageNum,int pageSize){
		String hql="from JComments where  comments_infostatus != '1'";
		
		if(mid!=-1){
			hql+="and  message_id = '"+ mid +"'";
		}
		hql+="ORDER by comments_time desc";
		
		return (ArrayList<JComments>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}	
	
	//后台评论审核	
	public int getcount1(int sid){
		String hql="select count(*) from JComments where  comments_infostatus ='"+sid+"'";
		return Integer.parseInt(cd.getObjects(hql).get(0).toString());
	}	
	@SuppressWarnings("unchecked")
	public ArrayList<JComments> getSCommentsByPageNum(int pageNum,int pageSize,int sid){
		String hql="from JComments where commentsInfostatus  ='"+sid+"'";
		return (ArrayList<JComments>)cd.getObjectByPageNum(hql, pageNum, pageSize);
	}	
}
