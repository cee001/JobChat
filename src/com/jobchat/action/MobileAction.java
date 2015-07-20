package com.jobchat.action;
import io.rong.ApiHttpClient;
import io.rong.models.FormatType;
import io.rong.models.SdkHttpResult;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.json.JSONException;
import org.json.JSONObject;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.opensymphony.xwork2.ActionSupport;
import com.jobchat.entity.JComments;
import com.jobchat.entity.JCompany;
import com.jobchat.entity.JCompanyculture;
import com.jobchat.entity.JCompanyenvironment;
import com.jobchat.entity.JCompanyjobtype;
import com.jobchat.entity.JCompanylicense;
import com.jobchat.entity.JCompanylicensetype;
import com.jobchat.entity.JCompanyuser;
import com.jobchat.entity.JCompanywelfare;
import com.jobchat.entity.JCompanywelfaretype;
import com.jobchat.entity.JCompnaybusiness;
import com.jobchat.entity.JKeyword;
import com.jobchat.entity.JMessages;
import com.jobchat.entity.JUser;
import com.jobchat.entity.JUsereducation;
import com.jobchat.entity.JUserevaluation;
import com.jobchat.entity.JUserforjob;
import com.jobchat.entity.JUserhobby;
import com.jobchat.entity.JUserhobbytype;
import com.jobchat.entity.JUserinfo;
import com.jobchat.entity.JUserpaper;
import com.jobchat.entity.JUserpapertype;
import com.jobchat.entity.JUserskill;
import com.jobchat.entity.JUserskilltype;
import com.jobchat.entity.JUservalues;
import com.jobchat.entity.JUserwork;
import com.jobchat.service.CommentsService;
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
import com.jobchat.service.KeywordService;
import com.jobchat.service.MessagesService;
import com.jobchat.service.UserService;
import com.jobchat.service.UsercompanyjobService;
import com.jobchat.service.UsereducationService;
import com.jobchat.service.UserevaluationService;
import com.jobchat.service.UserforjobService;
import com.jobchat.service.UserhobbyService;
import com.jobchat.service.UserhobbytypeService;
import com.jobchat.service.UserinfoService;
import com.jobchat.service.UserpaperService;
import com.jobchat.service.UserpapertypeService;
import com.jobchat.service.UserpayService;
import com.jobchat.service.UserskillService;
import com.jobchat.service.UserskilltypeService;
import com.jobchat.service.UservaluesService;
import com.jobchat.service.UserworkService;
import com.jobchat.util.Md5;
import com.jobchat.util.MmochatFilterService;
import com.jobchat.util.ResultUtils;
import com.jobchat.util.TextUtility;


