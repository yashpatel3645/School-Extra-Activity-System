package com.dao;
import java.sql.*;
import java.text.SimpleDateFormat;

public class connection {
    public static final Connection getconnection(){
        Connection connection=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        }catch(Exception e){
            System.out.println(e);
        }
        return connection;
    }
    public static final ResultSet getsinglerow(int id){
        ResultSet rs=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from activities where activity_id=?");
        st.setInt(1, id);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet getcontactus(int flag){
        ResultSet rs=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from contact_us where flag=?");
        st.setInt(1, flag);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet getuser(int flag){
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from student_info where user_flag=?");
        st.setInt(1, flag);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet getfeedback(int flag){
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from user_feedback where user_flag=?");
        st.setInt(1, flag);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final int activeuser(String id,int flag){
        int i=0;
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        java.util.Date date = new java.util.Date();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("update student_info set user_flag=? where email=?");
        st.setInt(1, flag);
        st.setString(2, id);
        i = st.executeUpdate();
        }catch(Exception e){
             System.out.print(e);
        }
        return i;
    }
    
    public static final ResultSet show_activities(int flag) throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from activities where flag=? order by activity_date");
        st.setInt(1, flag);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet give_count(int flag) throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select count(*) from activities where flag=?");
        st.setInt(1, flag);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet count_activities_cart(int user_id) throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select count(*) from cart where student_id=?");
        st.setInt(1, user_id);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet show_user_cart(int flag, int activity_id) throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from activities where flag=? and activity_id=? order by activity_date DESC");
        st.setInt(1, flag);
        st.setInt(2, activity_id);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet give_cart(String student_id) throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from cart where student_id=?");
        st.setString(1, student_id);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet booked_activities(String student_id) throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from booked_activities where user_id=?");
        st.setString(1, student_id);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet give_one_activity(int activity_id) throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from activities where activity_id=?");
        st.setInt(1, activity_id);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
     public static final ResultSet booked_activities() throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from booked_activities");
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
     public static final ResultSet getsingleuser(int flag, int id){
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select * from student_info where user_flag=? and user_id=?");
        st.setInt(1, flag);
        st.setInt(2, id);
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
     public static final ResultSet count_students(){
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select count(1) from student_info");
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet count_booked_activities() throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select count(1) from booked_activities");
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
    public static final ResultSet count_activities() throws SQLException{
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/seas", "root", "root");
        PreparedStatement st = connection.prepareStatement("Select count(1) from activities");
        rs = st.executeQuery();
        }catch(Exception e){
            System.out.print(e);
        }
        return rs;
    }
}