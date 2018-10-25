<%@page import="java.sql.*"%>
<jsp:include page="/Header.jsp"/>

<div class="col-md-2 col-sm-2 highlight">
    <div id="myContainer" style=" width: 100%;"></div></div></div>
<div class="col-md-7 col-sm-6 highlight">
<div id="myContainer" style=" width: 100%;">           
<h1>Thanks for voting <% if(request.getAttribute("Cuser")==null){
                        }else
                        {
                            out.print(request.getAttribute("Cuser"));
                        }
                        %>!</h1>
<h2>Results till now...</h2>
<center>
    
<table class="table" style="height: 300px; width: 80%; font-size: large ">
    <thead>
      <tr>
        <th style="height: 100px; width: 40%;">Candidate Name</th>
        <th style="height: 100px; width: 30%;">Party Name</th>    
        <th style="height: 100px; width: 30%;">Total Votes</th>
      </tr>
    </thead>
    <tbody>
<%
    Connection con=null;
            Statement st=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:tcp://localhost/~/voting";
            con=(Connection) DriverManager.getConnection(url,"sa","");
            st=(Statement) con.createStatement();
            ResultSet rs = st.executeQuery("select * from votes order by vid");
            while(rs.next())
            {
                
%>
 
      <tr>
        <td><%=rs.getString("name") %></td>
        <td><%=rs.getString("party") %></td>
        <td style="color: red"><%=rs.getInt("total_votes") %></td>
      </tr> 
       <%} %>
    </tbody>
</table>
   
</center>
       
</div>
    <br/>
</div>
<jsp:include page="/footer.jsp"/>
