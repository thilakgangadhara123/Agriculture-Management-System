package com.controller;

import java.io.IOException;

import com.Dao.CropDao;
import com.model.Buy;
import com.model.Crops;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/PurchaseServlet")
public class PurchaseServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int cropId = Integer.parseInt(request.getParameter("cropId"));
            String buyer = request.getParameter("buyer");
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            // ✅ Create Buy object
            Buy b = new Buy();
            b.setCropId(cropId);
            b.setBuyer(buyer);
            b.setQuantity(quantity);

            // ✅ Create Crops object
            Crops c = new Crops();
            c.setId(cropId);

            // ✅ Call DAO
            CropDao cd = new CropDao();
            String status = cd.buycrop(b, c);

            // ✅ Check status
            if (status.equals("success")) {
                response.sendRedirect("farmerhome.jsp");
            } 
            else if (status.equals("insufficient_stock")) {
                response.getWriter().println("Not enough stock available!");
            } 
            else {
                response.getWriter().println("Purchase Failed!");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error occurred!");
        }
    }
}
