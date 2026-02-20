package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.Dao.CropDao;
import com.model.Crops;
import com.model.Farmer;

@WebServlet("/ViewCropServlet")
public class ViewCropServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		// 🔹 Check session
		if (session == null || session.getAttribute("farmer") == null) {
			response.sendRedirect("login.jsp");
			return;
		}

		Farmer farmer = (Farmer) session.getAttribute("farmer");

		CropDao dao = new CropDao();

		// ✅ Correct method name
		List<Crops> cropList = dao.getCropsByFarmer(farmer.getfarmerId());

		request.setAttribute("crops", cropList);

		RequestDispatcher rd = request.getRequestDispatcher("viewCrop.jsp");
		rd.forward(request, response);
	}
}
