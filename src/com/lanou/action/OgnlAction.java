package com.lanou.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import org.apache.struts2.ServletActionContext;


/**
 * Created by dllo on 17/10/13.
 */
public class OgnlAction extends ActionSupport {

    //表单提交的属性
    private String username;
    private String password;

    @Override
    public String execute() throws Exception {
        System.out.println(username + ":" + password);

        //获取当前请求对象的值栈
        ValueStack valueStack = ServletActionContext.getValueStack(ServletActionContext.getRequest());

        //1.往Request中的attr的map集合中存取数据
        ServletActionContext.getRequest().setAttribute("request_username","请求域中的属性");
        //2.往Application中的attr的map集合中存取数据
        ActionContext.getContext().getApplication().put("application_username","application对应map集合中的数据存储");
        //3.往session中的map集合存储数据
        ActionContext.getContext().getSession().put("session_username","session对应map集合中的数据存储");
        //4.往parameter中的map集合中存储数据
        /*parameter的集合中不能修改参数, 往里面添加数据时不报错, 但是娶不到新加的数据,因为一个请求的参数只能在第一次提交时设置
        * 以后均不可修改*/
        ActionContext.getContext().getParameters().put("parameters_username","parameter对应的map集合中的数据存储");



        /*向 request  session  application 中的attr集合中加相同名字的属性*/
        ServletActionContext.getRequest().setAttribute("name","request中的name");
        ServletActionContext.getRequest().getSession().setAttribute("name","session中的name");
        ServletActionContext.getServletContext().setAttribute("name","application中的name");


        return SUCCESS;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
