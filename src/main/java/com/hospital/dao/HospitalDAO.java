package com.hospital.dao;

import java.sql.*;

public class HospitalDAO {

    public static Connection getConnection() throws Exception {

        Class.forName("com.mysql.jdbc.Driver");

        return DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/hospitaldb",
        "root",
        "root");
    }
}