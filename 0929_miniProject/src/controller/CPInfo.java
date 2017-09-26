package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CPDao;
import dto.CPVo;

@WebServlet("/cpInfo")
public class CPInfo extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int csid=Integer.parseInt(request.getParameter("csid"));
		ArrayList<CPVo> list = null;
		String url = null;
		
		try {
			url = "cpid.jsp";
			list = CPDao.searchCP(csid);
			System.out.println(list);
			request.setAttribute("cpVo", list);
		}catch (Exception e) {			
			request.setAttribute("error", "입력 실패");
			url = "error.jsp";
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	
}
