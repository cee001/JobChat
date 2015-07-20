package com.jobchat.service;

import java.util.ArrayList;



import com.jobchat.dao.CommonDAO;
import com.jobchat.entity.Menus;
import com.jobchat.entity.Powers;
import com.jobchat.entity.Roleinfo;

public class PowerServeice {
	private CommonDAO cd;

	public CommonDAO getCd() {
		return cd;
	}

	public void setCd(CommonDAO cd) {
		this.cd = cd;
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Powers> getPowerByRoleId(int rid){
		String hql="from Powers p where p.roleinfo.roleId='"+rid+"'";
		return (ArrayList<Powers>)cd.getObjects(hql); 
	}
	
	public void doUpdatePower(int rid,String[] mids){
		//��ɾ��˽�ɫ�µ�˵��Ȩ�����¼ӽ�ɫ
		String sql="delete from powers where rid="+rid;
		cd.delobjBySQL(sql);
		Roleinfo ri=new Roleinfo();
		ri.setRoleId(rid);
		for(String s:mids){
			Menus m=new Menus();
			m.setMid(Integer.parseInt(s));
		    Powers p=new Powers();
		    p.setMenus(m);
		    p.setRoleinfo(ri);
		    cd.addObject(p);
		}
	}

}
