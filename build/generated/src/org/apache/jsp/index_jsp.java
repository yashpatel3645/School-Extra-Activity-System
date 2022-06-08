package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import java.util.ArrayList;
import com.dao.*;
import java.sql.*;
import com.dao.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html class=\"no-js\" lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/logo1.ico\" />\r\n");
      out.write("\r\n");
      out.write("        <!--global styles-->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"admin/css/components.css\" />\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"admin/css/custom.css\" />\r\n");
      out.write("        <!-- end of global styles-->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"admin/vendors/c3/css/c3.min.css\" />\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"admin/vendors/toastr/css/toastr.min.css\" />\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"admin/vendors/switchery/css/switchery.min.css\" />\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"admin/css/pages/new_dashboard.css\" />\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"#\" id=\"skin_change\" />\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"admin/css/pages/portlet.css\"/>\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"admin/css/pages/advanced_components.css\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body class=\"menu-affix fixed\">\r\n");
      out.write("<!--        <div class=\"preloader\" style=\" position: fixed;\r\n");
      out.write("             width: 100%;\r\n");
      out.write("             height: 100%;\r\n");
      out.write("             top: 0;\r\n");
      out.write("             left: 0;\r\n");
      out.write("             z-index: 100000;\r\n");
      out.write("             backface-visibility: hidden;\r\n");
      out.write("             background: #ffffff;\">\r\n");
      out.write("            <div class=\"preloader_img\" style=\"width: 200px;\r\n");
      out.write("                 height: 200px;\r\n");
      out.write("                 position: absolute;\r\n");
      out.write("                 left: 48%;\r\n");
      out.write("                 top: 48%;\r\n");
      out.write("                 background-position: center;\r\n");
      out.write("                 z-index: 999999\">\r\n");
      out.write("                <img src=\"admin/img/loader.gif\" style=\" width: 40px;\" alt=\"loading...\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>-->\r\n");
      out.write("        <div class=\"bg-dark\" id=\"wrap\">\r\n");
      out.write("            <div id=\"top\">\r\n");
      out.write("                <!-- .navbar -->\r\n");
      out.write("                <nav class=\"navbar navbar-static-top navbar-fixed-top\">\r\n");
      out.write("                    <div class=\"container-fluid\">\r\n");
      out.write("                        <a class=\"navbar-brand text-xs-center\" href=\"index.jsp\">\r\n");
      out.write("                            <h4 class=\"text-white\"><img src=\"admin/img/logow.png\" class=\"admin_img\" alt=\"logo\"> School Extra Activities System</h4>\r\n");
      out.write("                        </a>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Toggle Button -->\r\n");
      out.write("                        <div class=\"text-xs-right xs_menu\">\r\n");
      out.write("                            <button class=\"navbar-toggler hidden-xs-up\" type=\"button\" data-toggle=\"collapse\"\r\n");
      out.write("                                    data-target=\"#nav-content\">\r\n");
      out.write("                                â°\r\n");
      out.write("                            </button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- Nav Content -->\r\n");
      out.write("                        <!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("                        <div class=\"topnav dropdown-menu-right float-xs-right\">\r\n");
      out.write("                            <div class=\"btn-group\">\r\n");
      out.write("                                <div class=\"user-settings no-bg\">\r\n");
      out.write("                                    ");

                                        String toggle = "modal", target = "#just_me", login = "Login", display="none", margin="0px";
                                        int cartno = 0;
                                        if (application.getAttribute("user_name") == null) {
                                            toggle = "modal";
                                            target = "#just_me";
                                            login = "Login";
                                        } else if (toggle != "dropdown") {
                                            toggle = "dropdown";
                                            target = "";
                                            login = application.getAttribute("user_name").toString();
                                            display = "block";
                                            margin = "65px";
                                            try{
                                            ResultSet rs = connection.count_activities_cart(Integer.parseInt(application.getAttribute("user_id").toString()));
                                            rs.next();
                                            cartno = rs.getInt(1);
                                            rs.close();
                                            }catch(Exception e){
                                                System.out.print(e);
                                            }
                                        }
                                    
      out.write("\r\n");
      out.write("                                    <a href=\"activity_cart.jsp\"><b><label style=\"position: absolute; left: 8px\">");
      out.print(cartno);
      out.write("</label></b>\r\n");
      out.write("                                        <img src=\"admin/img/cart.png\" class=\"admin_img2\"></a>\r\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("                                    <label style=\"color: white !important;font-family: sans-serif;margin-top: 10px; font-size: 13px;\"><a href=\"logout.jsp\" \r\n");
      out.write("                                                 style=\"color: white;display: ");
      out.print(display);
      out.write("\">Logout</a></label>\r\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\r\n");
      out.write("                                    <button type=\"button\" id=\"aria\" class=\"btn btn-default no-bg micheal_btn\" data-toggle=\"");
      out.print(toggle);
      out.write("\" data-target=\"");
      out.print(target);
      out.write("\" aria-expanded=\"false\">\r\n");
      out.write("                                        <img src=\"admin/img/admin.png\" class=\"admin_img2 rounded-circle avatar-img\" alt=\"avatar\"> <strong>");
      out.print(login);
      out.write("</strong>\r\n");
      out.write("                                        \r\n");
      out.write("                                    </button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                                        <center>\r\n");
      out.write("                        <div class=\"collapse navbar-toggleable-sm col-lg-6 hidden-md-down float-xl-right  top_menu\"\r\n");
      out.write("                             id=\"nav-content\" style=\"right: ");
      out.print(margin);
      out.write("\">\r\n");
      out.write("                            <ul class=\"nav navbar-nav top_menubar\">\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link text-white\" href=\"index.jsp\">\r\n");
      out.write("                                        <i class=\"fa fa-home\"></i> <span class=\"quick_text\">Home</span>\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\" style=\"display: ");
      out.print(display);
      out.write("\">\r\n");
      out.write("                                    <a class=\"nav-link text-white\" href=\"booked.jsp\">\r\n");
      out.write("                                        <i class=\"fa fa fa-edit\"></i> <span class=\"quick_text\" >Booked Activities</span>\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link text-white\" href=\"aboutus.jsp\">\r\n");
      out.write("                                        <i class=\"fa fa-map-marker\"></i> <span class=\"quick_text\">About Us</span>\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link text-white\" href=\"contact.jsp\">\r\n");
      out.write("                                        <i class=\"fa fa-phone\"></i> <span class=\"quick_text\">Contact Us</span>\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link text-white\" href=\"feedback.jsp\">\r\n");
      out.write("                                        <i class=\"fa fa-commenting\"></i> <span class=\"quick_text\">Feedback</span>\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>`\r\n");
      out.write("                        </div>\r\n");
      out.write("                                        </center>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"modal fade modal-fade-in-scale-up jest_me\" tabindex=\"-1\" id=\"just_me\" role=\"dialog\" aria-labelledby=\"modalLabeljust\" aria-hidden=\"true\">\r\n");
      out.write("                <div class=\"modal-dialog\" role=\"document\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("                        <div class=\"modal-header bg-primary\" style=\"background-color:#4d4b4b !important\">\r\n");
      out.write("                            <h2 class=\"modal-title text-white\" id=\"modalLabeljust\">Login</h2>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <form action=\"./control\" method=\"post\">\r\n");
      out.write("                            <input type=\"hidden\" name=\"function\" value=\"user_login\">\r\n");
      out.write("                            <div class=\"modal-body\">\r\n");
      out.write("                                <table>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td><label style=\"padding-right: 28px;\">Email</label></td>\r\n");
      out.write("                                        <td><input type=\"text\" name=\"username\" autofocus=\"autofocus\" \r\n");
      out.write("                                                   id=\"username\" placeholder=\"Enter Usernamee\" size=\"40px\" style=\"border-radius: 0.25rem;border: 1px solid #4D4B4B;\"></td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td><label style=\"padding-right: 28px;\">Password</label></td>\r\n");
      out.write("                                        <td><input type=\"password\" name=\"password\" \r\n");
      out.write("                                                   id=\"password\" placeholder=\"Enter Password\" size=\"40px\" style=\"border-radius: 0.25rem;border: 1px solid #4D4B4B;\"> </td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </table>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"modal-footer\">\r\n");
      out.write("                                <table>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td style=\"float: right;margin-left: 30px;\"><a style=\"color: #4d4b4b\" href=\"\" class=\"btn btn-default no-bg micheal_btn\" data-toggle=\"modal\" data-target=\"#just_me1\">Forgot password?</a></td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </table>\r\n");
      out.write("                                <input type=\"submit\"  class=\"btn btn-primary\" style=\"background-color:#4d4b4b !important;\r\n");
      out.write("                                       border-color: #4d4b4b\" value=\"Login\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"modal fade modal-fade-in-scale-up jest_me\" tabindex=\"-1\" id=\"just_me1\" role=\"dialog\" aria-labelledby=\"modalLabeljust\" aria-hidden=\"true\">\r\n");
      out.write("                <div class=\"modal-dialog\" role=\"document\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("                        <div class=\"modal-header bg-primary\" style=\"background-color:#4d4b4b !important\">\r\n");
      out.write("                            <h2 class=\"modal-title text-white\" id=\"modalLabeljust\">Forgot Password</h2>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <form action=\"./control\" method=\"post\" class=\"form-horizontal  login_validator\" id=\"form_block_validator\">\r\n");
      out.write("                            <input type=\"hidden\" name=\"function\" value=\"user_forgot\">\r\n");
      out.write("                            <div class=\"modal-body\">\r\n");
      out.write("                                <div class=\"form-group row\" style=\"margin-bottom: 0px\">\r\n");
      out.write("                                    <div class=\"col-lg-4 text-lg-right\">\r\n");
      out.write("                                        <label for=\"email2\" class=\"form-control-label\">E-mail *</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-lg-4\">\r\n");
      out.write("                                        <input type=\"email\" id=\"email2\" name=\"Email2\" class=\"form-control\" style=\"padding-right: 0px\">\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"modal-footer\">\r\n");
      out.write("                                <input type=\"submit\"  class=\"btn btn-primary\" style=\"background-color:#4d4b4b !important;\r\n");
      out.write("                                       border-color: #4d4b4b\" value=\"Submit\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- global scripts-->\r\n");
      out.write("        <script type=\"text/javascript\" src=\"admin/js/components.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"admin/js/custom.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"admin/js/pages/modals.js\"></script>\r\n");
      out.write("        <!-- end of global scripts-->\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Activities</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container-fluid\" style=\"margin-top: 70px\">\r\n");
      out.write("            ");
  
                try{
                ResultSet rs = connection.show_activities(1);
                int a = 3;
                while (rs.next()) {
                    
                if(a%3==0){
                    System.out.println("<div class=\"row\" style=\"margin-top: 35px;margin-bottom: 16px\">");
                }
            
      out.write("\r\n");
      out.write("            <form action=\"./control\">\r\n");
      out.write("                <input type=\"hidden\" name=\"function\" value=\"cart\">\r\n");
      out.write("                <input type=\"hidden\" name=\"activity_id\" value=\"");
      out.print(rs.getString("activity_id"));
      out.write("\">\r\n");
      out.write("                <input type=\"hidden\" name=\"activity_date1\" value=\"");
      out.print(rs.getString("activity_date"));
      out.write("\">\r\n");
      out.write("            <div class=\"col-md-3\" style=\"margin-left: 100px; margin-bottom: 15px;\">\r\n");
      out.write("                <div class=\"card payment\" >\r\n");
      out.write("                    <div class=\"card-header text-xs-center\" style=\"background-color: #4D4B4B; color: white\">\r\n");
      out.write("                        ");
      out.print(rs.getString("activity_name"));
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"bg-white\">\r\n");
      out.write("                        <div class=\"card-block \">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"text-xs-center\">\r\n");
      out.write("                                <p><strong>");
      out.print(rs.getString("activity_date"));
      out.write("</strong>\r\n");
      out.write("\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <hr>\r\n");
      out.write("                                <p>");
      out.print(rs.getString("activity_detail"));
      out.write("</p>\r\n");
      out.write("                                <hr>\r\n");
      out.write("                                <div>£");
      out.print(rs.getString("activity_price"));
      out.write("</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        ");

                            if (application.getAttribute("user_name") == null || application.getAttribute("user_name").toString().equals("logout")) {
                        
      out.write("\r\n");
      out.write("                        <div class=\"card-footer bg-white text-xs-center\">\r\n");
      out.write("                            <button type=\"button\" id=\"aria\" class=\"btn btn-default micheal_btn\" data-toggle=\"");
      out.print(toggle);
      out.write("\" data-target=\"");
      out.print(target);
      out.write("\" aria-expanded=\"false\" \r\n");
      out.write("                                    style=\"background-color: #158e06 !important; color: white;padding-left: 30px;padding-right: 30px !important; margin-right: 0px\">Add to cart</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        ");

                        } else {
                        
      out.write("\r\n");
      out.write("                        <div class=\"card-footer bg-white text-xs-center\">\r\n");
      out.write("                            <button class=\"btn btn-block get_plan_warning \" style=\"background-color: #158e06; color: white\">Add to cart</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        ");

                            }
                        
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            </form>\r\n");
      out.write("            ");

                if(a%3==0){
                    System.out.println("</div>");
                }
                
                a++;
                    
                }
}catch(Exception e){
System.out.print(e);
}
            
      out.write("\r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- global scripts-->\r\n");
      out.write("        <script type=\"text/javascript\" src=\"admin/js/components.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"admin/js/custom.js\"></script>\r\n");
      out.write("        <!-- end of global scripts-->\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
