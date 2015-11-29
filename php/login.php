<!DOCTYPE html>
<html> <!-- html code starts -->
<head>
    <link rel="stylesheet" href="../css-for-intro/intro.css">
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
    <!---The width=device-width part set the width of the page to follow the screen-width of the device. The initial-scale=1 part sets the initial zoom level when the page is first loaded by the browser.--->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Hind:400,300,500,600,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../css/registration.css">
    <!--- JQuery library --->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
    <title>Login</title>
</head>
<body>
	<h1>Login</h1>
	
<?php //php code starts
include ("connection.php"); // enable connection to mysql server
$epost=$_POST['epost']; //Declare variables, these contain input information from the fields of the html form
$password=$_POST['password'];
$md5pass = md5($password);
 
		if (isset ($_POST['login'])) { // if the register button is pressed do this:
			if (empty ($_POST['epost'])) { //if the email field is empty, display error message
			header ("location: login.php?msg=Enter an email address");
			exit();
		}
			if (empty($_POST['password'])){ //if password field is empty 
			header ("Location: login.php?msg=The password is empty!"); //display error message
			exit();
		}
		
			 
		
		$userExists = "SELECT password, epost FROM siteUsers	WHERE epost='".$epost."'"; /* variable userExists contains userid and epost data from the database 
	from the epost field that matches the epost variable*/
	$result=$conn->query($userExists); //check the database and put the contents into variable result
	$count=mysqli_num_rows($result); // variable count contains  the number of rows in variable result 
		if ($count>0){ // if greater than 0 then put the contents of specified database fields into two variables userId and userEpost
		$row =mysqli_fetch_assoc($result);
		$passId = $row['password'];
		$userEpost = $row['epost'];
		
		
		if($md5pass != $passId){
			echo "Could not login!";
		} else { 
			
			echo "You are now logged in!"; // display message that an email has been sent
		
		 }
	}
}

if(isset($_GET['msg'])){ // msg is stored in the $_GET variable if it is displayed in the url echo on the page
		echo $_GET['msg'];} else //or echo space
		{echo "&nbsp;";}
?>
			<div class="container">
            <form role="form" name="login" action="login.php" method="post">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" class="form-control" id="username" name="userName" autofocus/>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <div class="button">
                    <div class="submit">
                        <button type="submit" class="btn btn-default" name="submit">Submit</button>
                    </div>
                    <div class="forgot">
                        <a href="forgotPassword.php">Forgot password?</a>
                    </div>
                    <div class="registration">
                        <a href="registration.php">Not registerted? Register here!</a>
                    </div>
                </div>
</body>
</html> <!-- end of html file -->