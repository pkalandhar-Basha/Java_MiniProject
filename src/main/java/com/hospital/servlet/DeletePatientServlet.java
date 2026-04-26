package com.hospital.servlet;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import com.hospital.dao.HospitalDAO;

@WebServlet("/DeletePatientServlet")
public class DeletePatientServlet extends HttpServlet {

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
                "delete from Patients where PatientID=?");

            ps.setInt(1, Integer.parseInt(req.getParameter("id")));

            int x = ps.executeUpdate();

            if(x > 0)
                out.println("<h2>Patient Deleted Successfully</h2>");
            else
                out.println("<h2>Patient ID Not Found</h2>");

            out.println("<a href='index.jsp'>Back</a>");

            ps.close();
            con.close();

        } catch(Exception e) {
            out.println(e);
        }
    }
}