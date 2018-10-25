<%@page import="java.sql.*"%>
<jsp:include page="/Header.jsp"/>
<div class="col-md-3 col-sm-2 highlight">
    <div id="myContainer" style=" width: 100%;"></div><a href="candidates.jsp" class="btn btn-success">Go Back</a></div></div>
<div class="col-md-6 col-sm-6 highlight">
<div id="myContainer" style=" width: 100%;">

    <h2><b>Upload jobs</b></h2>
    <form action="UploadJob" method="post">
    <div class="form-group">
    <label for="name">Job Title :</label>
    <input type="text" class="form-control" name="jt" placeholder="ie. Sr Java Developer" required="true">
  </div>
  <div class="form-group">
    <label for="email">Description :</label>
    <input type="text" class="form-control" name="desc" required="true" placeholder="ie. Skill Requirements">
  </div>
    <div class="form-group">
    <label for="email">Vacancies :</label>
    <input type="text" class="form-control" name="vac" required="true" placeholder="No of seats available" >
  </div>
    <div class="form-group">
    <label for="pno">Salary :</label>
    <input type="text" class="form-control" name="sal" placeholder="ie. 4.5-6.5 PA" required="true">
  </div>
  
  <button type="submit" class="btn btn-success">Upload</button>
</form>
</div>
    <br/>
    <table class="table" style="height: 300px; width: 80%; ">
    <thead>
      <tr>
        <th style="height: 100px; width: 20%;">Candidate Email</th>
        <th style="height: 100px; width: 30%;">Applied for</th>
        <th style="height: 100px; width: 10%;">Job ID</th>
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
            ResultSet rs = st.executeQuery("select * from jobcan order by APPLIED_DATE");
          
            while(rs.next())
            {
%>

      <tr>
        <td><%=rs.getString("email") %></td>
        <td><%=rs.getString("jobtitle") %></td>
        <td><%=rs.getString("jobid") %></td>
        </tr>  
       <%} %>
    </tbody>
</table>
</div>

      
<jsp:include page="/footer.jsp"/>