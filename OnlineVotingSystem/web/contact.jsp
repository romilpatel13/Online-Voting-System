<jsp:include page="/Header.jsp"/>
<div class="col-md-2 col-sm-2 highlight">
    <div id="myContainer" style=" width: 100%;"></div></div></div>
<div class="col-md-7 col-sm-6 highlight">
<div id="myContainer" style=" width: 100%;">   
<h2>Contact us</h2>
<h3 style="color : gray">We are here to help you. please share your valuable feedback about experiencing our site, any suggestions we most welcome...</h3>
<br/>

<div class="col-md-8 col-sm-8 highlight">
<div id="myContainer" style=" width: 100%;">

    <h2><b>Contact by</b></h2>
    <form action="SendMail" method="post">
        <div class="form-group">
    <label for="name">Email :</label>
    <input type="email" class="form-control" name="emsil" placeholder="i.e example@ca.com" required="true">
  </div>
        <div class="form-group">
    <label for="name">Name :</label>
    <input type="test" class="form-control" name="name" placeholder="i.e John Smith" required="true">
  </div>
    <div class="form-group">
    <label for="name">Message :</label>
    <textarea class="form-control" name="msg" placeholder="We welcome your suggestions" rows="5" required="true"></textarea>
  </div>
  
  <button type="submit" class="btn btn-success">Submit</button>
</form>
</div>
</div>
</div>
</div>
    
    
<jsp:include page="/footer.jsp"/>
