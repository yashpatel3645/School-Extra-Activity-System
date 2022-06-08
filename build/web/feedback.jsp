<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
    </head>
    <body>
        <div id="content" class="bg-container fixed_header_menu_conainer fixed_header_menu_page">
            <form action="./control"  style="text-align: center" method="get">
            <input type="hidden" name="function" value="feedback">
            <h1 style="margin-top: 60px;font-size: 60px">Feedback</h1>
            <hr style="margin-top: 30px;margin-bottom: 0px">
            <table style="margin-top: 70px">
                <tbody>
                    <tr>
                        <th style="padding-left: 130px"><a style="margin-bottom: 30px;">Name</a></th>
                        <th><input type="text" name="name" size="55px" placeholder="Enter Name" style="background-color: #4d4b4b;color: white;
			border-radius: 0.25rem;border: 1px solid #4D4B4B;margin-bottom: 15px;margin-top: 15px"></th>
                    </tr>
                    <tr>
                        <th style="padding-left: 130px;margin-bottom: 30px">Email</th>
                        <th style="margin-bottom: 30px"><input type="text" size="55px"name="email" placeholder="Enter Emaiil" style="border-radius: 0.25rem;background-color: #4d4b4b;color: white;
			border: 1px solid #4D4B4B;margin-bottom: 15px;margin-top: 15px"></th>
                    </tr>
                    <tr>
                        <th style="padding-left: 130px;margin-bottom: 30px;padding-bottom: 110px;padding-right: 40px">Message</th>
                        <th style="margin-bottom: 30px"><textarea cols="53" name="message" rows="4" style="background-color: #4d4b4b;color: white;border-radius: 0.25rem;
                              border: 1px solid #4D4B4B;margin-bottom: 15px;margin-top: 15px" placeholder="Enter Feedback"></textarea></th>
                    </tr>
                <tr>
                <td></td>
                    <td><button type="submit" class="btn btn-primary" style="float: left;margin-top: 20px;background-color:#4d4b4b !important;border-color: #4d4b4b;">Submit</button></td>
                </tr>
                </tbody>
            </table>
        </form>
        </div>
        <!-- global scripts-->
<script type="text/javascript" src="js/components.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!-- end of global scripts-->
    </body>
</html>
