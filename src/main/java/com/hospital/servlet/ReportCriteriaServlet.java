package com.hospital.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ReportCriteriaServlet")
public class ReportCriteriaServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String type = req.getParameter("type");
        String value = req.getParameter("value");

        HttpSession session = req.getSession();

        session.setAttribute("type", type);
        session.setAttribute("value", value);

        res.sendRedirect("ReportServlet");
    }
}