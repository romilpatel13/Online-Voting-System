<jsp:include page="/Header.jsp"/>
<div class="col-md-3 col-sm-2 highlight">
    <div id="myContainer" style=" width: 100%;"></div></div></div>
<div class="col-md-6 col-sm-6 highlight">
<div id="myContainer" style=" width: 100%;">

    <h2><b>Registration Form</b></h2>
    <form action="Registraion" method="post">
    <div class="form-group">
    <label for="name">Name :</label>
    <input type="text" class="form-control" name="name" placeholder="ie. Firstname Middlename Lastname" required="true">
  </div>
  <div class="form-group">
    <label for="email">Email address :</label>
    <input type="email" class="form-control" name="email" required="true" placeholder="ie. example@gmail.com">
  </div>
    <div class="form-group">
    <label for="email">Birth Date :</label>
    <input type="date" class="form-control" name="date" required="true" placeholder="Birth Day" max="2000-01-01">
  </div>
    <div class="form-group">
    <label for="pno">Passport No. :</label>
    <input type="text" class="form-control" name="pno" placeholder="ie. XX1234567" required="true">
  </div>
    
    <div class="form-group">
    <label for="cno">Citizenship Card No. :</label>
    <input type="text" class="form-control" name="cno" placeholder="ie. 12 digit no." required="true">
  </div>
        
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" name="pwd" required="true">
  </div>
    <div class="form-group">
    <label for="pwd">Confirm Password:</label>
    <input type="password" class="form-control" name="cpwd" required="true">
  </div>
  
  <button type="submit" class="btn btn-success">Register</button>
</form>
</div>
    <br/>
</div>

      
<jsp:include page="/footer.jsp"/>