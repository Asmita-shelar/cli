<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    

    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="style.css">
    <script> 
    $(function(){
      $("#includedContent").load("navbar.html"); 
    });
    </script> 


</head>
<body>

  <div id="includedContent"></div> 

 
  <br>
    <div class="header">
      <h2>Login</h2>
    </div>
     
    <form method="post" action="admincheck.php">
      
      <div class="input-group">
        <label>Admin name</label>
        <input type="text" name="adminname" >
      </div>
      <div class="input-group">
        <label>Password</label>
        <input type="password" name="password">
      </div>
      <div class="input-group">
        <button type="submit" class="btn" >Login</button>
      </div>
     
    </form>


   


</body>
</html>