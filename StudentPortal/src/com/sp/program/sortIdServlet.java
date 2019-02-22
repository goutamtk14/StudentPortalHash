package com.sp.program;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sp.comparator.DeptCompare;
import com.sp.comparator.IdCompare;
import com.sp.entity.Student;
import com.sp.util.DaoFactory;

/**
 * Servlet implementation class sortIdServlet
 */
@WebServlet("/sortId")
public class sortIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			HashMap<Integer, Student> result = DaoFactory.getStudents();
			HashMap<Integer, Student> result1 = new HashMap<>();
			ArrayList<Student> y = new ArrayList<>();

			for (int i = 0; i < result.size(); i++) {
				y.add(result.get(i));

			}
			IdCompare a = new IdCompare();
			Collections.sort(y, a);
			for (int i = 0; i < y.size(); i++) {
				result1.put(i, y.get(i));
			}

			request.setAttribute("students", result1);

			RequestDispatcher rd = request.getRequestDispatcher("get.jsp");
			rd.forward(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
