package com.pzy.action.admin;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pzy.entity.AdminUser;
import com.pzy.entity.Log;
import com.pzy.service.AdminUserService;
import com.pzy.service.LogService;
/***
 * 后台首页，处理后台登录验证权限等操作
 * @author Administrator
 *
 */
@Namespace("/admin")
public class IndexAction  extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userName;
	private String  password;
	private String safecode;
	private String tip;
	@Autowired 
	AdminUserService adminUserService;
	@Autowired
	LogService logService;
	private String getIp(){
    	return ServletActionContext.getRequest().getRemoteAddr();
	}
	
	/***
	 * 库存跳转
	 * @return
	 */
	@Action(value = "/kc/index", results = { @Result(name = "success", location = "/WEB-INF/views/admin/kc/index.jsp") })
     public String kcindex(){
		return SUCCESS;
	}
          
	/***
	 * 后台登录首页
	 * @return
	 */
	@Action(value = "/adminindex", results = { @Result(name = "success", location = "/WEB-INF/views/admin/index.jsp") })
     public String index(){
          return SUCCESS;
     }
	/***
	 * 点击登录按钮
	 * @return
	 */
     @Action(value = "login", results = { @Result(name = "success", location = "/WEB-INF/views/admin/login.jsp") })
     public String login(){
          return SUCCESS;
     }
     /***
      * 注销退出
      * @return
      */
     @Action(value = "loginout", results = { @Result(name = "success", location = "/WEB-INF/views/admin/login.jsp") })
     public String loginout(){
    	 	ActionContext.getContext().getSession().remove("adminuser");
    	 	ActionContext.getContext().getSession().clear();
    	 	return SUCCESS;
     }
     /**
      * 登录，后台数据库验证
      * @return
      */
     @Action(value = "gologin", results = { @Result(name = "success", location = "/WEB-INF/views/admin/index.jsp"),@Result(name = "input", location = "/WEB-INF/views/admin/login.jsp") })
     public String gologin(){
    	/*String safecodesession=(String) ActionContext.getContext().getSession().get("safecode");
    	if(!safecodesession.equals(safecode)){
    		this.tip="验证码不正确!";
    		return LOGIN;
    	}*/
    	AdminUser adminUser=adminUserService.login(this.userName, this.password);
    	
    	if(adminUser!=null){
    		ActionContext.getContext().getSession().put("adminuser",adminUser);
    		logService.save(adminUser,getIp(),adminUser.getRealname()+"登陆了系统",Log.INFO_LEVEL);	
            return SUCCESS; 
    	}
    	else{
    		ActionContext.getContext().getSession().clear();
    		this.tip="登陆失败 不存在此用户名或密码!";
    		logService.save(null,getIp(),userName+"尝试登陆系统失败",Log.DANGER_LEVEL);	
    		return LOGIN; 
    	}
     }
     /*********getter setter********************/
 	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
    public String getUserName() {
 		return userName;
 	}
 	public void setUserName(String userName) {
 		this.userName = userName;
 	}
 	public String getPassword() {
 		return password;
 	}
 	public void setPassword(String password) {
		this.password = password;
	}
 	public String getSafecode() {
		return safecode;
	}

	public void setSafecode(String safecode) {
		this.safecode = safecode;
	}
}

