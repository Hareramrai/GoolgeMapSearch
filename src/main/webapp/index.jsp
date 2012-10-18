<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.netbeans.saas.*, org.netbeans.saas.google.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Google Map Search</title>
        <link href="http://fonts.googleapis.com/css?family=Oswald" rel="stylesheet" type="text/css" />
        <link href="css/application.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="logo">
                    <h1><a href="#">Google Location Search</a></h1>
                    <p>Try for it</p>
                </div>
            </div>
            <!-- end #header -->
            <div id="menu">
                <ul>
                    <li class="current_page_item"><a href="#">Home</a></li>
                    <li><a href="https://github.com/Hareramrai/GoolgeMapSearch">GitHub</a></li>			
                    <li><a href="#">About</a></li>
                    <li class="last"><a href="http://in.linkedin.com/in/hareramrai">Contact</a></li>
                </ul>
            </div>   
            <div id="banner"><img src="images/pics01.jpg" width="1000" height="361" alt="" /></div>
            <div id="welcome">

                <h2 class="title"><a href="#">Welcome to localhost</a></h2>

                <div class="entry">

                    <p>

                    <%

                        try {
                            String address = "16 Network Circle, Menlo Park";
                            java.lang.Integer zoom = 15;
                            String iframe = "false";
                            RestResponse result = GoogleMapService.getGoogleMap(address, zoom, iframe);                            
                            out.println("The SaasService returned: "+result.getDataAsString());
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }

                    %>


                    </p>
                </div>
            </div>
        </div>
        <div id="footer">
            <p>Copyright (c) 2012 localhost.com. All rights reserved. Design by <a href="#">unknown</a>.</p>
        </div>
        <!-- end #footer -->
    </body>
</html>
