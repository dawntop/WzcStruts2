package com.wzc.sys;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;

import javax.sql.DataSource;

import org.apache.log4j.Logger;

public class RegisteAction extends BasicAction {

	private static final long serialVersionUID = 1L;
	public static final Logger log = Logger.getLogger(RegisteAction.class.getName());
	
	private String user;
	private String password;
	private int sex;
	private int birthyear;
	private int birthmonth;

	public RegisteAction(DataSource datasource) throws SQLException {
		super(datasource);
//		this.conn = datasource.getConnection();
	}
	
	public String execute() {
		log.info("开始注册");
		String ret = ERROR;

		try {
			String sql = "INSERT INTO LOGIN(USER,PASSWORD,NAME,SEX,BIRTHDATE,REGISTEDATE) VALUES(?,?,?,?,?,NOW())";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, password);
			ps.setString(3, user);
			ps.setInt(4, sex);
			ps.setInt(5, birthyear*100+birthmonth);
			int r = ps.executeUpdate();
			if (1 == r) {
				log.info("用户名[" + user + "]注册成功");
				ret = SUCCESS;
				return ret;
			}
		} catch (Exception e) {
			ret = ERROR;
			e.printStackTrace();
			log.error(e.getStackTrace());
			log.info(user + "注册失败");
		} finally {
			/*if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
				}
			}*/
		}
		return ret;
	}

	
	public void validate() {
		super.validate();
		request.setAttribute("user", user);
		request.setAttribute("password", password);
		request.setAttribute("sex", sex);
		request.setAttribute("birthyear", birthyear);
		request.setAttribute("birthmonth", birthmonth);
		try {
			String sql = "SELECT name FROM login WHERE";
			sql += " user = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				log.info("用户名[" + user + "]已存在");
				this.addFieldError("user", "用户名已存在!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			log.error(e.getStackTrace());
			log.info(user + "注册验证失败");
		}

		// 如果执行了addFieldError()/addActionError()等方法，则会转到input对应的页面
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

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public int getBirthyear() {
		return birthyear;
	}

	public void setBirthyear(int birthyear) {
		this.birthyear = birthyear;
	}

	public int getBirthmonth() {
		return birthmonth;
	}

	public void setBirthmonth(int birthmonth) {
		this.birthmonth = birthmonth;
	}


}