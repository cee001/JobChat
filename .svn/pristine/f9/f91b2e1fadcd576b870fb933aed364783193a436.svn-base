package com.jobchat.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CommonDAO extends HibernateDaoSupport{

	 // ��Ӷ���ķ���

	public void addObject(Object obj){	

		super.getHibernateTemplate().save(obj);	
	}
	// �޸Ķ���ķ���
	public void updateObject(Object obj){

		super.getHibernateTemplate().update(obj);	
	
	}
	//ɾ�����ķ���
	public void delObject(Object obj){

		super.getHibernateTemplate().delete(obj);	
	}
    // ��Ѱ��������ķ���
	public Object getObject(String hql){

		return super.getHibernateTemplate().find(hql);
	}
    // ��Ѱ��������ķ���
	@SuppressWarnings("unchecked")
	public Object getObject(@SuppressWarnings("rawtypes") Class c,Serializable id){

		return super.getHibernateTemplate().get(c, id);
	}
    // ��Ѱ��������ķ���
	@SuppressWarnings("unchecked")
	public Object loadObject(@SuppressWarnings("rawtypes") Class c,Serializable id){

		return super.getHibernateTemplate().get(c, id);
	}
	//�����Ѱ���Զ���ķ���
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List getObjects(Class c,Serializable nid){

		return super.getHibernateTemplate().get(c, nid);
	}
	//��Ѱ���Զ���ķ���
	@SuppressWarnings("rawtypes")
	public List getObjects(String hql){

		return super.getHibernateTemplate().find(hql);
	}
    //��Ѱ��ҳ����ķ���
	@SuppressWarnings("rawtypes")
	public List getObjectByPageNum(String hql,int pageNum,int pageSize){
		
		Query query=super.getSession().createQuery(hql);
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		List list=query.list();
	    return list;
	
	}
    //��Ѱ��ҳ����ķ���
	@SuppressWarnings("rawtypes")
	public List getObjectByPageNum1(String hql,int pageNum,int pageSize,String a){
		
		Query query=super.getSession().createQuery(hql);
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		List list=query.list();
	    return list;
	
	}
	
	public void delobjBySQL(String sql){
		//--super.getSession().beginTransaction().begin();
		super.getSession().createSQLQuery(sql).executeUpdate();
		//super.getSession().beginTransaction().commit();
	}

}

