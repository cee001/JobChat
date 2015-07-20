package com.jobchat.action;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jobchat.common.Pager;
import com.jobchat.entity.JCompany;
import com.jobchat.entity.JCompanyculture;
import com.jobchat.entity.JCompanyenvironment;
import com.jobchat.entity.JCompanyjob;
import com.jobchat.entity.JCompanyjobtype;
import com.jobchat.entity.JCompanylicense;
import com.jobchat.entity.JCompanylicensetype;
import com.jobchat.entity.JCompanyuser;
import com.jobchat.entity.JCompanywelfare;
import com.jobchat.entity.JCompanywelfaretype;
import com.jobchat.entity.JCompnaybusiness;
import com.jobchat.entity.JFriends;
import com.jobchat.entity.JUser;
import com.jobchat.entity.JUsercompanyjob;
import com.jobchat.entity.JUsereducation;
import com.jobchat.entity.JUserevaluation;
import com.jobchat.entity.JUserforjob;
import com.jobchat.entity.JUserhobby;
import com.jobchat.entity.JUserinfo;
import com.jobchat.entity.JUserpaper;
import com.jobchat.entity.JUserpay;
import com.jobchat.entity.JUserskill;
import com.jobchat.entity.JUserskilltype;
import com.jobchat.entity.JUservalues;
import com.jobchat.entity.JUserwork;
import com.jobchat.service.CompanyService;
import com.jobchat.service.CompanycultureService;
import com.jobchat.service.CompanyenvironmentService;
import com.jobchat.service.CompanyjobService;
import com.jobchat.service.CompanyjobtypeService;
import com.jobchat.service.CompanylicenseService;
import com.jobchat.service.CompanylicensetypeService;
import com.jobchat.service.CompanyuserService;
import com.jobchat.service.CompanywelfareService;
import com.jobchat.service.CompanywelfaretypeService;
import com.jobchat.service.CompnaybusinessService;
import com.jobchat.service.FriendsService;
import com.jobchat.service.UserService;
import com.jobchat.service.UsercompanyjobService;
import com.jobchat.service.UsereducationService;
import com.jobchat.service.UserevaluationService;
import com.jobchat.service.UserforjobService;
import com.jobchat.service.UserhobbyService;
import com.jobchat.service.UserinfoService;
import com.jobchat.service.UserpaperService;
import com.jobchat.service.UserpayService;
import com.jobchat.service.UserskillService;
import com.jobchat.service.UserskilltypeService;
import com.jobchat.service.UservaluesService;
import com.jobchat.service.UserworkService;
import com.jobchat.util.TimeUtil;
import com.opensymphony.xwork2.ActionSupport;


@SuppressWarnings("serial")
public class UserAction extends ActionSupport {

	private JUser u;
	private JUserinfo ui;
	private JUsereducation edu;
	private UsercompanyjobService  usercompanyjobService;	
	private JUsercompanyjob  companyjob;
	private UserinfoService userinfoService;	
	private UserService us;
	private UsereducationService  usereducationService;
	private UserevaluationService  userevaluationService;
	private JUserevaluation  valuation;
	private UserforjobService  userforjobService;
	private JUserforjob  forjob;
	private UserhobbyService  userhobbyService;	
	private JUserhobby  hobby;	
	private UserpaperService  userpaperService;
	private JUserpaper  paper;
	private UserpayService userpayService;
	private JUserpay pay;
	private UserskillService  userskillService;
	private JUserskill  skill;
	private UserskilltypeService  userskilltypeService;
	private JUserskilltype  skilltype;
	private UservaluesService  uservaluesService;
	private JUservalues values;
	private UserworkService  userworkService;	
	private JUserwork  work;
	private CompanyService  companyService;
	private JCompany  company;
	private CompanycultureService  companycultureService;
	private JCompanyculture  culture;
	private CompanyenvironmentService  companyenvironmentService;
	private JCompanyenvironment  environment;
	private CompanyjobService  companyjobService;
	private JCompanyjob  job;
	private CompanyjobtypeService  companyjobtypeService;
	private JCompanyjobtype  jobtype;
	private CompanylicenseService  companylicenseService;	
	private JCompanylicense  licen;
	private CompanylicensetypeService  companylicensetypeService;
	private JCompanylicensetype  licensetype;
	private CompanyuserService  companyuserService;
	private JCompanyuser  cuser;
	private CompanywelfareService  companywelfareService;
	private JCompanywelfare  welfare;
	private CompanywelfaretypeService  companywelfaretypeService;
	private JCompanywelfaretype  welfaretype;
	private CompnaybusinessService  compnaybusinessService;
	private JCompnaybusiness  business;
	private FriendsService friendsService;	
	private JFriends friends;		
	

