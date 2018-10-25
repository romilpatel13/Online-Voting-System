<jsp:include page="/Header.jsp"/>
<div class="col-md-2 col-sm-2 highlight">
    <div id="myContainer" style=" width: 100%;"> </div></div>
<div class="col-md-4 col-sm-7 highlight">
<div id="myContainer" style=" width: 100%;">

    <h2><b>Register Candidate</b></h2>
    <form action="CandidateReg" method="post" enctype="multipart/form-data" >
    <div class="form-group">
    <label for="name">Name :</label>
    <input type="text" class="form-control" name="name" placeholder="ie. Firstname Middlename Lastname" required="true">
    </div>
    <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" name="email" required="true" placeholder="ie. example@gmail.com">
    </div>
    
    <div class="form-group">
    <label for="pno">Party Name :</label>
    <input type="text" class="form-control" name="party" placeholder="Party Name" required="true">
    </div>
    
    <div class="form-group">
    <label for="cno">Symbol :</label>
    <input type="file" class="form-control" name="pic" accept="image/*" required="true">
  </div>
        
  
  <button type="submit" class="btn btn-success">Register</button>
</form>
    <br/>
    <br/>
 <a href="manage.jsp" class="btn btn-success">Manage</a>   
<a href="uploadjobs.jsp" class="btn btn-success">Upload Jobs</a>    

</div> 
</div>
<div class="col-md-4 col-sm-2 highlight">
    <div id="myContainer" style=" width: 100%;">
        <h2><b>Upload News</b></h2>
    <form action="NewsUpload" method="post" >
    <div class="form-group">
    <label for="news">News :</label>
    <textarea class="form-control"  name="news" placeholder="Enter news you wanna post" rows="5" required="true"></textarea>
    </div>
        <button type="submit" class="btn btn-success">Post News</button>
    </form>
</div><br/>
        <br/>
        <br/>
</div><br/>

