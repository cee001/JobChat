package com.jobchat.action;


import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.jobchat.entity.JComments;
import com.opensymphony.xwork2.ActionSupport;
import com.jobchat.common.Pager;
import com.jobchat.service.CommentsService;
import com.jobchat.util.TimeUtil;

@SuppressWarnings("serial")
public class CommentsAction extends ActionSupport {
	private JComments tc;

	private CommentsService commentsService;


	public String showadd(){

		return "showadd";
	}
	
	//���
	public String doAdd(){
        String ptime = TimeUtil.dateToStrLong(new Date());
		tc.setCommentsTime(ptime);	
		if(commentsService.addSComments(tc)){

			return "success";		
		}else{
			
			return "fail";
		}	
	}

	
	//��ʾ�޸�
	public String showUpdate(){

		tc=commentsService.getSCommentsById(tc.getCommentsId());		

			return "showUpdate";		
	
	}
		
	//�޸�
	public String doUpdate(){
		//HttpServletRequest request=ServletActionContext.getRequest();
		//int comid=Integer.parseInt(request.getParameter("comid"));
        String ptime = TimeUtil.dateToStrLong(new Date());
		tc.setCommentsTime(ptime);			
		if(commentsService.updateSComments(tc)){
			System.out.println("ok");
			return this.showlist();		
		}else{
			System.out.println("on```````");
			return "fail";
		}	
	}

	public String doUpdate1(){
		HttpServletRequest request=ServletActionContext.getRequest();
		int comid=Integer.parseInt(request.getParameter("comid"));
		int sid=Integer.parseInt(request.getParameter("commentsInfostatus"));		
		tc=commentsService.getSCommentsById(comid);	
		tc.setCommentsInfostatus(sid);
		
		if(commentsService.updateSComments(tc)){
			
			return this.showlist();		
		}else{
			System.out.println("on```````");
			return this.showlist();
		}	
	}	
	


	public String doDel(){

		if(commentsService.delSComments(tc)){
			return this.showlist();		
		}else{
			
			return this.showlist();
		}	
	}
	//��ϸ
	public String showDetail(){

		tc=commentsService.getSCommentsById(tc.getCommentsId());		
			return "showDetail";		
	
	}

	public String showlist(){
		//����ҳ��
	   HttpServletRequest request=ServletActionContext.getRequest();
	   int pageNum=1;
	   int pageSize=5;
	   
	   if(request.getParameter("p") != null &&! request.getParameter("p").equals("")){
	       try{
	           pageNum=Integer.parseInt(request.getParameter("p"));
	           
	       }catch(Exception ex){

	       }
	   }
       int sid=Integer.parseInt(request.getParameter("sid"));
	   ArrayList<JComments> al=commentsService.getSCommentsByPageNum(pageNum, pageSize, sid);
	   request.setAttribute("al", al);
	   
	   int count=commentsService.getcount1(sid);
	   String pager=Pager.getPaging1(pageNum, pageSize, count, "com!showlist.action",sid);
	   request.setAttribute("pager", pager);
	   return "showlist";
	}

	
	
	public JComments getTc() {
		return tc;
	}

	public void setTc(JComments tc) {
		this.tc = tc;
	}

	public CommentsService getCommentsService() {
		return commentsService;
	}

	public void setCommentsService(CommentsService commentsService) {
		this.commentsService = commentsService;
	}
	
	}
