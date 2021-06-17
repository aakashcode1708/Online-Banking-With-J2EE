package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.Users;

public class UsersDao {
public static int saveUsers(Users user)
{
	int save=0;
	try {
		Connection con=DatabaseDao.getCon();
		PreparedStatement ps=con.prepareStatement("insert into users(acc_no,name,email,password,mobile,balance) values(?,?,?,?,?,?)");
		ps.setString(1,user.getAcc_no());
		ps.setString(2,user.getName());
		ps.setString(3,user.getEmail());
		ps.setString(4,user.getPassword());
		ps.setString(5,user.getMobile());
		ps.setInt(6,user.getBalance());
		save=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return save;
}
public static int updateUsers(Users user)
{
	int update=0;
	try {
		Connection con=DatabaseDao.getCon();
		PreparedStatement ps=con.prepareStatement("update users set name=?,email=?,password=?,mobile=? where acc_no=?");
		ps.setString(1,user.getName());
		ps.setString(2,user.getEmail());
		ps.setString(3,user.getPassword());
		ps.setString(4,user.getMobile());
		ps.setString(5,user.getAcc_no());
		update=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return update;
}
public static Users getUserByAccNo(String acc_no)
{
	Users user=new Users();
	try {
		Connection con=DatabaseDao.getCon();
		PreparedStatement ps=con.prepareStatement("select * from users where acc_no=?");
		ps.setString(1,acc_no);
		ResultSet rs=ps.executeQuery();
		if (rs.next()) {
			user.setAcc_no(rs.getString("acc_no"));
			user.setName(rs.getString("name"));
			user.setEmail(rs.getString("email"));
			user.setMobile(rs.getString("mobile"));
			user.setBalance(rs.getInt("balance"));
			user.setPassword(rs.getString("password"));
		}
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return user;
}
public static boolean loginValidate(String email,String password)
{
	
boolean status=false;
try {
	Connection con=DatabaseDao.getCon();
	PreparedStatement ps=con.prepareStatement("select * from users where email=? and password=?");
	ps.setString(1,email);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	status=rs.next();
} catch (Exception e) {
	e.printStackTrace();
}
return status;
}

public static int checkBalance(String acc_no)
{
	int balance=0;
	try {
		Connection con=DatabaseDao.getCon();
		PreparedStatement ps=con.prepareStatement("select * from users where acc_no=?");
		ps.setString(1,acc_no);
		ResultSet rs=ps.executeQuery();
		if (rs.next()) {
			balance=rs.getInt("balance");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return balance;

}
public static int updateBalance(String acc_no,int balance)
{
	int update=0;
	try {
		Connection con=DatabaseDao.getCon();
		PreparedStatement ps=con.prepareStatement("update users set balance=? where acc_no=?");
		ps.setInt(1,balance);
		
		ps.setString(2,acc_no);
		update=ps.executeUpdate();
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return update;
}
public static Users getUserByEmail(String email)
{
	Users user=new Users();
	try {
		Connection con=DatabaseDao.getCon();
		PreparedStatement ps=con.prepareStatement("select * from users where email=?");
		ps.setString(1,email);
		ResultSet rs=ps.executeQuery();
		if (rs.next()) {
			user.setAcc_no(rs.getString("acc_no"));
			user.setName(rs.getString("name"));
			user.setEmail(rs.getString("email"));
			user.setMobile(rs.getString("mobile"));
			user.setBalance(rs.getInt("balance"));
			user.setPassword(rs.getString("password"));
		}
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return user;
}

}
