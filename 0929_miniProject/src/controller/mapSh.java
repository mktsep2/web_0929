package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.CSDao;
import dto.CSVo;
@WebServlet("/map")
public class mapSh extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			dataSearch(request, response);
	}
	protected void dataSearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String city=request.getParameter("city");
		System.out.println(city);
		ArrayList<CSVo> list=null;
		String url=null;
		try {
			list=new ArrayList<>();
			list=CSDao.select(city);
			request.setAttribute("list", list);
			url="test/maptest1.jsp";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
