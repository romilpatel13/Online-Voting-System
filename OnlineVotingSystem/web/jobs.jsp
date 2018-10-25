<%@page import="java.sql.*"%>
<jsp:include page="/Header.jsp"/>
<h2>Voting is Online</h2>
<h4>Currently logged : <% if((String)session.getAttribute("email1")==null){
                        }else
                        {
                            out.print((String)session.getAttribute("email1"));
                        }
                        %></h4>
<center>
    <form class="form-horizontal" action="JobCandidates" method="post">
<table class="table" style="height: 300px; width: 80%; ">
    <thead>
      <tr>
        <th style="height: 100px; width: 20%;">Job Title</th>
        <th style="height: 100px; width: 30%;">Description</th>
        <th style="height: 100px; width: 10%;">Vacancy</th>
        <th style="height: 100px; width: 20%;">Salary</th>
        <th style="height: 100px; width: 20%;">Apply</th>
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
            ResultSet rs = st.executeQuery("select * from jobs order by postdate");
          
            while(rs.next())
            {
%>

      <tr>
        <td><%=rs.getString("title") %></td>
        <td><%=rs.getString("desc") %></td>
        <td><%=rs.getString("vac") %></td>
        <td><%=rs.getString("salary") %></td>
        <td><button type="submit" class="btn btn-danger" name="btn" value="<%=rs.getInt("id") %>">Apply</button></td></td>
      </tr>  
       <%} %>
    </tbody>
</table>
    </form>
</center>
<jsp:include page="/footer.jsp"/>