	//登录
	public String doLogin() throws UnsupportedEncodingException{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		 String userPhone=request.getParameter("userPhone");
	     String userPassword=request.getParameter("userPassword");	
		 u=us.checkLogin(userPhone,userPassword);	    
	     if(u!=null){

	         String pti= TimeUtil.dateToStrLong(new Date());
	 		 u.setUserTime(pti);
	 		 us.updateUser(u);
	         int uid=u.getUserId();
	         u.setUserId(uid);
	         //request.setCharacterEncoding("utf-8");
	        // String usernikename=URLEncoder.encode(request.getParameter("usernikename"),"utf-8");
	         String name= URLEncoder.encode(u.getUserNikename(), "utf-8");
             Cookie cookie=new Cookie("mrCookie",uid+"#"+userPhone+"#"+name+"#"+u.getUserImgface());  
             cookie.setMaxAge(60*60*24*30);
             cookie.setPath("/");
             response.addCookie(cookie);   
   
				return "success";		
			}else{		
				return "fail";
			}	


	}
	//退出登录
	public String dologinout(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
		Cookie cookie = cookies[i];
		// 销毁
		cookie.setMaxAge(0);
        cookie.setPath("/");
		response.addCookie(cookie);
		}
		return "loginout";
		}else{
		return "loginout";	
		}
		
		}

	//添加
	public String doAdd(){
        String ptime = TimeUtil.dateToStrLong(new Date());
		u.setUserTime(ptime);		
		if(us.addUser(u)){
			return this.showlist();		
		}else{
			
			return "fail";
		}	
	}
	
