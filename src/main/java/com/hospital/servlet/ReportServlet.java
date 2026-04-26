package com.hospital.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.hospital.dao.HospitalDAO;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        try {

            HttpSession session = req.getSession();

            String type = (String) session.getAttribute("type");
            String value = (String) session.getAttribute("value");

            Connection con = HospitalDAO.getConnection();

            PreparedStatement ps = null;

            if(type.equals("date"))
                ps = con.prepareStatement(
                    "select * from Patients where AdmissionDate=?");

            if(type.equals("ailment"))
                ps = con.prepareStatement(
                    "select * from Patients where Ailment=?");

            if(type.equals("doctor"))
                ps = con.prepareStatement(
                    "select * from Patients where AssignedDoctor=?");

            ps.setString(1, value);

            ResultSet rs = ps.executeQuery();

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Report Result</title>");

            out.println("<style>");
            out.println("body{font-family:Arial;background:#f0f8ff;text-align:center;}");
            out.println(".box{width:90%;margin:40px auto;background:white;padding:25px;border-radius:12px;box-shadow:0 0 12px gray;}");
            out.println("h1{color:darkblue;}");
            out.println("table{margin:auto;border-collapse:collapse;width:95%;}");
            out.println("th,td{border:1px solid #ccc;padding:12px;}");
            out.println("th{background:green;color:white;}");
            out.println("tr:nth-child(even){background:#f2f2f2;}");
            out.println("a{display:inline-block;margin-top:20px;padding:12px 20px;background:blue;color:white;text-decoration:none;border-radius:6px;}");
            out.println("a:hover{background:darkblue;}");
            out.println("</style>");

            out.println("</head>");
            out.println("<body>");

            out.println("<div class='box'>");
            out.println("<h1>Report Result</h1>");

            out.println("<table>");
            out.println("<tr>");
            out.println("<th>ID</th>");
            out.println("<th>Name</th>");
            out.println("<th>Age</th>");
            out.println("<th>Ailment</th>");
            out.println("<th>Doctor</th>");
            out.println("</tr>");

            while(rs.next()) {

                out.println("<tr>");
                out.println("<td>"+rs.getInt("PatientID")+"</td>");
                out.println("<td>"+rs.getString("PatientName")+"</td>");
                out.println("<td>"+rs.getInt("Age")+"</td>");
                out.println("<td>"+rs.getString("Ailment")+"</td>");
                out.println("<td>"+rs.getString("AssignedDoctor")+"</td>");
                out.println("</tr>");
            }

            out.println("</table>");

            out.println("<a href='index.jsp'>Back to Home</a>");

            out.println("</div>");
            out.println("</body>");
            out.println("</html>");

            rs.close();
            ps.close();
            con.close();

        } catch(Exception e) {
            out.println("<h2>Error : " + e.getMessage() + "</h2>");
        }
    }
}