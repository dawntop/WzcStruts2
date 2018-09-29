package com.wzc.sys;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.log4j.Logger;
import javax.sql.DataSource;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	public static final Logger log = Logger.getLogger(LoginAction.class.getName());
	
	private String user;
	private String password;
	private String name;
	private DataSource ds;

	public LoginAction(DataSource datasource) {
		this.ds = datasource;
	}
	
	public String execute() {
		log.info("begin login.....");
		String ret = ERROR;
		Connection conn = null;

		try {
/*			String URL = "jdbc:mysql://localhost/wdb";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, "root", "mysql");*/

			conn = ds.getConnection();
			String sql = "SELECT name FROM login WHERE";
			sql += " user = ? AND password = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				name = rs.getString(1);
				ret = SUCCESS;
			}
		} catch (Exception e) {
			ret = ERROR;
			e.printStackTrace();
			log.error(e.getStackTrace());
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

	public DataSource getDs() {
		return ds;
	}

	public void setDs(DataSource ds) {
		this.ds = ds;
	}
}