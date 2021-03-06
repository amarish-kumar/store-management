package com.storemanagement.controllers;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.storemanagement.entities.Facility;
import com.storemanagement.entities.Privilege;
import com.storemanagement.entities.User;
import com.storemanagement.services.EntityService;
import com.storemanagement.services.UserService;
@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpSession = request.getSession();
		if(null == httpSession.getAttribute("user"))
			request.getRequestDispatcher("login.jsp").forward(request, response);
		else{
			response.sendRedirect("sales");
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		login(request, response);
	}
	
	//login as an existing user
	protected void login(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		if(!request.getParameter("name").equals("") && !request.getParameter("password").equals("")) {
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			User user = UserService.login(name, password);
			if(user != null) {
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("user", user);
				Facility facility = (Facility) EntityService.getObject(Facility.class, 1);
				httpSession.setAttribute("facility", facility);
				List<Privilege> privileges = EntityService.getObjectsWithEqRestriction(Privilege.class, "role.id", user.getRole().getId());
				httpSession.setAttribute("privileges", privileges);
				response.sendRedirect("sales");
			}else {
				request.setAttribute("error", "الاسم أو الرقم السرى غير صحيح");
				doGet(request, response);
			}
		}
	}
}
