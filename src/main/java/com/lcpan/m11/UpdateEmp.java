package com.lcpan.m11;

import java.io.IOException;
import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.lcpan.bean.EmpBean;

@WebServlet("/UpdateEmp")
public class UpdateEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String hiredate = request.getParameter("hiredate");
		String salary = request.getParameter("salary");
		String deptno = request.getParameter("deptno");
		String title = request.getParameter("title");
		String sql = "UPDATE [employee] SET ename = ?, hiredate = ?, salary = ?, deptno = ?, title = ? WHERE empno = ?";
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context
					.lookup("java:/comp/env/jdbc/servdb");
			conn = ds.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ename);
			pstmt.setString(2, hiredate);
			pstmt.setString(3, salary);
			pstmt.setString(4, deptno);
			pstmt.setString(5, title);
			pstmt.setString(6, empno);
			int updateCount = pstmt.executeUpdate();
			
			request.setAttribute("updateCount", updateCount);
			pstmt.close();
			request.getRequestDispatcher("/m11/Update.jsp")
			.forward(request, response);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
