package com.wzc.sys;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	public static final Logger log = Logger.getLogger(LoginAction.class.getName());
	
	private String user;
	private String password;
	private String name;
	private Connection conn = null;

	public LoginAction(DataSource datasource) throws SQLException {
		this.conn = datasource.getConnection();
	}
	
	public String execute() {
		log.info("开始登录");
		String ret = ERROR;

		try {
			String sql = "SELECT name FROM login WHERE";
			sql += " user = ? AND password = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				name = rs.getString(1);
				log.info(user + "登录成功");
				ret = SUCCESS;
			}
		} catch (Exception e) {
			ret = ERROR;
			e.printStackTrace();
			log.error(e.getStackTrace());
			log.info(user + "登录失败");
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
				}
			}
		}
		return ret;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}