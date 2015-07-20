package com.jobchat.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.jobchat.entity.Admin;
import com.jobchat.entity.Menus;
import com.jobchat.entity.Powers;
import com.jobchat.service.MenuService;
import com.jobchat.service.PowerServeice;


@SuppressWarnings("serial")
public class MenuAction extends ActionSupport{
	private PowerServeice ps;	
    private Admin u;
	private MenuService ms;
	private Menus m;
	
	public Admin getU() {
		return u;
	}

	public void setU(Admin u) {
		this.u = u;
	}
	
	public Menus getM() {
		return m;
	}

	public void setM(Menus m) {
		this.m = m;
	}

	public MenuService getMs() {
		return ms;
	}

	public void setMs(MenuService ms) {
		this.ms = ms;
	}

	public PowerServeice getPs() {
		return ps;
	}

	public void setPs(PowerServeice ps) {
		this.ps = ps;
	}



	public String showMenuByRoleId(){
		HttpServletRequest request=ServletActionContext.getRequest();
   	    HttpSession session=request.getSession();
   	    Admin am=(Admin)session.getAttribute("sunlogin");
   	    ArrayList<Powers> al=ps.getPowerByRoleId(am.getRoleinfo().getRoleId()); 
	    request.setAttribute("al", al);	   
		return "leftree";	

	}
	public String showmenu(){
		HttpServletRequest request=ServletActionContext.getRequest();
   	    HttpSession session=request.getSession();
   	    Admin am=(Admin)session.getAttribute("sunlogin");
   	    ArrayList<Powers> al=ps.getPowerByRoleId(am.getRoleinfo().getRoleId()); 
	    request.setAttribute("al", al);	   
		return "showmenu";	
	}
	public String showmenu1(){
		HttpServletRequest request=ServletActionContext.getRequest();
   	    HttpSession session=request.getSession();
   	    Admin am=(Admin)session.getAttribute("sunlogin");
   	    ArrayList<Powers> al=ps.getPowerByRoleId(am.getRoleinfo().getRoleId()); 
	    request.setAttribute("al", al);	   
		return "showmenu1";	
	}
	public String showmenu2(){
		HttpServletRequest request=ServletActionContext.getRequest();
   	    HttpSession session=request.getSession();
   	    Admin am=(Admin)session.getAttribute("sunlogin");
   	    ArrayList<Powers> al=ps.getPowerByRoleId(am.getRoleinfo().getRoleId()); 
	    request.setAttribute("al", al);	   
		return "showmenu2";	
	}
	public String showmenu3(){
		HttpServletRequest request=ServletActionContext.getRequest();
   	    HttpSession session=request.getSession();
   	    Admin am=(Admin)session.getAttribute("sunlogin");
   	    ArrayList<Powers> al=ps.getPowerByRoleId(am.getRoleinfo().getRoleId()); 
	    request.setAttribute("al", al);	   
		return "showmenu3";	
	}
	public String showmenu4(){
		HttpServletRequest request=ServletActionContext.getRequest();
   	    HttpSession session=request.getSession();
   	    Admin am=(Admin)session.getAttribute("sunlogin");
   	    ArrayList<Powers> al=ps.getPowerByRoleId(am.getRoleinfo().getRoleId()); 
	    request.setAttribute("al", al);	   
		return "showmenu4";	
	}
	public String showmenu5(){
		HttpServletRequest request=ServletActionContext.getRequest();
   	    HttpSession session=request.getSession();
   	    Admin am=(Admin)session.getAttribute("sunlogin");
   	    ArrayList<Powers> al=ps.getPowerByRoleId(am.getRoleinfo().getRoleId()); 
	    request.setAttribute("al", al);	   
		return "showmenu5";	
	}
	public String showlist(){
		HttpServletRequest request=ServletActionContext.getRequest();
	    request.setAttribute("al", ms.getAllMenus());	
   	  /*//����1 
   	   * HttpSession session=request.getSession();
   	    User u=(User)session.getAttribute("login");
	    ArrayList<Power> pr=ps.getPowerByRoleId(u.getRoleInfo().getRoleId());*/
	    //����2
	    int rid=Integer.parseInt(request.getParameter("rid"));
	    request.setAttribute("alchild",ps.getPowerByRoleId(rid));
		return "showlist";

	}
	
	public String showlist2(){
		HttpServletRequest request=ServletActionContext.getRequest();
	    request.setAttribute("al", ms.getAllMenus());
	    return "showlist2";
	}
	
	public String doAdd(){
		ms.addMenu(m);
		return "sr";
	}
	
	public String doUpdatePower(){
		HttpServletRequest request=ServletActionContext.getRequest();
		int rid=Integer.parseInt(request.getParameter("rid"));
		String[] mids=request.getParameterValues("mids");
		ps.doUpdatePower(rid, mids);
		return "sr";
	
	}

}

