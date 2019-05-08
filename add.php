<?php

	$con = mysqli_connect('127.0.0.1','root','');

	if(!$con)
	{
		echo 'Not connect to the server';
	}

	if(!mysqli_select_db($con,'additem'))
	{
		echo 'Database not selected';
	}

	$grpno = $_POST['grpno'];
	$idno = $_POST['idno'];
	$name = $_POST['name'];
	$itemname = $_POST['itemname'];
	$qnty = $_POST['qnty'];
	$rem = $_POST['rem'];

	$sql = "INSERT INTO item (groupNo, idNo, borrowersName, item, qnty, borrowedOn, remarks) VALUES ('$grpno','$idno','$name','$itemname','$qnty',NOW(),'$rem')";

	if(!mysqli_query($con,$sql))
	{
		echo 'Unable to insert data';
	}
	else
	{
		echo 'Data successfully inserted';
	}

	header("refresh:2; url=add-item.html");


?>