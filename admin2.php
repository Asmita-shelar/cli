<!DOCTYPE html>
<html>

<head>
 
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous" />
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="style.css">

  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    
    <script> 
    $(function(){
      $("#includedContent").load("navbar.html"); 
    });
    </script> 
</head>

<body style="background-image: url(adminbg2.jpg);
  background-repeat: repeat; background-size: cover;">
 

 <div id="includedContent"></div> 

 <br>
 <br>
 <br>
 <p style="text-align: right; padding-right:20px;"> <a href="admin1.php" class="btn btn-primary btn-sm" >logout</a> </p>


  <!-- Database Connection-->

  <?php
  require 'config.php';
  $query = "SELECT * FROM customer";
  $result = mysqli_query($conn, $query);
  $rows = mysqli_fetch_array($result);
  echo $rows['Cake_Name'];
  ?>

  <div class="container">
    <h1 style="font-size: 50px; letter-spacing: 5px; text-shadow: 2.5px 3.5px 3px whitesmoke; color: #2d4262; text-align: center;">Order Details</h1>
    <br>
    <div class="row">
      <div class="col">
        <div>
          <table class="table table-dark table-hover table-striped table-bordered">
            
              <tr>
                <th scope="col">Sr No.</th>
                <th scope="col">Cake Name</th>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
                <th scope="col">Email Id</th>
                <th scope="col">Contact Number</th>
                <th scope="col">Status</th>
                <th scope="col">Update Status</th>
              </tr>
            
            
              <?php
              while ($rows = mysqli_fetch_array($result)) {
              ?>
                <tr class="table-light">
                  <td><?php echo $rows['Sr_No'] ?></td>
                  <td><?php echo $rows['Cake_Name'] ?></td>
                  <td><?php echo $rows['Name'] ?></td>
                  <td><?php echo $rows['Address'] ?></td>
                  <td><?php echo $rows['Email_id'] ?></td>
                  <td><?php echo $rows['Contact_Number'] ?></td>
                  <td><?php echo $rows['Status'] ?></td>
                  <td><a href="status.php?Sn= <?php echo $rows['Sr_No']; ?>"    class="btn btn-primary" >Deliver</a></td>
                </tr>
              <?php
              }
              ?>

            
          </table>
        </div>
      </div>
    </div>
  </div>

  

</body>

</html>