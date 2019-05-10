<?php
 $host = "localhost";  
 $username = "root";  
 $password = "";  
 $database = "iborrow";  
 $message = "";  
 try  
 {  
      $connect = new PDO("mysql:host=$host; dbname=$database", $username, $password);  
      $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);  
      if(isset($_POST["login"]))  
      {  
        //check field value 
           if(empty($_POST["teacherid"]) || empty($_POST["password"]))  
           {  
                $message = '<label>All fields are required</label>';  
           }  
           else  
           {  
            //select database through select queryl
                $query = "SELECT * FROM users WHERE teacherid = :teacherid AND password = :password";  
                $statement = $connect->prepare($query);  
                $statement->execute(  
                     array(  
                          'teacherid'     =>     $_POST["teacherid"],  
                          'password'     =>     $_POST["password"]  
                     )  
                );  
                $count = $statement->rowCount();  
                if($count > 0)  
                {  
                  //take teacherid in session
                     $_SESSION["username"] = $_POST["username"];
                     header("Location:/includes/login.php");
                }  
                else  
                {  
                     $message = '<label>Teacher ID or Password is wrong</label>';  
                }  
           }  
      }  
 }  
 catch(PDOException $error)  
 {  
      $message = $error->getMessage();  
 } 
  
 include('header.php')
 ?>

<main>
  <div class="container">
    <div class="row">
      <div class=" col"></div>
      <div class="center responsive col-sm-3 col-md-3 col-lg-3 bg-light rounded">
      <?php  
          if(isset($message))  
            {  
              echo '<label class="text-danger">'.$message.'</label>';  
            }  
      ?>
        <h2 class="mb-4 text-center">Log in</h2>
        <form action="" id="loginForm" class="p-2" method="post">
            <div class="form-group">
              <div class="input-group ">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon1"><i class="fas fa-user-alt"></i></span>
                </div>
                  <input type="text" name="teacherid" class="form-control"  placeholder="Faculty ID" aria-label="teacherid" aria-describedby="basic-addon1" required>
              </div>
            </div>
            <div class="form-group">
              <div class="input-group ">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon1"><i class="fas fa-user-lock"></i></span>
                </div>
                  <input type="password" name="password" class="form-control"  placeholder="Password" aria-label="Password" aria-describedby="basic-addon1" required>
              </div>
            </div>
            <div class="form-group ">
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="rem" id="customCheck">
                <label for="customCheck" class="custom-control-label ">Remember Me</label>
              </div>
            </div>
            <div class="form-group text-center ">
              <input type="submit" class="btn btn-primary btn-block" id="login" name="login" value="Login">
            </div>
        </form>
      </div>
    </div>
    <div class="col"></div>
  </div>
  </div>
</main>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</html>
