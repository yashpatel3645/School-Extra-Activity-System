<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Contact Us</title>
<link rel="shortcut icon" href="img/logo1.ico" />

    <!--global styles-->
    <link type="text/css" rel="stylesheet" href="admin/css/components.css" />
    <link type="text/css" rel="stylesheet" href="admin/css/custom.css" />
    <!-- end of global styles-->
    <link type="text/css" rel="stylesheet" href="admin/vendors/c3/css/c3.min.css" />
    <link type="text/css" rel="stylesheet" href="admin/vendors/toastr/css/toastr.min.css" />
    <link type="text/css" rel="stylesheet" href="admin/vendors/switchery/css/switchery.min.css" />
    <link type="text/css" rel="stylesheet" href="admin/css/pages/new_dashboard.css" />
    <link type="text/css" rel="stylesheet" href="#" id="skin_change" />
    <link type="text/css" rel="stylesheet" href="admin/css/pages/portlet.css"/>
    <link type="text/css" rel="stylesheet" href="admin/css/pages/advanced_components.css"/>
</head>
<body>
        <div id="content" class="bg-container">
    <form style="text-align: center;" action="./control" method="get">
	<br>
	<h1>CONTACT</h1><hr>
	<h2>We'd <i class="fa fa-heart-o" aria-hidden="true"></i> to help!</h2>
        <div class="container">
        <div class="row">
	<div class="col-lg-6" style="margin-top: 74px;">
	<table align="right">
		<tr>
		<td style="padding-right: 75px;font-weight: bold;">Name</td>
                <td><input type="text" size="55px" name="yourname" autofocus="autofocus" placeholder="Name" style="background-color: #4d4b4b;color: white;
			border-radius: 0.25rem;border: 1px solid #4D4B4B;"><p></p></td>
		</tr>
		<tr>
		<td style="padding-right: 75px;font-weight: bold;">Email</td>
			<td><input type="text" size="55px" name="email" placeholder="Email" style="border-radius: 0.25rem;background-color: #4d4b4b;color: white;
			border: 1px solid #4D4B4B;"><p></p></td>
		</tr>
		<tr>
		<td style="padding-bottom: 139px;padding-right: 75px;font-weight: bold;">Message</td>
                <td><textarea cols="53" rows="5" name="msg" placeholder="Message" style="background-color: #4d4b4b;color: white;border-radius: 0.25rem;
			border: 1px solid #4D4B4B;"></textarea><br><br></td>
		</tr>
		<tr>
		<td></td>
                <td>
                    <input type="hidden" name="function" value="contact_us">
                    <input type="submit" value="Send"  class="btn btn-primary" style="background-color:#4d4b4b !important;border-color: #4d4b4b;padding-right: 35px;
                           padding-left: 35px;">
                </td>
		</tr>
	</table>
	</div>
	<div class="col-lg-6" style="font-size: 16px;margin-top: 74px;">
	<table align="center">
		<tr><td><i class="fa fa-map-marker" aria-hidden="true" style="color:#4d4b4b;margin-right: 36px;"></i></td>
			<td><label style="font-weight: bold;"> London</label></td></tr>
		<tr><td><i class="fa fa-phone" aria-hidden="true" style="color:#4d4b4b;margin-right: 36px;"></i></td>
			<td><label style="font-weight: bold;">07379847858</label></td></tr>
		<tr><td><i class="fa fa-envelope" aria-hidden="true" style="color:#4d4b4b;margin-right: 36px;"></i></td>
			<td><label style="font-weight: bold;">schooactivities@gmail.com</label></td></tr>
		<tr><td colspan="2" style="color: #4d4b4b"><hr style="border: 0.8px solid #4d4b4b;"></td><tr>	
	</table>
		<a href="https://www.facebook.com/profile.php?id=100007937709791" target="_blank"><i class="fa fa-facebook-official" aria-hidden="true" style="color:#4d4b4b;"></i>&nbsp;</a>
		<a href="https://www.linkedin.com/in/yash-patel-2a2312109/" target="_blank"><i class="fa fa-linkedin-square" aria-hidden="true" style="color:#4d4b4b;"></i>&nbsp;</a>
		<a href="https://twitter.com/YashPatelM" target="_blank"><i class="fa fa-twitter-square" aria-hidden="true" style="color:#4d4b4b;"></i>&nbsp;</a>
		<a href="https://plus.google.com/112999411460700401485" target="_blank"><i class="fa fa-google-plus" aria-hidden="true" style="color:#4d4b4b;"></i>&nbsp;</a>
		<a href="https://www.instagram.com/king_heart_yash/?hl=en" target="_blank"><i class="fa fa-instagram" aria-hidden="true" style="color:#4d4b4b;"></i>&nbsp;,</a>
	</div>
	</div>
	</div>
        
</form>
        </div>
    <!-- global scripts-->
<script type="text/javascript" src="admin/js/components.js"></script>
<script type="text/javascript" src="admin/js/custom.js"></script>
<!-- end of global scripts-->
</body>
</html>