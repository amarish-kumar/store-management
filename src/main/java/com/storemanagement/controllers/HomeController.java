package com.storemanagement.controllers;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.storemanagement.entities.MainGroup;
import com.storemanagement.services.EntityService;
@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("sessionMainGroups") == null) {
			List<MainGroup> sessionMainGroups = EntityService.getAllObjects(MainGroup.class);
			session.setAttribute("sessionMainGroups", sessionMainGroups);
		}
		request.getRequestDispatcher("index.html").forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
