package com.jsp.crud;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmpDao {
public static Connection getCon() throws ClassNotFoundException, SQLException {
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/utkarsh","root","Utkarsh@123");
	System.out.println("Connection Created");
	return con;
	
}
public static int save(Emp e) throws ClassNotFoundException, SQLException {
	
	int status=0;
	Connection con=EmpDao.getCon();
	PreparedStatement pt=con.prepareStatement("insert into employee(name,password,email,country) values(?,?,?,?)");
	pt.setString(1, e.getName());
	pt.setString(2, e.getPassword());
	pt.setString(3, e.getEmail());
	pt.setString(4, e.getCountry());
	status=pt.executeUpdate();
	con.close();
	return status;
	
}
public static List<Emp> view() throws SQLException, ClassNotFoundException {
	Connection con=EmpDao.getCon();
	List<Emp> list=new ArrayList();
	PreparedStatement pt=con.prepareStatement("Select * from employee");
	ResultSet rs=pt.executeQuery();
	while(rs.next()) {
		Emp e=new Emp();
		e.setId(rs.getInt(1));
		e.setName(rs.getString(2));
		e.setPassword(rs.getString(3));
		e.setEmail(rs.getString(4));
		e.setCountry(rs.getString(5));
		list.add(e);
	}
	con.close();
	return list;
	
}
}
