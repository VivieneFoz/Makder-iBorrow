<?php 
 
 $db = new PDO("mysql:host=localhost; dbname=iborrow",'root', ''); 
 
 $stmt = $db -> prepare("SELECT * FROM users;");
 $stmt -> execute();

 $rows = $stmt -> fetchAll(PDO::FETCH_ASSOC);
      