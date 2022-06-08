package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import javafx.application.Application;
import javafx.scene.control.Alert;
import javax.servlet.ServletContext;
import sun.security.x509.X500Name;

public class control extends HttpServlet {

    connection con = new connection();
    Connection connection = con.getconnection();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ServletContext adminname = request.getSession().getServletContext();
            ServletContext adminemail = request.getSession().getServletContext();
            ServletContext username = request.getSession().getServletContext();
            ServletContext userid = request.getSession().getServletContext();
            ServletContext useremail = request.getSession().getServletContext();
            String function = request.getParameter("function");
            userid.setAttribute("user_id", "");
            HttpSession session = request.getSession(true);

            if (function.equals("") || function == null) {
                response.sendRedirect("index.jsp");
            }
            if (function.equals("adminlogin")) {
                String email = request.getParameter("username");
                String password = request.getParameter("password");
                try {
                    PreparedStatement st = connection.prepareStatement("Select * from admin_info where email=? and password=?");
                    st.setString(1, email);
                    st.setString(2, password);
                    ResultSet rs = st.executeQuery();
                    if (rs.next()) {
                        String name = rs.getString("admin_name");
                        String admin_email = rs.getString("email");
                        adminname.setAttribute("admin_name", name);
                        adminemail.setAttribute("admin_email", admin_email);
                        response.sendRedirect("admin/index.jsp");

                    } else {
                        response.sendRedirect("admin/login.jsp");
                    }
                } catch (SQLException ex) {

                }
            }
            if (function.equals("update")) {
                String name = request.getParameter("name");
                String date1 = request.getParameter("date");
                String price = request.getParameter("price");
                String details = request.getParameter("details");
                String id = request.getParameter("editvalue");
                SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                Date date = new Date();
                try {
                    PreparedStatement st = connection.prepareStatement("update activities set activity_name=?,activity_date=?,activity_price=?,activity_detail=?,updated_date=? where activity_id=?");
                    st.setString(1, name);
                    st.setString(2, date1);
                    st.setString(3, price);
                    st.setString(4, details);
                    st.setString(5, formatter.format(date).toString());
                    st.setString(6, id);
                    st.executeUpdate();
                    response.sendRedirect("admin/activities.jsp");
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            if (function.equals("forgot")) {
                String s = request.getParameter("email_modal");
                String password = "Email not found!";
                try {
                    PreparedStatement st = connection.prepareStatement("Select password,admin_name from admin_info where email=?");
                    st.setString(1, s);
                    ResultSet rs = st.executeQuery();
                    if (rs.next()) {
                        String pass = rs.getString("password");
                        String name = rs.getString("admin_name");
                        password = "Dear," + name + "\nYour password is '" + pass + "'";
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
                mail.send("yashpatel13645@gmail.com", "Yash12390", s, password);
                out.println("<script>");
                out.print("if(!alert(\"Password is sent at your Email.\")) {\n"
                        + "    window.location.href = \"admin/login.jsp\";\n"
                        + "}");
                out.println("</script>");

            }
            if (function.equals("user_login")) {
                String email = request.getParameter("username");
                String password = request.getParameter("password");
                try {
                    PreparedStatement st = connection.prepareStatement("Select user_id,email,password,user_flag,name from student_info where email=?");
                    st.setString(1, email);
                    ResultSet rs = st.executeQuery();
                    if (rs.next()) {
                        if (rs.getString("password").equals(password)) {
                            if (rs.getInt("user_flag") == 0) {
                                out.println("<script>");
                                out.print("if(!alert(\"Your Email was Blocked.\")) {\n"
                                        + "    window.location.href = \"index.jsp\";\n"
                                        + "}");
                                out.println("</script>");
                            } else {
                                username.setAttribute("user_name", rs.getString("name"));
                                useremail.setAttribute("user_email", email);
                                userid.setAttribute("user_id", rs.getInt("user_id"));
                                response.sendRedirect("index.jsp");
                            }
                        }
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            if (function.equals("user_forgot")) {
                String email = request.getParameter("Email2");
                String password = "Email not found!";
                try {
                    PreparedStatement st = connection.prepareStatement("Select password,name from student_info where email=?");
                    st.setString(1, email);
                    ResultSet rs = st.executeQuery();
                    if (rs.next()) {
                        String pass = rs.getString("password");
                        String name = rs.getString("name");
                        password = "Dear," + name + "\nYour password is '" + pass + "'";
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
                mail.send("yashpatel13645@gmail.com", "Yash12390", email, password);
                out.println("<script>");
                out.print("if(!alert(\"Password is sent at your Email.\")) {\n"
                        + "    window.location.href = \"index.jsp\";\n"
                        + "}");
                out.println("</script>");
            }
            if (function.equals("deactiveuser")) {
                String email = request.getParameter("deactiveid");
                int i = con.activeuser(email, 0);
                if (i > 0) {
                    response.sendRedirect("admin/showuser.jsp");
                } else {
                    out.print("activation not done.");
                }
            }
            if (function.equals("activeuser")) {
                String email = request.getParameter("activeid");
                int i = con.activeuser(email, 1);
                if (i > 0) {
                    response.sendRedirect("admin/showuser.jsp");
                } else {
                    out.print("activation not done.");
                }
            }
            
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String function = request.getParameter("function");

            ServletContext sc = request.getServletContext();

            if (function.equals("add")) {
                String name = request.getParameter("name");
                String date1 = request.getParameter("date");
                String price = request.getParameter("price");
                String details = request.getParameter("details");
                SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                Date date = new Date();
                try {
                    PreparedStatement st = connection.prepareStatement("insert into activities(activity_name,activity_date,activity_price,activity_detail,flag,created_date,updated_date) values(?,?,?,?,?,?,?)");
                    st.setString(1, name);
                    st.setString(2, date1);
                    st.setString(3, price);
                    st.setString(4, details);
                    st.setInt(5, 1);
                    st.setString(6, formatter.format(date).toString());
                    st.setString(7, "-");
                    st.executeUpdate();
                    response.sendRedirect("admin/activities.jsp");
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            if (function.equals("contact_us")) {
                String name = request.getParameter("yourname");
                String email = request.getParameter("email");
                String msg = request.getParameter("msg");
                SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                Date date = new Date();
                try {
                    PreparedStatement st = connection.prepareStatement("INSERT INTO CONTACT_US(NAME,EMAIL,MESSAGE,FLAG,created_date) VALUES(?,?,?,?,?)");
                    st.setString(1, name);
                    st.setString(2, email);
                    st.setString(3, msg);
                    st.setInt(4, 1);
                    st.setString(5, formatter.format(date).toString());
                    int rs = st.executeUpdate();
                    out.println("<script>");
                    out.print("if(!alert(\"Successful sent.\")) {\n"
                            + "    window.location.href = \"contact.jsp\";\n"
                            + "}");
                    out.println("</script>");
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            if (function.equals("feedback")) {
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String msg = request.getParameter("message");
                SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                Date date = new Date();
                try {
                    PreparedStatement st = connection.prepareStatement("INSERT INTO USER_FEEDBACK(USER_NAME,USER_EMAIL,USER_MESSAGE,USER_FLAG,created_date) VALUES(?,?,?,?,?)");
                    st.setString(1, name);
                    st.setString(2, email);
                    st.setString(3, msg);
                    st.setInt(4, 1);
                    st.setString(5, formatter.format(date).toString());
                    int rs = st.executeUpdate();
                    out.println("<script>");
                    out.print("if(!alert(\"Feedback Successful Submit.\")) {\n"
                            + "    window.location.href = \"feedback.jsp\";\n"
                            + "}");
                    out.println("</script>");
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            if (function.equals("cart")) {
                String activity_id = request.getParameter("activity_id");
                String activity_date = request.getParameter("activity_date1");
                String user_id = sc.getAttribute("user_id").toString();
                try {
                    PreparedStatement st2 = connection.prepareStatement("select count(1) where exists (select * from cart)");
                    ResultSet rs2 = st2.executeQuery();
                    rs2.next();
                    int sr = rs2.getInt("count(1)");
                    if (rs2.getInt("count(1)") == 0) {
                        PreparedStatement st = connection.prepareStatement("insert into cart(student_id,activity_id,activity_date) values(?,?,?)");
                        st.setInt(1, Integer.parseInt(user_id));
                        st.setInt(2, Integer.parseInt(activity_id));
                        st.setString(3, activity_date);
                        int rs = st.executeUpdate();
                        out.println("<script>");
                        out.print("if(!alert(\"Item added to cart.\")) {\n"
                                + "    window.location.href = \"index.jsp\";\n"
                                + "}");
                        out.println("</script>");
                        st.close();
                    }
                    rs2.close();
                    st2.close();
                    PreparedStatement st1 = connection.prepareStatement("Select activity_date,count(1) from cart where student_id=? and activity_id=?");
                    st1.setString(1, user_id);
                    st1.setString(2, activity_id);
                    ResultSet rs1 = st1.executeQuery();
                    String a_date = "";
                    rs1.next(); 
                        if (rs1.getInt("count(1)") == 1) {
                            a_date = rs1.getString("activity_date");
                        }
                    rs1.close();
                    if (!a_date.equals(activity_date)) {

                        PreparedStatement st = connection.prepareStatement("insert into cart(student_id,activity_id,activity_date) values(?,?,?)");
                        st.setInt(1, Integer.parseInt(user_id));
                        st.setInt(2, Integer.parseInt(activity_id));
                        st.setString(3, activity_date);
                        int rs = st.executeUpdate();
                        out.println("<script>");
                        out.print("if(!alert(\"Item added to cart.\")) {\n"
                                + "    window.location.href = \"index.jsp\";\n"
                                + "}");
                        out.println("</script>");

                    } else {
                        out.println("<script>");
                        out.print("if(!alert(\"You already selected one activity on this day..\")) {\n"
                                + "    window.location.href = \"index.jsp\";\n"
                                + "}");
                        out.println("</script>");
                    }

                } catch (Exception ep) {
                    System.out.println(ep);

                }
            }
            if (function.equals("payment")) {
                String payment = request.getParameter("payment_type");
                String user_id = request.getParameter("user_id");
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
                Date date = new Date();
                try {
                    PreparedStatement st1 = connection.prepareStatement("Select * from cart where student_id=?");
                    st1.setString(1, user_id);
                    ResultSet rs1 = st1.executeQuery();
                    while (rs1.next()) {
                        if ((rs1.getString("student_id")).equals(user_id)) {
                            PreparedStatement st = connection.prepareStatement("insert into booked_activities(user_id,activity_id, booked_date, flag, payment_type) values(?,?,?,?,?)");
                            st.setInt(1, Integer.parseInt(user_id));
                            st.setInt(2, Integer.parseInt(rs1.getString("activity_id")));
                            st.setString(3, formatter.format(date).toString());
                            st.setInt(4, 1);
                            st.setString(5, payment);
                            int rs = st.executeUpdate();
                            PreparedStatement st2 = connection.prepareStatement("delete from cart where student_id=? and activity_id=?");
                            st2.setString(1, user_id);
                            st2.setString(2, rs1.getString("activity_id"));
                            int rs2 = st2.executeUpdate();
                        }
                    }
                } catch (Exception e) {
                    System.out.print(e);
                }
                out.println("<script>");
                out.print("if(!alert(\"Thank You for bookinf activity.\")) {\n"
                        + "    window.location.href = \"booked.jsp\";\n"
                        + "}");
                out.println("</script>");
            }
            if (function.equals("deletecart")) {
                String user_id = request.getParameter("user_id");
                String activity_id = request.getParameter("activity_id");
                String activity_date = request.getParameter("activity_date1");
                try{
                PreparedStatement st = connection.prepareStatement("delete from cart where student_id=? and activity_id=? and activity_date=?");
                st.setString(1, user_id);
                st.setString(2, activity_id);
                st.setString(3, activity_date);
                int rs = st.executeUpdate();
                st.close();
                response.sendRedirect("activity_cart.jsp");
                }catch(Exception e){
                    System.out.print(e);
                }
            }
            if (function.equals("addstudent")) {
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String contact_no = request.getParameter("contact_no");
                String home_no = request.getParameter("home_no");
                String city = request.getParameter("city");
                String postcode = request.getParameter("postcode");
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
                Date date = new Date();
                try{
                 PreparedStatement st = connection.prepareStatement("insert into student_info(name, email, password, contact_no,home_no,city,postcode,created_date,user_flag) values(?,?,?,?,?,?,?,?,?)");
                 st.setString(1, name);
                 st.setString(2, email);
                 st.setString(3, password);
                 st.setString(4, contact_no);
                 st.setString(5, home_no);
                 st.setString(6, city);
                 st.setString(7, postcode);
                 st.setString(8, formatter.format(date).toString());
                 st.setInt(9, 1);
                 int rs = st.executeUpdate();
                response.sendRedirect("admin/showuser.jsp");
                }catch(Exception e){
                    System.out.print(e);
                }
            }
        }
    }

    private void Alert(String password_is_Sent_at_your_Email_Address) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
