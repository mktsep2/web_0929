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
		if(command.equals("check")){
			checkMember(request, response);
		}else if(command.equals("insert")){
			insertMember(request,response);
		}else if(command.equals("login")){
			loginMember(request, response);
		}else if(command.equals("logout")){
			HttpSession session=request.getSession(false);
			session.setMaxInactiveInterval(0);
			session.invalidate();
			session=null;
			response.sendRedirect("index.jsp");
		}else if(command.equals("update")){
			updateMember(request,response);
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}

	public void checkMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id").trim();
		String pw = request.getParameter("password").trim();
		String name = request.getParameter("name").trim();
		String phone = request.getParameter("tel").trim();
		String mail = request.getParameter("mail").trim();
		UserVo vo= new UserVo(id, pw, name, phone, mail);
		System.out.println(vo);
		String url = null;	
		try {
			HttpSession session=request.getSession();
			session.setAttribute("vo", vo);
			url = "userInfo/checklogin.jsp";
		}catch (Exception e) {			
			request.setAttribute("error", "입력 실패");
			url = "userInfo/error.jsp";
			e.printStackTrace();
		}
		RequestDispatcher rdp = request.getRequestDispatcher(url);		
		rdp.forward(request, response);
	}
	public void insertMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(true);
		String id = request.getParameter("id").trim();
		String pw = request.getParameter("password").trim();
		String name = request.getParameter("name").trim();
		String phone = request.getParameter("tel").trim();
		String mail = request.getParameter("mail").trim();
		UserVo vo= new UserVo(id, pw, name, phone, mail);
		System.out.println(vo);
		String url = null;	
		try {			
			UserDAO.join(vo);		
			System.out.println("insert완료");
			session.setAttribute("vo", vo);
			url="userInfo/insertp.jsp";
		}catch (Exception e) {			
			request.setAttribute("error", "입력 실패");
			url = "userInfo/error.jsp";
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
				url="userlog.jsp";
			}
		}catch (Exception e) {			
			request.setAttribute("error", "입력 실패");
			url = "userInfo/error.jsp";
			e.printStackTrace();
		}
		RequestDispatcher rdp = request.getRequestDispatcher(url);		
		rdp.forward(request, response);
	}
	public void updateMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session=request.getSession(true);
		String id = request.getParameter("id").trim();
		String pw = request.getParameter("password").trim();
		String name = request.getParameter("name").trim();
		String phone = request.getParameter("tel").trim();
		String mail = request.getParameter("mail").trim();
		UserVo vo= new UserVo(id, pw, name, phone, mail);
		System.out.println(vo);
		String url = null;	
		try {			
			UserDAO.update(vo);
			System.out.println("update완료");
			session.setAttribute("vo", vo);
			url="userInfo/usercheck.jsp";
		}catch (Exception e) {			
			request.setAttribute("error", "입력 실패");
			url = "userInfo/error.jsp";
			e.printStackTrace();
		}
		RequestDispatcher rdp = request.getRequestDispatcher(url);		
		rdp.forward(request, response);
	
	}
		
}
