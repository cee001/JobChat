package com.jobchat.service;
import java.util.ArrayList;
import com.jobchat.entity.Menus;

public class MenuService extends BaseService{


	@SuppressWarnings("unchecked")
	public ArrayList<Menus> getAllMenus() {
		String hql="from Menus";
		return (ArrayList<Menus>)super.getCd().getObjects(hql);
	}
	
	public void addMenu(Menus m){
		super.getCd().addObject(m);
		
	}

}