@SuppressWarnings("serial")
public class MobileAction extends ActionSupport{
	String key = "p5tvi9dst0xw4";
	String secret = "aK4w5XzXdgW";
	private UserService  userService;
	private UserinfoService  userinfoService;	
	private UsercompanyjobService  usercompanyjobService;
	private UsereducationService  usereducationService;
	private UserevaluationService  userevaluationService;
	private UserforjobService  userforjobService;
	private UserhobbyService  userhobbyService;	
	private UserhobbytypeService  userhobbytypeService;		
	private UserpaperService  userpaperService;
	private UserpapertypeService  userpapertypeService;
	private UserpayService userpayService;
	private UserskillService  userskillService;
	private UserskilltypeService  userskilltypeService;
	private UservaluesService  uservaluesService;
	private UserworkService  userworkService;
	private CompanycultureService  companycultureService;
	private CompanyenvironmentService  companyenvironmentService;
	private CompanyjobService  companyjobService;
	private CompanyjobtypeService  companyjobtypeService;
	private CompanylicenseService  companylicenseService;	
	private CompanylicensetypeService  companylicensetypeService;
	private CompanyuserService  companyuserService;
	private CompanywelfareService  companywelfareService;
	private CompanywelfaretypeService  companywelfaretypeService;
	private CompnaybusinessService  compnaybusinessService;
	private FriendsService friendsService;
	private CompanyService  companyService;	
	private CommentsService  commentsService;		
	private MessagesService messagesService;	
	private KeywordService keywordService;		
	//闁谎冾煼濡撅拷
	public String mobile() throws UnsupportedEncodingException, JSONException{
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setCharacterEncoding("UTF-8");
		String para=request.getParameter("para");
		JSONObject jb = new JSONObject(para);
		int type =  jb.getInt("sendtype");
		JSONObject data = jb.getJSONObject("data");
		switch (type) {
		case 10001:
			//http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10001,"data":{"phone":"18858705209","password":"0000000"}}
			loginUser(data);
			break;
		case 10002:
			//127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10002,"data":{"userPhone":"18858294600","userPassword":"123456","userNikename":"sss"}}			
			updateUser(data);			
			break;
		case 10003:
			//http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10003,"data":{"userPhone":"18858294600","userPassword":"123456","userNikename":"sss"}}
			addUser(data);
			break;
		case 10004:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10006,"data":{"outid":"1"}}
			getOutUser(data);
			break;
		case 10005:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10005,"data":{"phone":"18858294600"}}
			checkPhone(data);
			break;	
		case 10006:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10006,"data":{"id":"1"}}
			getUserById(data);
			break;	
		case 10007:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10007,"data":{"uid":"1"}}
			getUserinfo(data);
			break;	
		case 10008:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10008,"data":{"uinfoid":"1"}}
			getUsereducations(data);
			break;					
		case 10009:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10009,"data":{"uinfoid":"1"}}
			getUserskills(data);
			break;	
		case 10010:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10010,"data":{"uinfoid":"1"}}
			getUserworks(data);
			break;				
		case 10011:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10011,"data":{"uinfoid":"1"}}
			getUserpapers(data);
			break;			
		case 10012:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10012,"data":{"uinfoid":"1"}}
			getUserevaluations(data);
			break;						
		case 10014:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10014,"data":{"uinfoid":"1"}}
			getUserhobbys(data);
			break;			
		case 10015:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10015,"data":{"uinfoid":"1"}}
			getUservalues(data);
			break;		
		case 10016:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10016,"data":{"uinfoid":"1"}}
			getUserforjobs(data);
			break;	
		case 10017:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10017,"data":{"forjobid":"1"}}
			getUserforjobById(data);
			break;			
		case 10018:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10018,"data":{"userid":"1"}}
			getCompany(data);
			break;				
		case 10019:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10019,"data":{"companyid":"1"}}
			getCompanyuser(data);
			break;	
		case 10020:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10020,"data":{"companyid":"1"}}
			getCompanylicenses(data);
			break;			

		case 10021:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10021,"data":{"companyid":"1"}}
			getCompanyenvironment(data);
			break;			
		case 10022:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10022,"data":{"companyid":"1"}}
			getCompanywelfare(data);
			break;			
		case 10023:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10023,"data":{"companyid":"1"}}
			getCompanyculture(data);
			break;					
		case 10024:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10024,"data":{"companyid":"1"}}
			getCompanybusiness(data);
			break;		
		case 10025:
			//http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10025,"data":{"uid":1,"key":null,"pn":1,"ps":10}}
			getMessages(data);
			break;
		case 10026:
			//http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10026,"data":{"acesstoken":"e13677ab-220e-4fe3-9dde-f72df5dfdf15","messagesInfo":"123456","messagesType":"sss","SLiving":{"livingId":6}}}
			addMessages(data);
			break;
			
		case 10027:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10027,"data":{"messagesId":0}}
			getMsgcon(data);
			break;		
		case 10028:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10028,"data":{"acesstoken":"","messagesInfo":"123456","messagesType":"sss","SLiving":{"livingId":6}}}
			updateMessages(data);
			break;			
		case 10029:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10029,"data":{"gid":1}}
			getcommentCount(data);
			break;			
		case 10030:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10030,"data":{"mid":1,"pn":1,"ps":10}}
			getComments(data);
			break;
		case 10031:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10031,"data":{"mid":1,"pn":1,"ps":10}}
			addComments(data);
			break;
			
		case 10032:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10032,"data":{"pn":1,"ps":5}}
			getUserhobbytype(data);
			break;				
		case 10033:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10033,"data":{"name":null}}
			addUserhobbytype(data);
			break;
		case 10034:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10034,"data":{"id":1}}
			upUserhobbytype(data);
			break;					
		case 10035:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10035,"data":{"pn":1,"ps":5}}
			getUserpapertype(data);
			break;				
		case 10036:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10036,"data":{"name":null}}
			addUserpapertype(data);
			break;
		case 10037:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10037,"data":{"id":1}}
			upUserpapertype(data);
			break;				
		case 10038:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10038,"data":{"pn":1,"ps":5}}
			getUserskilltype(data);
			break;				
		case 10039:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10039,"data":{"name":null}}
			addUserskilltype(data);
			break;
		case 10040:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10040,"data":{"id":1}}
			upUserskilltype(data);
			break;	

		case 10044:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10044,"data":{"pn":1,"ps":5}}
			getCompanyjobtype(data);
			break;				
		case 10045:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10045,"data":{"name":null}}
			addCompanyjobtype(data);
			break;
		case 10046:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10046,"data":{"id":1}}
			upCompanyjobtype(data);
			break;				
		case 10047:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10047,"data":{"pn":1,"ps":5}}
			getCompanywelfaretype(data);
			break;				
		case 10048:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10048,"data":{"name":null}}
			addCompanywelfaretype(data);
			break;
		case 10049:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10049,"data":{"id":1}}
			upCompanywelfaretype(data);
			break;										
		case 10050:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10050,"data":{"pn":1,"ps":5}}
			getCompanylicensetype(data);
			break;				
		case 10051:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10051,"data":{"name":null}}
			addCompanylicensetype(data);
			break;
		case 10052:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10052,"data":{"id":1}}
			upCompanylicensetype(data);
			break;			
		case 10053:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10053,"data":{"id":1}}
			getMsgCount(data);
			break;			
		case 10054:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10054,"data":{"param":0}}
			getUserinfoCount(data);
			break;
		case 10055:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10055,"data":{"param":0}}
			getCompanyCount(data);
			break;			
		case 10056:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10056,"data":{"pn":1,"ps":5}}
			getKeyword(data);
			break;				
		case 10057:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10057,"data":{"name":null}}
			addKeyword(data);
			break;
		case 10058:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10058,"data":{"id":1}}
			upKeyword(data);
			break;	
		case 10059:
			// http://127.0.0.1:8080/JobChat/mobile!mobile.action?para={"sendtype":10059,"data":{"pn":1,"ps":5}}
			getAllUserinfo(data);
			break;			
		}
		
				
		return null;
	}
	private void loginUser(JSONObject data) throws JSONException {
		String loginId = data.getString("phone");
		String loginPwd = data.getString("password");
		int status = 1;
		JUser u = userService.checkLogin(loginId, loginPwd);
		Map<String, Object> map = new HashMap<String, Object>();	
		if(u!=null){
			String ptime = TextUtility.formatDate(new Date());	
			u.setUserRefreshtime(ptime);
			userService.updateUser(u);			
			u.setToken(getRongToken(""+u.getUserOutid().intValue(),u.getUserNikename(),u.getUserImgface()));
			Map<String, Object> map2 = new HashMap<String, Object>();
			map2.put("user", u);
			
			map.put("data", map2);			
		    status = 0;
		}else{
			status = 1;
			map.put("data", "");						
		}	
		map.put("ret", status);
		map.put("msg", "");
		try {
			ResultUtils.toJson(ServletActionContext.getResponse(), map);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private String  getRongToken(String userid, String name, String photo) throws JSONException {

		SdkHttpResult result = null;

		try {
			result = ApiHttpClient.getToken(key, secret, userid, name,
					photo, FormatType.json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		JSONObject jb = new JSONObject(result.toString());
		String s = jb.getJSONObject("result").getString("token").toString();
		System.out.println("gettoken=" + result);
		return s;
	}
	
	private void getOutUser(JSONObject data) throws JSONException {
		int id = data.getInt("outid");
		int status = 1;		
		JUser u = userService.findUserOutID(id);
		Map<String, Object> map = new HashMap<String, Object>();		
		if(u!=null){	
			Map<String, Object> map2 = new HashMap<String, Object>();
			u.setToken(getRongToken(""+u.getUserOutid().intValue(),u.getUserNikename(),u.getUserImgface()));
			map2.put("user", u);
			map.put("data", map2);			
		    status = 0;
		}else{
			status = 1;
			map.put("data", "");			
			
		}
		
		map.put("ret", status);
		map.put("msg", "");
		try {
			ResultUtils.toJson(ServletActionContext.getResponse(), map);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }


	private void getUserById(JSONObject data) throws JSONException {
		int id = data.getInt("id");
		int status = 1;		
		JUser u = userService.getUserById(id);
		Map<String, Object> map = new HashMap<String, Object>();		
		if(u!=null){	
			Map<String, Object> map2 = new HashMap<String, Object>();
			u.setToken(getRongToken(""+u.getUserOutid().intValue(),u.getUserNikename(),u.getUserImgface()));
			map2.put("user", u);
			map.put("data", map2);			
		    status = 0;
		}else{
			status = 1;
			map.put("data", "");			
			
		}
		
		map.put("ret", status);
		map.put("msg", "");
		try {
			ResultUtils.toJson(ServletActionContext.getResponse(), map);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }
	
	
     private void getUserinfo(JSONObject data) throws JSONException {
           
            int uid=data.getInt("uid");
            JUserinfo uinfo = userinfoService.getJUserinfo(uid);
			Map<String, Object> map= new HashMap<String, Object>();
	        int status = 1;
			if(uinfo != null){
				Map<String, Object> map2= new HashMap<String, Object>();
				map.put("userinfo", uinfo);					
				map.put("data", map2);
				status = 0;
			}else {
				status = 1;
				map.put("data", "");
			}

			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
     }
     private void getAllUserinfo(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");             

            ArrayList<JUserinfo> list = userinfoService.getJUserinfoByPageNum(pn, ps);
      

			Map<String, Object> map= new HashMap<String, Object>();
	        int status = 1;
			if(list != null){
				Map<String, Object> map2= new HashMap<String, Object>();
				map.put("list", list);					
				map.put("data", map2);
				status = 0;
			}else {
				status = 1;
				map.put("data", "");
			}

			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    }
	private void updateUser(JSONObject data) {
		GsonBuilder builder = new GsonBuilder();
		// 婵炴垶鎼幏鐑藉级閻戝洦瀚归柨鐔告灮閹风兘濮�敍鍕挄闁跨喐鏋婚幏鐑芥晸閿熺捶Expose
		// 濠电偛顦归崝蹇氼暰闁跨喐鏋婚幏鐑芥晸閻ｅ矉鎷烽柨鐔绘閳绘捇鏁撻敓锟�//
		// builder.excludeFieldsWithoutExposeAnnotation();
		Gson gson = builder.create();
		String s = data.toString();
		JUser u = gson.fromJson(s, new TypeToken<JUser>() {
		}.getType());
		JUser u2 = null;
		boolean b =  false;
		if(u.getUserPassword() != null){
			u2 = userService.findUserByPhone(u.getUserPhone());
			Md5 md5 = new Md5(u.getUserPassword());
	        md5.processString();
	        String strEncrypto = md5.getStringDigest();	
	        u2.setUserPassword(strEncrypto);
			b = userService.updateUser(u2);
		}else{
			u2 = userService.getUserById(u.getUserId());
			u.setUserPassword(u2.getUserPassword());
			b = userService.updateUser(u);
		}
		Map<String, Object> map = new HashMap<String, Object>();
		int status = 1;
		if (b) {
			status = 0;
		} else {
			status = 1;
		}
		map.put("ret", status);
		map.put("msg", "");
		Map<String, Object> map2 = new HashMap<String, Object>();
		map.put("data", map2);
		try {
			ResultUtils.toJson(ServletActionContext.getResponse(), map);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
	private void addUser(JSONObject data) {
		GsonBuilder builder = new GsonBuilder();
		Gson gson = builder.create();
		String s = data.toString();
		JUser u = gson.fromJson(s, new TypeToken<JUser>() {
		}.getType());

		String ptime = TextUtility.formatDate(new Date());
        Md5 md5 = new Md5(u.getUserPassword());
        md5.processString();
        String strEncrypto = md5.getStringDigest();	
        u.setUserPassword(strEncrypto);
		u.setUserTime(ptime);
		u.setUserStatus(0);
		int outid=0;
		JUser m =null;	
	    do{
	        outid=(int) (Math.random() * 10000000);
	        m = userService.findUserByOutid(outid);	
	    }while(m == null);
	    u.setUserOutid(outid);
		if(u.getUserNikename() == null){
			u.setUserNikename(u.getUserPhone());
		}
		u.setUserType((short)0);
		boolean b = userService.addUser(u);
		JUserinfo uinfo = new JUserinfo();
		uinfo.setJUser(u);
		b = userinfoService.addUserinfo(uinfo);
		Map<String, Object> map = new HashMap<String, Object>();
		int status = 1;
		if (b) {
			status = 0;
			map.put("msg", "");
			Map<String, Object> map2 = new HashMap<String, Object>();
			map.put("data", map2);
		} else {
			status = 1;
			map.put("msg", "");
		}
		map.put("ret", status);
		try {
			ResultUtils.toJson(ServletActionContext.getResponse(), map);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void checkPhone(JSONObject data) throws JSONException {

		try {

			int status = 0;
			String loginId = data.getString("phone");
			JUser u = userService.findUserByPhone(loginId);
			if (u == null) {
				status = 1;
			} else {
				status = 0;
			}
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("data", "");
			map.put("ret", status);
			map.put("msg", "");
			ResultUtils.toJson(ServletActionContext.getResponse(), map);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
		
    private void getUsereducations(JSONObject data) throws JSONException {
        int uinfoid=data.getInt("uinfoid");
			ArrayList<JUsereducation> list = usereducationService.getAllUinfo(uinfoid);
			Map<String, Object> map= new HashMap<String, Object>();
	        int status = 1;
			if(list  != null){
				Map<String, Object> map2= new HashMap<String, Object>();
				map.put("list ", list);					
				map.put("data", map2);
				status = 0;
			}else {
				status = 1;
				map.put("data", "");
			}

			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	  }
	  private void getUserevaluations(JSONObject data) throws JSONException {
         int uinfoid=data.getInt("uinfoid");
			ArrayList<JUserevaluation> list = userevaluationService.getAllUinfo(uinfoid);
			Map<String, Object> map= new HashMap<String, Object>();
	        int status = 1;
			if(list  != null){
				Map<String, Object> map2= new HashMap<String, Object>();
				map.put("list ", list);					
				map.put("data", map2);
				status = 0;
			}else {
				status = 1;
				map.put("data", "");
			}

			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 }		
			  
	  private void getUserskills(JSONObject data) throws JSONException {
        int uinfoid=data.getInt("uinfoid");
			ArrayList<JUserskill> list = userskillService.getAllUinfo(uinfoid);
			Map<String, Object> map= new HashMap<String, Object>();
	        int status = 1;
			if(list  != null){
				Map<String, Object> map2= new HashMap<String, Object>();
				map.put("list ", list);					
				map.put("data", map2);
				status = 0;
			}else {
				status = 1;
				map.put("data", "");
			}

			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 }			  
	  private void getUserworks(JSONObject data) throws JSONException {
	       int uinfoid=data.getInt("uinfoid");
				ArrayList<JUserwork> list = userworkService.getAllUinfo(uinfoid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(list  != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("list ", list);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
      }	
	  
	  private void getUserpapers(JSONObject data) throws JSONException {
	       int uinfoid=data.getInt("uinfoid");
				ArrayList<JUserpaper> list = userpaperService.getAllUinfo(uinfoid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(list  != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("list ", list);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}	
	  private void getUserhobbys(JSONObject data) throws JSONException {
	       int uinfoid=data.getInt("uinfoid");
				ArrayList<JUserhobby> list = userhobbyService.getAllUinfo(uinfoid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(list  != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("list ", list);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}	  
	     private void getUservalues(JSONObject data) throws JSONException {
	    	 int uinfoid=data.getInt("uinfoid");
				JUservalues entity = uservaluesService.getJUservaluesByUinfoid(uinfoid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(entity != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("entity", entity);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    }		
	     private void getUserforjobs(JSONObject data) throws JSONException {
	    	 int uinfoid=data.getInt("uinfoid");
				ArrayList<JUserforjob> list = userforjobService.getAllUinfo(uinfoid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(list != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("entity", list);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    }	
	     private void getUserforjobById(JSONObject data) throws JSONException {
	    	    int jid=data.getInt("forjobid");
				JUserforjob entity= userforjobService.getTForjobById(jid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(entity != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("entity", entity);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    }	     
	     private void getCompany(JSONObject data) throws JSONException {
	    	    int uid=data.getInt("userid");
				JCompany entity= companyService.getCompanyByuid(uid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(entity != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("entity", entity);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    }		     
	     private void getCompanyuser(JSONObject data) throws JSONException {
	    	    int cid=data.getInt("companyid");
				JCompanyuser entity= companyuserService.getCompanyuserBycid(cid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(entity != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("entity", entity);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    }	
	     
	    private void getCompanylicenses(JSONObject data) throws JSONException {
	    	    int cid=data.getInt("companyid");
				ArrayList<JCompanylicense> list= companylicenseService.getAllCinfo(cid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(list != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("list", list);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    }	
	     
	    private void getCompanyenvironment(JSONObject data) throws JSONException {
	    	 int cid=data.getInt("companyid");
				JCompanyenvironment entity= companyenvironmentService.getCompnayenvironmentBycid(cid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(entity != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("entity", entity);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    }		
	    private void getCompanywelfare(JSONObject data) throws JSONException {
    	    int cid=data.getInt("companyid");
			ArrayList<JCompanywelfare> list= companywelfareService.getAllCinfo(cid);
			Map<String, Object> map= new HashMap<String, Object>();
	        int status = 1;
			if(list != null){
				Map<String, Object> map2= new HashMap<String, Object>();
				map.put("list", list);					
				map.put("data", map2);
				status = 0;
			}else {
				status = 1;
				map.put("data", "");
			}

			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }	  
	    
	    private void getCompanyculture(JSONObject data) throws JSONException {
	    	 int cid=data.getInt("companyid");
				JCompanyculture entity= companycultureService.getCompanycultureBycid(cid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(entity != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("entity", entity);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    }	  
	    
	    private void getCompanybusiness(JSONObject data) throws JSONException {
	    	 int cid=data.getInt("companyid");
				JCompnaybusiness entity= compnaybusinessService.getCompnaybusinessBycid(cid);
				Map<String, Object> map= new HashMap<String, Object>();
		        int status = 1;
				if(entity != null){
					Map<String, Object> map2= new HashMap<String, Object>();
					map.put("entity", entity);					
					map.put("data", map2);
					status = 0;
				}else {
					status = 1;
					map.put("data", "");
				}

				map.put("ret", status);
				map.put("msg", "");
				try {
					ResultUtils.toJson(ServletActionContext.getResponse(), map);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    }	 	    
		private void getMessages(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");
			int uid = -1;
			if (data.has("uid")) {
				uid = data.getInt("uid");
			}	
			
			String key = null;
			if (data.has("key")) {
				key = data.getString("key");
			}				
			ArrayList<JMessages> ms = messagesService.getJMessagesByPageNum(uid,key, pn, ps);
			int count=messagesService.getcount(uid,key);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (ms != null) {
				status = 0;
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("messagelist", ms);
				map.put("data", map2);
			} else {
				status = 1;
				map.put("data", "");
			}
			map.put("count", count);		
			map.put("pn", pn);		
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		private void getMsgcon(JSONObject data) throws JSONException {
			int mid = data.getInt("messagesId");

			JMessages mg = messagesService.getJMessagesById(mid);

			Map<String, Object> map = new HashMap<String, Object>();
			Map<String, Object> map2 = new HashMap<String, Object>();
			map2.put("meg", mg);
			map.put("data", map2);
			int status = 0;
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		

		private void addMessages(JSONObject data) throws JSONException {
			//SToken token = tokenService.getToken(data.getString("acesstoken").toString());
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JMessages u = gson.fromJson(s, new TypeToken<JMessages>() {
			}.getType());
					
			//u.setSUser(token.getSUser());
			MmochatFilterService fiter = new MmochatFilterService();
			fiter.init();
			@SuppressWarnings("static-access")
			String content = fiter.getFilterString(u.getMessagesInfo());
			u.setMessagesInfo(content);
			String ptime = TextUtility.formatDate(new Date());
			u.setMessagesTime(ptime);
			boolean b = messagesService.addJMessages(u);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
				map.put("msg", "");
			} else {
				status = 1;
				map.put("msg", "");
			}
			map.put("ret", status);
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		
		private void updateMessages(JSONObject data) throws JSONException {
			int mid=-1;
			JMessages m =null;
			if(data.has("mid")){			
				mid=data.getInt("mid");
				m= messagesService.getJMessagesById(mid);	
				m.setMessagesStatus(1);
			}else{		
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();				
			 m = gson.fromJson(s, new TypeToken<JMessages>() {
			}.getType());
			if(m.getMessagesId()>0){
				int agreenum= m.getMessagesAgreenum();
				m= messagesService.getJMessagesById(m.getMessagesId());	
				m.setMessagesAgreenum(agreenum);
			}
			}
			boolean b = messagesService.updateJMessages(m);

			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
			} else {
				status = 1;
			}
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	    
		private void getcommentCount(JSONObject data) throws JSONException {
			int mid = -1;

			if (data.has("mid")) {
				mid = data.getInt("mid");
			}
		
			int num = commentsService.getMidcount(mid);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 0;
			map.put("data", num);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	    
		private void getComments(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");
			int MId = -1;
			if (data.has("mid")) {
				MId = data.getInt("mid");
			}
			ArrayList<JComments> ms = commentsService.getTCommentsUIDByPageNum( MId, pn,ps);
			int count= commentsService.getMidcount(MId);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (ms != null) {
				status = 0;
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("Commentslist", ms);
				map.put("data", map2);
			} else {
				status = 1;
				map.put("data", "");
			}
			map.put("count", count);
			map.put("pn", pn);		
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		private void addComments(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JComments u = gson.fromJson(s, new TypeToken<JComments>() {
			}.getType());
			MmochatFilterService fiter = new MmochatFilterService();
			fiter.init();
			@SuppressWarnings("static-access")
			String com = fiter.getFilterString(u.getCommentsInfo());
			String ptime = TextUtility.formatDate(new Date());
			u.setCommentsInfo(com);
			u.setCommentsTime(ptime);
			u.setCommentsInfostatus(0);
			boolean b = commentsService.addSComments(u);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
				map.put("msg", "");
			} else {
				status = 1;
				map.put("msg", "");
			}
			map.put("ret", status);
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	 
		
		private void getUserhobbytype(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");
			ArrayList<JUserhobbytype> en= userhobbytypeService.getUserhobbytypeByPageNum(pn, ps);
			int count=userhobbytypeService.getcount();
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (en != null) {
				status = 0;
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("list", en);
				map.put("data", map2);
			} else {
				status = 1;
				map.put("data", "");
			}
			map.put("count", count); 
			map.put("pn", pn);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	

		private void addUserhobbytype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JUserhobbytype en = gson.fromJson(s, new TypeToken<JUserhobbytype>() {
			}.getType());
			en.setStatus((short) 0);
			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);
			boolean b =userhobbytypeService.addUserhobbytype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
				map.put("msg", "");
			} else {
				status = 1;
				map.put("msg", "");
			}
			map.put("ret", status);
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		private void upUserhobbytype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JUserhobbytype en = gson.fromJson(s, new TypeToken<JUserhobbytype>() {
			}.getType());

			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);	          		
			boolean b = userhobbytypeService.updateUserhobbytype(en);

			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
			} else {
				status = 1;
			}
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		private void getUserpapertype(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");
			ArrayList<JUserpapertype> en= userpapertypeService.getUserpapertypeByPageNum(pn, ps);
			int count=userpapertypeService.getcount();
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (en != null) {
				status = 0;
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("list", en);
				map.put("data", map2);
			} else {
				status = 1;
				map.put("data", "");
			}
			map.put("count", count); 
			map.put("pn", pn);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	

		private void addUserpapertype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JUserhobbytype en = gson.fromJson(s, new TypeToken<JUserhobbytype>() {
			}.getType());
			en.setStatus((short) 0);
			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);
			boolean b =userhobbytypeService.addUserhobbytype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
				map.put("msg", "");
			} else {
				status = 1;
				map.put("msg", "");
			}
			map.put("ret", status);
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		private void upUserpapertype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JUserpapertype en = gson.fromJson(s, new TypeToken<JUserpapertype>() {
			}.getType());

			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);	          		
			boolean b = userpapertypeService.updateUserpapertype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
			} else {
				status = 1;
			}
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	    
		private void getUserskilltype(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");
			ArrayList<JUserskilltype> en= userskilltypeService.getUserskilltypeByPageNum(pn, ps);
			int count=userskilltypeService.getcount();
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (en != null) {
				status = 0;
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("list", en);
				map.put("data", map2);
			} else {
				status = 1;
				map.put("data", "");
			}
			map.put("count", count); 
			map.put("pn", pn);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	

		private void addUserskilltype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JUserskilltype en = gson.fromJson(s, new TypeToken<JUserskilltype>() {
			}.getType());
			en.setStatus((short) 0);
			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);
			boolean b =userskilltypeService.addUserskilltype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 10;
				map.put("msg", "");
			} else {
				status = 1;
				map.put("msg", "");
			}
			map.put("ret", status);
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		private void upUserskilltype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JUserskilltype en = gson.fromJson(s, new TypeToken<JUserskilltype>() {
			}.getType());

			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);	          		
			boolean b = userskilltypeService.updateUserskilltype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
			} else {
				status = 1;
			}
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	    	
		
		private void getCompanyjobtype(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");
			ArrayList<JCompanyjobtype> en = companyjobtypeService.getCompanyjobtypeByPageNum(pn, ps);
			int count = companyjobtypeService.getcount();
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (en != null) {
				status = 0;
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("list", en);
				map.put("data", map2);
			} else {
				status = 1;
				map.put("data", "");
			}
			map.put("count", count); 
			map.put("pn", pn);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	

		private void addCompanyjobtype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JCompanyjobtype en = gson.fromJson(s, new TypeToken<JCompanyjobtype>() {
			}.getType());
			en.setStatus((short) 0);
			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);
			boolean b =companyjobtypeService.addJCompanyjobtype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
				map.put("msg", "");
			} else {
				status = 1;
				map.put("msg", "");
			}
			map.put("ret", status);
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		private void upCompanyjobtype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JCompanyjobtype en = gson.fromJson(s, new TypeToken<JCompanyjobtype>() {
			}.getType());

			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);	          		
			boolean b = companyjobtypeService.updateJCompanyjobtype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
			} else {
				status = 1;
			}
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}			
		private void getCompanywelfaretype(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");
			ArrayList<JCompanywelfaretype> en = companywelfaretypeService.getCompanywelfaretypeByPageNum(pn, ps);
			int count = companywelfaretypeService.getcount();
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (en != null) {
				status = 0;
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("list", en);
				map.put("data", map2);
			} else {
				status = 1;
				map.put("data", "");
			}
			map.put("count", count); 
			map.put("pn", pn);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	

		private void addCompanywelfaretype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JCompanywelfaretype en = gson.fromJson(s, new TypeToken<JCompanywelfaretype>() {
			}.getType());
			en.setStatus((short) 0);
			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);
			boolean b =companywelfaretypeService.addJCompanywelfaretype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
				map.put("msg", "");
			} else {
				status = 1;
				map.put("msg", "");
			}
			map.put("ret", status);
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		private void upCompanywelfaretype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JCompanywelfaretype en = gson.fromJson(s, new TypeToken<JCompanywelfaretype>() {
			}.getType());

			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);	          		
			boolean b = companywelfaretypeService.updateJCompanywelfaretype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
			} else {
				status = 1;
			}
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}			

		private void getCompanylicensetype(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");
			ArrayList<JCompanylicensetype> en = companylicensetypeService.getJCompanylicensetypeByPageNum(pn, ps);
			int count = companylicensetypeService.getcount();
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (en != null) {
				status = 0;
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("list", en);
				map.put("data", map2);
			} else {
				status = 1;
				map.put("data", "");
			}
			map.put("count", count); 
			map.put("pn", pn);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	

		private void addCompanylicensetype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JCompanylicensetype en = gson.fromJson(s, new TypeToken<JCompanylicensetype>() {
			}.getType());
			en.setCompanylicensetypeStatus((short) 0);
			String ptime = TextUtility.formatDate(new Date());
			en.setCompanylicensetypeTime(ptime);
			boolean b =companylicensetypeService.addJCompanylicensetype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
				map.put("msg", "");
			} else {
				status = 1;
				map.put("msg", "");
			}
			map.put("ret", status);
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		private void upCompanylicensetype(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JCompanylicensetype en = gson.fromJson(s, new TypeToken<JCompanylicensetype>() {
			}.getType());

			String ptime = TextUtility.formatDate(new Date());
			en.setCompanylicensetypeTime(ptime);         		
			boolean b = companylicensetypeService.updateJCompanylicensetype(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
			} else {
				status = 1;
			}
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		private void getMsgCount(JSONObject data) throws JSONException {

			int num = messagesService.getcount(-1,null);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 0;
			map.put("data", num);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		private void getUserinfoCount(JSONObject data) throws JSONException {

			int num = userinfoService.getcount();
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 0;
			map.put("data", num);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}			
		private void getCompanyCount(JSONObject data) throws JSONException {

			int num = companyService.getcount();
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 0;
			map.put("data", num);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		private void getKeyword(JSONObject data) throws JSONException {
			int pn = data.getInt("pn");
			int ps = data.getInt("ps");
			ArrayList<JKeyword> en = keywordService.getKeywordByPageNum(pn, ps);
			int count = keywordService.getcount();
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (en != null) {
				status = 0;
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("list", en);
				map.put("data", map2);
			} else {
				status = 1;
				map.put("data", "");
			}
			map.put("count", count); 
			map.put("pn", pn);
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	

		private void addKeyword(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JKeyword en = gson.fromJson(s, new TypeToken<JKeyword>() {
			}.getType());
			en.setStatus(false);
			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);
			boolean b =keywordService.addJKeyword(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
				map.put("msg", "");
			} else {
				status = 1;
				map.put("msg", "");
			}
			map.put("ret", status);
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		private void upKeyword(JSONObject data) throws JSONException {
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			String s = data.toString();
			JKeyword en = gson.fromJson(s, new TypeToken<JKeyword>() {
			}.getType());

			String ptime = TextUtility.formatDate(new Date());
			en.setPtime(ptime);         		
			boolean b = keywordService.updateJKeyword(en);
			Map<String, Object> map = new HashMap<String, Object>();
			int status = 1;
			if (b) {
				status = 0;
			} else {
				status = 1;
			}
			map.put("ret", status);
			map.put("msg", "");
			try {
				ResultUtils.toJson(ServletActionContext.getResponse(), map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
	
		
		
		public UserService getUserService() {
			return userService;
		}
		public void setUserService(UserService userService) {
			this.userService = userService;
		}
		public UserinfoService getUserinfoService() {
			return userinfoService;
		}
		public void setUserinfoService(UserinfoService userinfoService) {
			this.userinfoService = userinfoService;
		}
		public UsercompanyjobService getUsercompanyjobService() {
			return usercompanyjobService;
		}
		public void setUsercompanyjobService(UsercompanyjobService usercompanyjobService) {
			this.usercompanyjobService = usercompanyjobService;
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
		public UserforjobService getUserforjobService() {
			return userforjobService;
		}
		public void setUserforjobService(UserforjobService userforjobService) {
			this.userforjobService = userforjobService;
		}
		public UserhobbyService getUserhobbyService() {
			return userhobbyService;
		}
		public void setUserhobbyService(UserhobbyService userhobbyService) {
			this.userhobbyService = userhobbyService;
		}
		public UserpaperService getUserpaperService() {
			return userpaperService;
		}
		public void setUserpaperService(UserpaperService userpaperService) {
			this.userpaperService = userpaperService;
		}
		public UserpayService getUserpayService() {
			return userpayService;
		}
		public void setUserpayService(UserpayService userpayService) {
			this.userpayService = userpayService;
		}
		public UserskillService getUserskillService() {
			return userskillService;
		}
		public void setUserskillService(UserskillService userskillService) {
			this.userskillService = userskillService;
		}
		public UserskilltypeService getUserskilltypeService() {
			return userskilltypeService;
		}
		public void setUserskilltypeService(UserskilltypeService userskilltypeService) {
			this.userskilltypeService = userskilltypeService;
		}
		public UservaluesService getUservaluesService() {
			return uservaluesService;
		}
		public void setUservaluesService(UservaluesService uservaluesService) {
			this.uservaluesService = uservaluesService;
		}
		public UserworkService getUserworkService() {
			return userworkService;
		}
		public void setUserworkService(UserworkService userworkService) {
			this.userworkService = userworkService;
		}
		public CompanycultureService getCompanycultureService() {
			return companycultureService;
		}
		public void setCompanycultureService(CompanycultureService companycultureService) {
			this.companycultureService = companycultureService;
		}
		public CompanyenvironmentService getCompanyenvironmentService() {
			return companyenvironmentService;
		}
		public void setCompanyenvironmentService(
				CompanyenvironmentService companyenvironmentService) {
			this.companyenvironmentService = companyenvironmentService;
		}
		public CompanyjobService getCompanyjobService() {
			return companyjobService;
		}
		public void setCompanyjobService(CompanyjobService companyjobService) {
			this.companyjobService = companyjobService;
		}
		public CompanyjobtypeService getCompanyjobtypeService() {
			return companyjobtypeService;
		}
		public void setCompanyjobtypeService(CompanyjobtypeService companyjobtypeService) {
			this.companyjobtypeService = companyjobtypeService;
		}
		public CompanylicenseService getCompanylicenseService() {
			return companylicenseService;
		}
		public void setCompanylicenseService(CompanylicenseService companylicenseService) {
			this.companylicenseService = companylicenseService;
		}
		public CompanylicensetypeService getCompanylicensetypeService() {
			return companylicensetypeService;
		}
		public void setCompanylicensetypeService(
				CompanylicensetypeService companylicensetypeService) {
			this.companylicensetypeService = companylicensetypeService;
		}
		public CompanyuserService getCompanyuserService() {
			return companyuserService;
		}
		public void setCompanyuserService(CompanyuserService companyuserService) {
			this.companyuserService = companyuserService;
		}
		public CompanywelfareService getCompanywelfareService() {
			return companywelfareService;
		}
		public void setCompanywelfareService(CompanywelfareService companywelfareService) {
			this.companywelfareService = companywelfareService;
		}
		public CompanywelfaretypeService getCompanywelfaretypeService() {
			return companywelfaretypeService;
		}
		public void setCompanywelfaretypeService(
				CompanywelfaretypeService companywelfaretypeService) {
			this.companywelfaretypeService = companywelfaretypeService;
		}
		public CompnaybusinessService getCompnaybusinessService() {
			return compnaybusinessService;
		}
		public void setCompnaybusinessService(
				CompnaybusinessService compnaybusinessService) {
			this.compnaybusinessService = compnaybusinessService;
		}
		public FriendsService getFriendsService() {
			return friendsService;
		}
		public void setFriendsService(FriendsService friendsService) {
			this.friendsService = friendsService;
		}
		public CompanyService getCompanyService() {
			return companyService;
		}
		public void setCompanyService(CompanyService companyService) {
			this.companyService = companyService;
		}
		public CommentsService getCommentsService() {
			return commentsService;
		}
		public void setCommentsService(CommentsService commentsService) {
			this.commentsService = commentsService;
		}
		public MessagesService getMessagesService() {
			return messagesService;
		}
		public void setMessagesService(MessagesService messagesService) {
			this.messagesService = messagesService;
		}
		public UserhobbytypeService getUserhobbytypeService() {
			return userhobbytypeService;
		}
		public void setUserhobbytypeService(UserhobbytypeService userhobbytypeService) {
			this.userhobbytypeService = userhobbytypeService;
		}
		public UserpapertypeService getUserpapertypeService() {
			return userpapertypeService;
		}
		public void setUserpapertypeService(UserpapertypeService userpapertypeService) {
			this.userpapertypeService = userpapertypeService;
		}
		public KeywordService getKeywordService() {
			return keywordService;
		}
		public void setKeywordService(KeywordService keywordService) {
			this.keywordService = keywordService;
		}	
	
}
