package com.jobchat.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.Action;
import com.jobchat.entity.Roleinfo;
import com.jobchat.service.RoleinfoService;

public class RoleinfoAction implements Action {
	private RoleinfoService ris;
	private Roleinfo ri;
	public Roleinfo getRi() {
		return ri;
	}

	public void setRi(Roleinfo ri) {
		this.ri = ri;
	}
	public RoleinfoService getRis() {
		return ris;
	}
	public void setRis(RoleinfoService ris) {
		this.ris = ris;
	}
	public String execute() throws Exception{
		//TODO Auto-generated method stub 
		return null;
	}
	
	public String doadd(){
		if(ris.addRole(ri)){
			return this.showlist();
		}else{
			return "fail";
		}
		
	}
	
	public String doDel(){

		if(ris.delRole(ri)){
			return this.showlist();		
		}else{
			
			return this.showlist();
		}	
	}
	
	public String showlist(){
		HttpServletRequest request=ServletActionContext.getRequest();
		ArrayList<Roleinfo> al=ris.getAllRoleInfos();
		request.setAttribute("al", al);
		return "showlist";
	}

}
