
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Vote </title>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    </head>
    <body>
       <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Online Voting</a>
    </div>
    <ul class="nav navbar-nav">
        <li><a href="/OnlineVotingSystem/index.jsp"><span class="glyphicon glyphicon-home"><b>&nbsp;Home</b></span></a>
      <li><a href="/OnlineVotingSystem/admin.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;Admin</a></li>
      <li><a href="/OnlineVotingSystem/result.jsp"><i style="font-size:24px" class="fa">&#xf0f6;</i>&nbsp;Result</a></li>
      <li><a href="/OnlineVotingSystem/jobs.jsp"><i style="font-size:24px" class="fa">&#xf0f6;</i>&nbsp;Jobs</a></li>
      <li><a href="/OnlineVotingSystem/media.jsp"><i style="font-size:24px" class="fa">&#xf0f6;</i>&nbsp;Media</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="/OnlineVotingSystem/registration.jsp"><span class="glyphicon glyphicon-log-in"></span> Registration</a></li>
      <li><a href="/OnlineVotingSystem/contact.jsp"><span class="glyphicon glyphicon-user"></span> Contact us</a></li>
    </ul>
  </div>
           
</nav>
        <%
    Connection con=null;
            Statement st=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:tcp://localhost/~/voting";
            con=(Connection) DriverManager.getConnection(url,"sa","");
            st=(Statement) con.createStatement();
            ResultSet rs = st.executeQuery("select * from news order by posted_date");
            while(rs.next())
            {
                
%>
        <marquee behavior="scroll" direction="left">
            <h4><%=rs.getString("news") %>
            </h4>
        </marquee>
<%}%>