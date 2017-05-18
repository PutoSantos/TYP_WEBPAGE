package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.InitDB;

@WebServlet("/HRegisterAccount")
public class HRegisterAccount extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	InitDB db;
	
    public HRegisterAccount() 
    {
        super();
        db = new InitDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		db.ConnectDB();
		db.registerAccount(request.getParameter("reg_username"), request.getParameter("reg_password"), request.getParameter("reg_email"));
		
		doGet(request, response);
	}

}
