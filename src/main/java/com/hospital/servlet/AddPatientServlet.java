package com.hospital.servlet;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import com.hospital.dao.HospitalDAO;

@WebServlet("/AddPatientServlet")
public class AddPatientServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        try {

            Connection con = HospitalDAO.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "insert into Patients values(?,?,?,?,?,?,?)");

            ps.setInt(1, Integer.parseInt(req.getParameter("id")));
            ps.setString(2, req.getParameter("name"));
            ps.setInt(3, Integer.parseInt(req.getParameter("age")));
            ps.setString(4, req.getParameter("gender"));
            ps.setString(5, req.getParameter("date"));
            ps.setString(6, req.getParameter("ailment"));
            ps.setString(7, req.getParameter("doctor"));

            ps.executeUpdate();

            out.println("<h2>Patient Added Successfully</h2>");
            out.println("<a href='index.jsp'>Back</a>");

            ps.close();
            con.close();

        } catch (Exception e) {
            out.println(e);
        }
    }
}