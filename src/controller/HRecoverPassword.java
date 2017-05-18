package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.InitDB;

@WebServlet("/HRecoverPassword")
public class HRecoverPassword extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	InitDB db;
	
    public HRecoverPassword() 
    {
        super();
        db = new InitDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setAttribute("validaEmail", db.validateEmail(request.getParameter("email")));
		request.getRequestDispatcher("recover.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		db.ConnectDB();
		db.validateEmail(request.getParameter("email"));
		
		doGet(request, response);
	}

}
