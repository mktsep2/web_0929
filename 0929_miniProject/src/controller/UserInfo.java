package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dto.UserVo;

@WebServlet("/info")
public class UserInfo extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command=request.getParameter("command");
		if(command.equals("join")){
			insertMember(request, response);
		}else if(command.equals("update")){
			updateMember(request,response);
		}else if(command.equals("login")){
			loginMember(request, response);
		}else{
			response.sendRedirect("error.jsp");
		}
	}

	public void insertMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id").trim();
		String pw = request.getParameter("password").trim();
		String name = request.getParameter("name").trim();
		String phone = request.getParameter("tel").trim();
		String mail = request.getParameter("mail").trim();
		UserVo vo= new UserVo(id, pw, name, phone, mail);
		String url = null;	
		try {
			HttpSession session=request.getSession();
			session.setAttribute("vo", vo);
			url = "checklogin.jsp";
			UserDAO.join(vo);			
		}catch (Exception e) {			
			request.setAttribute("error", "입력 실패");
			url = "error.jsp";
			e.printStackTrace();
		}
		RequestDispatcher rdp = request.getRequestDispatcher(url);		
		rdp.forward(request, response);
	}
	public void updateMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(true);
//		session.setMaxInactiveInterval(0);
//		session.invalidate();
//		session=null;
		String id = request.getParameter("id").trim();
		String pw = request.getParameter("password").trim();
		String name = request.getParameter("name").trim();
		String phone = request.getParameter("tel").trim();
		String mail = request.getParameter("mail").trim();
		UserVo vo= new UserVo(id, pw, name, phone, mail);
		String url = null;	
		try {			
			UserDAO.update(vo);			
			session.setAttribute("vo", vo);
			url = "checklogin.jsp";
		}catch (Exception e) {			
			request.setAttribute("error", "입력 실패");
			url = "error.jsp";
			e.printStackTrace();
		}
		RequestDispatcher rdp = request.getRequestDispatcher(url);		
		rdp.forward(request, response);
	}
	public void loginMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(true);
		
		String id = request.getParameter("id").trim();
		String pw = request.getParameter("password").trim();
		String url = null;	
		
		try {
			UserVo vo=UserDAO.select(id);
			if((vo.getPasswd()).equals(pw)){
			session.setAttribute("vo", vo);
				url="index.jsp";
			}
		}catch (Exception e) {			
			request.setAttribute("error", "입력 실패");
			url = "error.jsp";
			e.printStackTrace();
		}
		RequestDispatcher rdp = request.getRequestDispatcher(url);		
		rdp.forward(request, response);
	}
		
}