//	//前端修改个人资料
//	public String showUpdate(){
//		
//		ui=userinfoService.getSUserinfo(u.getUserId());	
//
//		return "showUpdate";		
//	
//	}	
//
//	//显示修改用户信息
//	public String showUpdate1(){
//	
//		ui=userinfoService.getSUserinfo(u.getUserId());	
//
//	    return "showUpdate1";		
//	
//	}
//	//前端个人中心修改密码
//	public String showUpdate2(){
//		
//		u=us.getSUserById(u.getUserId());		
//
//		return "showUpdate2";		
//	
//	}	
//		
//	//修改用户资料
//	public String doUpdate(){
//		String name=ui.getSUser().getUserNikename();
//		u=us.getSUserById(ui.getSUser().getUserId());
//	
//		u.setUserNikename(name);
//		us.updateSUser(u);
//		if(userinfoService.updateSUserinfo(ui)){
//			return this.showlist();		
//		}else{			
//			return this.showlist();		
//		}	
//	}
//
//	
	
	
	public String showSearch(){
   	    HttpServletRequest request=ServletActionContext.getRequest();   	 
        int outid=Integer.parseInt(request.getParameter("outid"));	
		u=us.findUserByOutid(outid);
	return "showSearch";		

}		
	//后台修改用户状态
	public String doUpdate1(){
   	    HttpServletRequest request=ServletActionContext.getRequest();   	 
        int uid=Integer.parseInt(request.getParameter("usid"));
        int para=Integer.parseInt(request.getParameter("userStatus"));
        u=us.getUserById(uid);
		u.setUserStatus(para);
		if(us.updateUser(u)){
			return this.showlist();		
		}else{
			
			return this.showlist();		
		}	
	}
	
	//用户登录界面修改密码
	public String doUpdate2(){
   	    HttpServletRequest request=ServletActionContext.getRequest();   	 
   	    String phone=request.getParameter("userPhone");
   	    phone=phone.substring(0, 11);
        String userPwd=request.getParameter("userPwd");
        u=us.findUserByPhone(phone);
		u.setUserPassword(userPwd);
		if(us.updateUser(u)){
			return this.showlist();		
		}else{
			
			return this.showlist();		
		}	
	}
	//用户修改头像
	public String doUpdate3(){
   	    HttpServletRequest request=ServletActionContext.getRequest();   	 
   	    int uid=Integer.parseInt(request.getParameter("uid"));
   	    String img=request.getParameter("imgface"); 		   	    
        u=us.getUserById(uid);
        u.setUserImgface(img);
          
		if(us.updateUser(u)){
			return this.showlist();		
		}else{
			
			return this.showlist();		
		}	
	}	
	//企业删除发布岗位
	public String doUpdate4(){
   	    HttpServletRequest request=ServletActionContext.getRequest();   	 
   	    int jid=Integer.parseInt(request.getParameter("jid"));
   	    job=companyjobService.getJCompanyjobById(jid);
   	    job.setStatus((short) 1);
		if(companyjobService.updateJCompanyjob(job)){
			return this.showlist();		
		}else{
			
			return this.showlist();		
		}	
	}	

	//企业删除发布岗位
	public String doUpdate5(){
   	    HttpServletRequest request=ServletActionContext.getRequest();   	 
   	    int jid=Integer.parseInt(request.getParameter("jid"));
   	    companyjob=usercompanyjobService.getUCjobById(jid);
   	    companyjob.setStatus((short) 1);
		if(usercompanyjobService.updateJUsercompanyjob(companyjob)){
			return this.showlist();		
		}else{
			
			return this.showlist();		
		}	
	}		
    //删除
	public String doDel(){
   	    HttpServletRequest request=ServletActionContext.getRequest();   	 
        HttpSession session=request.getSession();		
        if(session.getAttribute("login")==null){
        	 return "input";	
        }else{
        	
        }
		if(us.delUser(u)){
			return this.showlist();		
		}else{
			
			return this.showlist();
		}	
	}
	
	
	//显示个人详情信息
	public String showDetail(){
   	    HttpServletRequest request=ServletActionContext.getRequest();  
   	    //基本信息
		ui = userinfoService.getJUserinfo(u.getUserId());
		int uid=ui.getUserinfoId();
		
		//教育
	    ArrayList<JUsereducation> al =usereducationService.getAllUinfo(uid);
	    if(al!=null&&al.size()>0){
	       request.setAttribute("al", al);	
	    }
	    
        //技能	    
	    ArrayList<JUserskill> al1=userskillService.getAllUinfo(uid);
	    if(al1!=null&&al1.size()>0){	 
	       request.setAttribute("al1", al1);	
	    }
	    
	    //工作经历
	    ArrayList<JUserwork> al2=userworkService.getAllUinfo(uid);
	    if(al2!=null&&al2.size()>0){	 
	       request.setAttribute("al2", al2);	
	    }
	    
	    //证件
	    ArrayList<JUserpaper> al3=userpaperService.getAllUinfo(uid);
	   	 
	    request.setAttribute("al3", al3);	
	   	 
	    
	    //测评
	    ArrayList<JUserevaluation> al4=userevaluationService.getAllUinfo(uid);
	    if(al4!=null&&al4.size()>0){	 
	       request.setAttribute("al4", al4);	
	    }
	    
	    //价值观
	    values =uservaluesService.getJUservaluesByUinfoid(uid);    
	    
	    //爱好
	    ArrayList<JUserhobby> al5=userhobbyService.getAllUinfo(uid);
	    if(al5!=null&&al5.size()>0){	 
	       request.setAttribute("al5", al5);	
	    }	
	    
	    //求职意向
	    forjob =userforjobService.getJUserforjob(uid); 
		return "showDetail";		
	
	}
	
	//显示详情
	public String showDetail1(){
   	    HttpServletRequest request=ServletActionContext.getRequest();   	 
        int uid=Integer.parseInt(request.getParameter("uid"));	
        ui=userinfoService.getJUserinfo(uid);	
		return "showDetail1";		

    }
	
	//获取公司详情信息
	public String detailcompany(){
   	    HttpServletRequest request=ServletActionContext.getRequest();  
   	    
   	    //基本信息
        int uid=Integer.parseInt(request.getParameter("uid"));	        
        company=companyService.getCompanyByuid(uid);
        int cid=company.getCompanyId();
        
        //联系信息
        cuser=companyuserService.getJCompanyuserById(cid);
        
	    //证件信息
	    ArrayList<JCompanylicense> al=companylicenseService.getAllCinfo(cid);
	    if(al!=null&&al.size()>0){	 
	       request.setAttribute("al", al);	
	    }	        
	    
        //企业环境
        environment=companyenvironmentService.getCompnayenvironmentBycid(cid);
        
	    //福利
	    ArrayList<JCompanywelfare> al1=companywelfareService.getAllCinfo(cid);
	    if(al1!=null&&al1.size()>0){	 
	       request.setAttribute("al1", al1);	
	    }	
	    
	    //文化
	    culture=companycultureService.getCompanycultureBycid(cid);
	    
	    //业务
	    business=compnaybusinessService.getCompnaybusinessBycid(cid);
	    
		return "detailcompany";		
    }	

	//获取职位详情
	public String detailjob(){
		
   	    HttpServletRequest request=ServletActionContext.getRequest();   	 
        int jid=Integer.parseInt(request.getParameter("jid"));	
        job=companyjobService.getJCompanyjobById(jid);    

	    return "detailjob";	
	    
    }	
	//分页获取
	public String showlist(){		
   	    HttpServletRequest request=ServletActionContext.getRequest();   		

	   int pageNum=1;
	   int pageSize=15;
	   
	   if(request.getParameter("p") != null &&! request.getParameter("p").equals("")){
	       try{
	           pageNum=Integer.parseInt(request.getParameter("p"));
	           
	       }catch(Exception ex){

	       }
	   }

	   ArrayList<JUserinfo> al=userinfoService.getJUserinfoByPageNum(pageNum, pageSize);
	   request.setAttribute("al", al);
	   
	   int count= us.getcount();
	   String pager=Pager.getPaging(pageNum, pageSize, count, "ur!showlist.action");
	   request.setAttribute("pager", pager);
	   return "showlist";
	}
	
	//分页获取
	public String showlist1(){
		//����ҳ��
   	   HttpServletRequest request=ServletActionContext.getRequest();   	 
       int pageNum=1;
	   int pageSize=15;
	   
	   if(request.getParameter("p") != null &&! request.getParameter("p").equals("")){
	       try{
	           pageNum=Integer.parseInt(request.getParameter("p"));
	           
	       }catch(Exception ex){

	       }
	   }
	   
	   ArrayList<JUser> al=us.getSUserByPageNum(pageNum, pageSize);
	   request.setAttribute("al", al);
	  
	   int count= us.getcount();
	   String pager=Pager.getPaging(pageNum, pageSize, count, "ur!showlist1.action");
	   request.setAttribute("pager", pager);
	   return "showlist1";
	}
	
	//分页获取企业
	public String listcompany(){		
   	   HttpServletRequest request=ServletActionContext.getRequest();   		

	   int pageNum=1;
	   int pageSize=15;	   
	   if(request.getParameter("p") != null &&! request.getParameter("p").equals("")){
	       try{
	           pageNum=Integer.parseInt(request.getParameter("p"));
	           
	       }catch(Exception ex){

	       }
	   }

	   ArrayList<JCompany> al=companyService.getCompanyByPageNum(pageNum, pageSize);
	   request.setAttribute("al", al);	   
	   int count = companyService.getcount();
	   String pager=Pager.getPaging(pageNum, pageSize, count, "ur!listcompany.action");
	   request.setAttribute("pager", pager);
	   return "listcompany";
	}
	
	//分页获取企业职位
	public String listjob(){		
   	   HttpServletRequest request=ServletActionContext.getRequest();   		
 
	   int pageNum=1;
	   int pageSize=15;	   
	   if(request.getParameter("p") != null &&! request.getParameter("p").equals("")){
	       try{
	           pageNum=Integer.parseInt(request.getParameter("p"));
	           
	       }catch(Exception ex){

	       }
	   }
       int cid=Integer.parseInt(request.getParameter("cid"));
	   ArrayList<JCompanyjob> al=companyjobService.getCompanyjobByPageNum(pageNum, pageSize,cid);
	   request.setAttribute("al", al);	   
	   int count= companyjobService.getcount(cid);
	   String pager=Pager.getPaging(pageNum, pageSize, count, "ur!listjob.action");
	   request.setAttribute("pager", pager);
	   return "listjob";
	}	
	
	//分页获取所有企业职位
	public String listalljob(){		
   	   HttpServletRequest request=ServletActionContext.getRequest();   		
 
	   int pageNum=1;
	   int pageSize=15;	   
	   if(request.getParameter("p") != null &&! request.getParameter("p").equals("")){
	       try{
	           pageNum=Integer.parseInt(request.getParameter("p"));
	           
	       }catch(Exception ex){

	       }
	   }
       int cid = -1;
	   ArrayList<JCompanyjob> al=companyjobService.getCompanyjobByPageNum(pageNum, pageSize,cid);
	   request.setAttribute("al", al);	   
	   int count= companyjobService.getcount(cid);
	   String pager=Pager.getPaging(pageNum, pageSize, count, "ur!listalljob.action");
	   request.setAttribute("pager", pager);
	   return "listalljob";
	}		
	
	//分页获取所有求职信息
	public String listucjob(){		
   	   HttpServletRequest request=ServletActionContext.getRequest();   		
 
	   int pageNum=1;
	   int pageSize=15;	   
	   if(request.getParameter("p") != null &&! request.getParameter("p").equals("")){
	       try{
	           pageNum=Integer.parseInt(request.getParameter("p"));
	           
	       }catch(Exception ex){

	       }
	   }

	   ArrayList<JUsercompanyjob> al=usercompanyjobService.getUsercompanyjobByPageNum(pageNum, pageSize);
	   request.setAttribute("al", al);	   
	   int count= usercompanyjobService.getcount();
	   String pager=Pager.getPaging(pageNum, pageSize, count, "ur!listucjob.action");
	   request.setAttribute("pager", pager);
	   return "listucjob";
	}		
	
	
	
	public JUser getU() {
		return u;
	}
	public void setU(JUser u) {
		this.u = u;
	}

	public JUsereducation getEdu() {
		return edu;
	}
	public void setEdu(JUsereducation edu) {
		this.edu = edu;
	}
	public UserService getUs() {
		return us;
	}
	public void setUs(UserService us) {
		this.us = us;
	}
	public JUserinfo getUi() {
		return ui;
	}
	public void setUi(JUserinfo ui) {
		this.ui = ui;
	}
	public UserinfoService getUserinfoService() {
		return userinfoService;
	}
	public void setUserinfoService(UserinfoService userinfoService) {
		this.userinfoService = userinfoService;
	}
	
	
	public UsereducationService getUsereducationService() {
		return usereducationService;
	}
	public void setUsereducationService(UsereducationService usereducationService) {
		this.usereducationService = usereducationService;
	}
	public UserevaluationService getUserevaluationService() {
		return userevaluationService;
	}
	public void setUserevaluationService(UserevaluationService userevaluationService) {
		this.userevaluationService = userevaluationService;
	}
	public JUserevaluation getValuation() {
		return valuation;
	}
	public void setValuation(JUserevaluation valuation) {
		this.valuation = valuation;
	}
	public UserforjobService getUserforjobService() {
		return userforjobService;
	}
	public void setUserforjobService(UserforjobService userforjobService) {
		this.userforjobService = userforjobService;
	}
	public JUserforjob getForjob() {
		return forjob;
	}
	public void setForjob(JUserforjob forjob) {
		this.forjob = forjob;
	}
	public UserhobbyService getUserhobbyService() {
		return userhobbyService;
	}
	public void setUserhobbyService(UserhobbyService userhobbyService) {
		this.userhobbyService = userhobbyService;
	}
	public JUserhobby getHobby() {
		return hobby;
	}
	public void setHobby(JUserhobby hobby) {
		this.hobby = hobby;
	}
	public UserpaperService getUserpaperService() {
		return userpaperService;
	}
	public void setUserpaperService(UserpaperService userpaperService) {
		this.userpaperService = userpaperService;
	}
	public JUserpaper getPaper() {
		return paper;
	}
	public void setPaper(JUserpaper paper) {
		this.paper = paper;
	}
	public UserpayService getUserpayService() {
		return userpayService;
	}
	public void setUserpayService(UserpayService userpayService) {
		this.userpayService = userpayService;
	}
	public JUserpay getPay() {
		return pay;
	}
	public void setPay(JUserpay pay) {
		this.pay = pay;
	}
	public UserskillService getUserskillService() {
		return userskillService;
	}
	public void setUserskillService(UserskillService userskillService) {
		this.userskillService = userskillService;
	}
	public JUserskill getSkill() {
		return skill;
	}
	public void setSkill(JUserskill skill) {
		this.skill = skill;
	}
	public UserskilltypeService getUserskilltypeService() {
		return userskilltypeService;
	}
	public void setUserskilltypeService(UserskilltypeService userskilltypeService) {
		this.userskilltypeService = userskilltypeService;
	}
	public JUserskilltype getSkilltype() {
		return skilltype;
	}
	public void setSkilltype(JUserskilltype skilltype) {
		this.skilltype = skilltype;
	}
	public UservaluesService getUservaluesService() {
		return uservaluesService;
	}
	public void setUservaluesService(UservaluesService uservaluesService) {
		this.uservaluesService = uservaluesService;
	}
	public JUservalues getValues() {
		return values;
	}
	public void setValues(JUservalues values) {
		this.values = values;
	}
	public UserworkService getUserworkService() {
		return userworkService;
	}
	public void setUserworkService(UserworkService userworkService) {
		this.userworkService = userworkService;
	}
	public JUserwork getWork() {
		return work;
	}
	public void setWork(JUserwork work) {
		this.work = work;
	}
	public UsercompanyjobService getUsercompanyjobService() {
		return usercompanyjobService;
	}
	public void setUsercompanyjobService(UsercompanyjobService usercompanyjobService) {
		this.usercompanyjobService = usercompanyjobService;
	}
	public JUsercompanyjob getCompanyjob() {
		return companyjob;
	}
	public void setCompanyjob(JUsercompanyjob companyjob) {
		this.companyjob = companyjob;
	}
	public CompanycultureService getCompanycultureService() {
		return companycultureService;
	}
	public void setCompanycultureService(CompanycultureService companycultureService) {
		this.companycultureService = companycultureService;
	}
	public JCompanyculture getCulture() {
		return culture;
	}
	public void setCulture(JCompanyculture culture) {
		this.culture = culture;
	}
	public CompanyenvironmentService getCompanyenvironmentService() {
		return companyenvironmentService;
	}
	public void setCompanyenvironmentService(
			CompanyenvironmentService companyenvironmentService) {
		this.companyenvironmentService = companyenvironmentService;
	}
	public JCompanyenvironment getEnvironment() {
		return environment;
	}
	public void setEnvironment(JCompanyenvironment environment) {
		this.environment = environment;
	}
	public CompanyjobService getCompanyjobService() {
		return companyjobService;
	}
	public void setCompanyjobService(CompanyjobService companyjobService) {
		this.companyjobService = companyjobService;
	}
	public JCompanyjob getJob() {
		return job;
	}
	public void setJob(JCompanyjob job) {
		this.job = job;
	}
	public CompanyjobtypeService getCompanyjobtypeService() {
		return companyjobtypeService;
	}
	public void setCompanyjobtypeService(CompanyjobtypeService companyjobtypeService) {
		this.companyjobtypeService = companyjobtypeService;
	}
	public JCompanyjobtype getJobtype() {
		return jobtype;
	}
	public void setJobtype(JCompanyjobtype jobtype) {
		this.jobtype = jobtype;
	}
	public CompanylicenseService getCompanylicenseService() {
		return companylicenseService;
	}
	public void setCompanylicenseService(CompanylicenseService companylicenseService) {
		this.companylicenseService = companylicenseService;
	}
	public JCompanylicense getLicen() {
		return licen;
	}
	public void setLicen(JCompanylicense licen) {
		this.licen = licen;
	}
	public CompanylicensetypeService getCompanylicensetypeService() {
		return companylicensetypeService;
	}
	public void setCompanylicensetypeService(
			CompanylicensetypeService companylicensetypeService) {
		this.companylicensetypeService = companylicensetypeService;
	}
	public JCompanylicensetype getLicensetype() {
		return licensetype;
	}
	public void setLicensetype(JCompanylicensetype licensetype) {
		this.licensetype = licensetype;
	}
	public CompanyuserService getCompanyuserService() {
		return companyuserService;
	}
	public void setCompanyuserService(CompanyuserService companyuserService) {
		this.companyuserService = companyuserService;
	}
	public JCompanyuser getCuser() {
		return cuser;
	}
	public void setCuser(JCompanyuser cuser) {
		this.cuser = cuser;
	}
	public CompanywelfareService getCompanywelfareService() {
		return companywelfareService;
	}
	public void setCompanywelfareService(CompanywelfareService companywelfareService) {
		this.companywelfareService = companywelfareService;
	}
	public JCompanywelfare getWelfare() {
		return welfare;
	}
	public void setWelfare(JCompanywelfare welfare) {
		this.welfare = welfare;
	}
	public CompanywelfaretypeService getCompanywelfaretypeService() {
		return companywelfaretypeService;
	}
	public void setCompanywelfaretypeService(
			CompanywelfaretypeService companywelfaretypeService) {
		this.companywelfaretypeService = companywelfaretypeService;
	}
	public JCompanywelfaretype getWelfaretype() {
		return welfaretype;
	}
	public void setWelfaretype(JCompanywelfaretype welfaretype) {
		this.welfaretype = welfaretype;
	}
	public CompnaybusinessService getCompnaybusinessService() {
		return compnaybusinessService;
	}
	public void setCompnaybusinessService(
			CompnaybusinessService compnaybusinessService) {
		this.compnaybusinessService = compnaybusinessService;
	}
	public JCompnaybusiness getBusiness() {
		return business;
	}
	public void setBusiness(JCompnaybusiness business) {
		this.business = business;
	}
	public FriendsService getFriendsService() {
		return friendsService;
	}
	public void setFriendsService(FriendsService friendsService) {
		this.friendsService = friendsService;
	}
	public JFriends getFriends() {
		return friends;
	}
	public void setFriends(JFriends friends) {
		this.friends = friends;
	}
	public CompanyService getCompanyService() {
		return companyService;
	}
	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}
	public JCompany getCompany() {
		return company;
	}
	public void setCompany(JCompany company) {
		this.company = company;
	}
	
	
}
