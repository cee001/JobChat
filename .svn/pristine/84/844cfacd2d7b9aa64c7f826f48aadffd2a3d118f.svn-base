package com.jobchat.action;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.jobchat.entity.Admin;
import com.jobchat.entity.Roleinfo;
import com.jobchat.service.AdminService;
import com.jobchat.service.RoleinfoService;
import com.jobchat.util.TimeUtil;

@SuppressWarnings("serial")
public class AdminAction extends ActionSupport{
	private Admin am;
	private AdminService as;
	private RoleinfoService ris;
	
	public RoleinfoService getRis() {
		return ris;
	}

	public void setRis(RoleinfoService ris) {
		this.ris = ris;
	}


	public AdminService getAs() {
		return as;
	}

	public void setAs(AdminService as) {
		this.as = as;
	}

	public Admin getAm() {
		return am;
	}

	public void setAm(Admin am) {
		this.am = am;
	}

		//��½
		public String dologin(){
			HttpServletRequest request=ServletActionContext.getRequest();
			String loginId=request.getParameter("loginId");
			String loginPwd=request.getParameter("loginPwd");
			am=as.checkLogin(loginId, loginPwd);
			if(am!=null){
				HttpSession session=request.getSession();
				session.setAttribute("sunlogin", am);
				return "success";
			}else{
				return "fail";
			}
		}
		
		//退出
		public String dologinout(){
			 HttpServletRequest request=ServletActionContext.getRequest();
				
				HttpSession session=request.getSession();
				if(session.getAttribute("sunlogin")==null){
			    return "suc";	
				}else{
				session.removeAttribute("sunlogin");
				return "fail";
				}
		}	
		//��ȡ���н�ɫ
		public void requestSetRoles(){
			//��ȡ���н�ɫ����

			ArrayList<Roleinfo> al=ris.getAllRoleInfos();

			HttpServletRequest request=ServletActionContext.getRequest();
			request.setAttribute("al", al);
			
		}
		//���
		public String doAdd(){
	        String pt = TimeUtil.dateToStrLong(new Date());
			am.setRegDate(pt);
			Roleinfo role=new Roleinfo();
			role.setRoleId(6);
			am.setRoleinfo(role);
			if(as.addUser(am)){
			  return this.showList();		
			}else{
				
				return "fail";
			}	
			}
		//��ʾ�޸�
		public String showUpdate(){

			am=as.getUserById(am.getId());		
	        this.requestSetRoles();
				return "showUpdate";		
		
		}
		
		//�޸�
		public String doUpdate(){

			if(as.updateUser(am)){
				return this.showList();		
			}else{
				
				return "fail";
			}	
		}
		//ɾ��
		public String doDel(){

			if(as.delUser(am)){
				return this.showList();		
			}else{
				
				return this.showList();
			}	
		}
		//��ϸ
		public String showDetail(){

			am=as.getUserById(am.getId());	
		    this.requestSetRoles();
			return "showDetail";		
		
		}
		//��ȡ����
		public String showList(){
			HttpServletRequest request=ServletActionContext.getRequest();
			ArrayList<Admin> al=as.getUsers();
			request.setAttribute("al",al);
			return "showList";
		}	
			
			
		}

