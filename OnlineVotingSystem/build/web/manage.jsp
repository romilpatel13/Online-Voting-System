<%@page import="java.sql.*"%>
<jsp:include page="/Header.jsp"/>
<div class="col-md-1 col-sm-1 highlight">
    <div id="myContainer" style=" width: 100%;"><br/><a href="candidates.jsp" class="btn btn-success">Go Back</a> </div></div>
<div class="col-md-5 col-sm-7 highlight">
<div id="myContainer" style=" width: 100%;">

    <h2><b>Delete Candidate </b></h2>
    <form action="ManageCan" method="post">
    <table class="table" style="height: 300px; width: 80%; font-size: large ">
    <thead>
      <tr>
        <th style="height: 100px; width: 40%;">Candidate Name</th>
        <th style="height: 100px; width: 20%;">Party Name</th>    
        <th style="height: 100px; width: 20%;">Total Votes</th>
        <th style="height: 100px; width: 20%;">Action</th>
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
        <td>
            <button type="submit" class="btn btn-danger" name="btn" value="<%=rs.getInt("vid") %>">Delete</button></td>
      </tr> 
       <%} %>
    </tbody>
</table>
</form>
</div>
</div>
  



   <div class="col-md-6 col-sm-1 highlight">
    <div id="myContainer" style=" width: 100%;">
        <h2><b>Delete News </b></h2>
        
        <form action="ManageNews" method="post">
    <table class="table" style="height: 300px; width: 80%; font-size: large ">
    <thead>
      <tr>
        <th style="height: 100px; width: 60%;">News Content</th>
        <th style="height: 100px; width: 30%;">Posted Date</th>  
        <th style="height: 100px; width: 10%;">Action</th>
      </tr>
    </thead>
    <tbody>
<%
    Connection con1=null;
            Statement st1=null;
            Class.forName("org.h2.Driver");
            String url1="jdbc:h2:tcp://localhost/~/voting";
            con1=(Connection) DriverManager.getConnection(url1,"sa","");
            st1=(Statement) con1.createStatement();
            ResultSet rs1 = st1.executeQuery("select * from news order by posted_date");
            while(rs1.next())
            {
                
%>
 
      <tr>
        <td><%=rs1.getString("news") %></td>
        <td><%=rs1.getDate("posted_date") %></td>
        <td>
            <button type="submit" class="btn btn-danger" name="btn" value="<%=rs1.getInt("id") %>">Delete</button></td>
      </tr> 
       <%} %>
    </tbody>
</table>
</form>
        
    </div>
       <br/>
       <br/>
       <br/>
       <br/>
       <br/></div>
       
<jsp:include page="/footer.jsp"/>
