<%@page import="java.sql.*"%>
<jsp:include page="/Header.jsp"/>
<h2>Voting is Online</h2>
<h4>Currently logged : <%= (String)request.getAttribute("Vid") %></h4>
<center>
    <form class="form-horizontal" action="SaveVotes" method="post">
<table class="table" style="height: 300px; width: 80%; ">
    <thead>
      <tr>
        <th style="height: 100px; width: 40%;">Candidate Name</th>
        <th style="height: 100px; width: 20%;">Party Name</th>
        <th style="height: 100px; width: 20%;">Symbol</th>
        <th style="height: 100px; width: 20%;">Choice</th>
      </tr>
    </thead>
    <tbody>
<% if(request.getAttribute("Vid")==null){
    response.sendRedirect("index.jsp");
                        }
                        %>
                        <%
    Connection con=null;
            Statement st=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:tcp://localhost/~/voting";
            con=(Connection) DriverManager.getConnection(url,"sa","");
            st=(Statement) con.createStatement();
            ResultSet rs = st.executeQuery("select * from votes order by vid");
            int i=0;
            int no[] = new int[3];
            while(rs.next())
            {
%>

      <tr>
        <td><%=rs.getString("name") %></td>
        <td><%=rs.getString("party") %></td>
        <td><img src="images/2.jpg" alt="Candidate1"
		style="height: 50px; width: 60%; "></td>
        <td><input type="radio" name="optradio" value="<%=rs.getInt("vid") %>"></td>
      </tr>  
       <%} %>
    </tbody>
</table>
    <br/>
    <button type="Submit" class="btn btn-success"><h4>I'm Done !</h4>  </button>
    </form>
</center>
       
<jsp:include page="/footer.jsp"/>
