package com.hospital.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.hospital.dao.HospitalDAO;

@WebServlet("/DisplayPatientsServlet")
public class DisplayPatientsServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        try {

            Connection con = HospitalDAO.getConnection();
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from Patients");

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Patient Records</title>");

            out.println("<style>");
            out.println("body{font-family:Arial;background:#f0f8ff;text-align:center;}");
            out.println("h1{color:darkblue;margin-top:30px;}");
            out.println("table{margin:auto;border-collapse:collapse;width:90%;background:white;}");
            out.println("th,td{border:1px solid #000;padding:10px;}");
            out.println("th{background:green;color:white;}");
            out.println("tr:nth-child(even){background:#f2f2f2;}");
            out.println("a{padding:10px 20px;background:blue;color:white;text-decoration:none;border-radius:5px;}");
            out.println("</style>");

            out.println("</head>");
            out.println("<body>");

            out.println("<h1>Patient Records</h1>");

            out.println("<table>");
            out.println("<tr>");
            out.println("<th>Patient ID</th>");
            out.println("<th>Patient Name</th>");
            out.println("<th>Age</th>");
            out.println("<th>Gender</th>");
            out.println("<th>Admission Date</th>");
            out.println("<th>Ailment</th>");
            out.println("<th>Assigned Doctor</th>");
            out.println("</tr>");

            while (rs.next()) {

                out.println("<tr>");

                out.println("<td>" + rs.getInt("PatientID") + "</td>");
                out.println("<td>" + rs.getString("PatientName") + "</td>");
                out.println("<td>" + rs.getInt("Age") + "</td>");
                out.println("<td>" + rs.getString("Gender") + "</td>");
                out.println("<td>" + rs.getString("AdmissionDate") + "</td>");
                out.println("<td>" + rs.getString("Ailment") + "</td>");
                out.println("<td>" + rs.getString("AssignedDoctor") + "</td>");

                out.println("</tr>");
            }

            out.println("</table>");

            out.println("<br><br>");
            out.println("<a href='index.jsp'>Back to Home</a>");

            out.println("</body>");
            out.println("</html>");

            rs.close();
            st.close();
            con.close();

        } catch (Exception e) {
            out.println("<h2>Error : " + e.getMessage() + "</h2>");
        }
    }
}