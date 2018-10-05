package com.wzc.sys;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

public class LoginAction extends BasicAction {

	private static final long serialVersionUID = 1L;
	
	private String user;
	private String password;
	private String name;

	public LoginAction(DataSource datasource) {
		super(datasource);
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