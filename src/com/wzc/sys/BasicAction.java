package com.wzc.sys;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 *
 */
public abstract class BasicAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	public static final Logger log = Logger.getLogger(BasicAction.class.getName());
	
	public HttpServletResponse response;
	public HttpServletRequest request;
	
	public Connection conn = null;

	public BasicAction() {
		
	}
	
	public BasicAction(DataSource datasource) {
		try {
			this.conn = datasource.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		response=ServletActionContext.getResponse();
		request= ServletActionContext.getRequest();
	}
	
	public String execute() {
		return SUCCESS;		
	}

	
	public void validate() {
		super.validate();
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}
	
}