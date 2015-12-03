<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
    <!---The width=device-width part set the width of the page to follow the screen-width of the device. The initial-scale=1 part sets the initial zoom level when the page is first loaded by the browser.--->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Hind:400,300,500,600,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Palanquin:100,200,300,400,500,600,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../css/registration.css">
    <title>Registration for new user</title>
</head>

<body>
   <!--navigation bar-->
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="col-xs-1">
                    <a class="navbar-brand" href="systembolaget.html"><img src="../img/main_page_icon/sb-logotype.svg"></a>
                </div>
            </div>
            <div class="row row-content">
                <div class="col-xs-12 col-sm-10">
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="#">Sök dryck</a></li>
                            <li><a href="#">Fakta &amp; nyheter </a></li>
                            <li><a href="#">Vad passar till?</a></li>
                            <li><a href="#">Om alkohol</a></li>
                            <li><a href="#">Vårt uppdrag</a></li>
                            <li><a href="#">Öppettider</a></li>
                        </ul>
                        <div class="navbar-right">
                            <div class="col-xs-1 col-sm-1">
                                <div>
                                    <!--Trigger the modal with a link -->
                                    <a type="button" id="loginButton" class="btn btn-inverse" data-toggle="modal" data-target="#login"><span class="fa fa-sign-in fa-2x"></span></a>
                                    <!-- Modal -->
                                    <div class="modal fade" id="login" role="dialog">
                                        <div class="modal-dialog">
                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">Mina sidor</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <button id="loginForm" class="btn btn-success">LOGGA IN</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="loginModal" role="dialog">
                                <div id="loginDialog" class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 style="color:red;"><span class="glyphicon glyphicon-lock"></span> Login</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form role="form" action="login.php" method="post">
                                                <div class="form-group">
                                                    <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
                                                    <input type="text" class="form-control" id="usrname" placeholder="Enter email">
                                                </div>
                                                <div class="form-group">
                                                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
                                                    <input type="text" class="form-control" id="psw" placeholder="Enter password">
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="" checked>Remember me</label>
                                                </div>
                                                <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                                            <p>Not a member? <a href="registraion.html">Sign Up</a></p>
                                            <p>Forgot <a href="forgetpassword.php">Password?</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </nav>
    <!--PHP-->
    <div class="h3">
        <h3>Skapa konto</h3>
        <h4><?php if(isset($_GET['msg'])){echo $_GET['msg'];}else {echo "&nbsp;";} ?></h4>
    </div>
    <?php
include("connection.php");
    
    if(isset($_POST['submit'])){
        if(empty($_POST['password1']) || empty($_POST['password2'])){
            header("location:registration.php?msg=Please fill in your password!");
                exit();
        }
        if (!preg_match("/^[a-zA-Z ]*$/",$_POST['userName'])) {
  header("location:registration.php?msg=Only letters and white space allowed"); 
            exit();
}
if( !preg_match("#[0-9]+#", $_POST['password1']) ) {
	header("location:registration.php?msg=Password must include at least one number!");
    exit();
}
if( !preg_match("#[a-z]+#", $_POST['password1']) ) {
	header("location:registration.php?msg=Password must include at least one letter!");
    exit();
}
if( !preg_match("#[A-Z]+#", $_POST['password1']) ) {
	header("location:registration.php?msg=Password must include at least one CAPS!");
    exit();
}
if( !preg_match("#\W+#", $_POST['password1']) ) {
	header("location:registration.php?msg=Password must include at least one symbol!");
    exit();
}
if(empty($_POST['email'])){
    header("location:registration.php?msg=Please fill in your email address!");
                exit();
        }
        
$checkEmailExistence = ("SELECT emailAdd FROM userinfo WHERE emailAdd='".$_POST['email']."'");
$check=mysqli_query($conn,$checkEmailExistence);
$result = mysqli_num_rows($check);
if ($result>0){
header("location: registration.php?msg=Email address has been registered");
            exit();
        }elseif(empty($_POST['userName'])){
    header("location:registration.php?msg=Please fill in your Username!");
                exit();
        }
$checkUsernameExistence = ("SELECT userName FROM userinfo WHERE userName='".$_POST['userName']."'");
$check=mysqli_query($conn,$checkUsernameExistence);
$result = mysqli_num_rows($check);
if ($result>0){
header("location: registration.php?msg=Username already exists");
            exit();
        }else{
    $md5password= md5($_POST['password1']);
    $actCode= rand(1000,9999);
    $md5actCode = md5($actCode);
    $regDate=date("Y-m-d");
    $insert_sql=("INSERT INTO userinfo(userName,emailAdd,regDate,password,fName,lName,Sex,address1,address2,city,country,zipcode,phone,phoneType,actCode) VALUES('".$_POST['userName']."','".$_POST['email']."','".$regDate."','".$md5password."','".$_POST['firstname']."','".$_POST['lastname']."','".$_POST['Sex']."','".$_POST['address1']."','".$_POST['address2']."','".$_POST['city']."','".$_POST['country']."','".$_POST['zipcode']."','".$_POST['phone']."','".$_POST['phonetype']."','".$md5actCode."')");
    $insertData=$conn->query($insert_sql);
    
$body="Thank you for your registration at".$_SERVER['HTTP_HOST']."\n\nHere are your login details. Username:".$_POST['userName']."\n Password:".$_POST['password1']."\n\n ***Activation Link***\n Please click this link to activate your account\n\n http://".$_SERVER['HTTP_HOST']."actCode=".$md5actCode."\n\n PLEASE DO NOT REPLY TO THIS MESSAGE. IT IS AN AUTOMATICALLY GENERATED RESPONSE FROM OUR SERVER!";
    mail($_POST['email'],"Almost done!",$body);
  header("Almost done! We've sent an email to".$_POST['email'].".Please check it up and activate your account");  
}
    }
?>

        <div class="container">
           <div class="col-xs-12">
               <div class="createAccount">Skapa konto</div>
           </div>
           <div class="col-sm-"
            <form role="form" name="registration" action="registration.php" method="post">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" class="form-control" id="username" name="userName" autofocus/>
                </div>
                <div class="form-group">
                    <label for="email">Email address:</label>
                    <input type="email" class="form-control" id="email" name="email">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password1" name="password1">(To construct a strong password you must use 3 of the following character sets and have a minimum of 10 characters: • Upper case letters (A – Z) • Lower case letters (a – z) • Numbers (0-9) • Special Characters (#$%&amp;* etc) )
                </div>
                <div class="form-group">
                    <label for="password">Re-enter your password:</label>
                    <input type="password" class="form-control" id="password2" name="password2" onChange="checkPasswordMatch();">
                </div>
                <div class="registrationFormAlert" id="divCheckPasswordMatch"></div>
                <div class="form-group">
                    <label for="firstName">First name:</label>
                    <input type="text" class="form-control" id="fname" name="firstname">
                </div>
                <div class="form-group">
                    <label for="lastName">Last name:</label>
                    <input type="text" class="form-control" id="lname" name="lastname">
                </div>
                <div class="form-group">
                    <label for="sex">Sex:</label>
                    <select class="form-control" id="sex" name="Sex">
                        <option>Male</option>
                        <option>Female</option>
                        <option>Other</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="address1">Address1:</label>
                    <input type="text" class="form-control" id="address1" name="address1">
                </div>
                <div class="form-group">
                    <label for="address2">Address2:</label>
                    <input type="text" class="form-control" id="address2" name="address2">
                </div>
                <div class="form-group">
                    <label for="city">City:</label>
                    <input type="text" class="form-control" id="city" name="city">
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="country">Country:</label>
                            <input type="text" class="form-control" id="state" name="country"> (Please fill in 2 character country code)
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="zipcode">Zipcode:</label>
                            <input type="text" class="form-control" id="zipcode" name="zipcode">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone">Phone number:</label>
                    <input type="tel" class="form-control" id="phone" name="phone">
                </div>
                <div class="form-group">
                    <label for="phonetype">Phone type:</label>
                    <select class="form-control" id="phonetype" name="phonetype">
                        <option>Mobile</option>
                        <option>Home</option>
                        <option>Work</option>
                    </select>
                </div>
                <div class="button">
                    <div class="submit">
                        <button type="submit" class="btn btn-default" name="submit">Submit</button>
                    </div>
                    <div class="forgot">
                        <a href="forgotPassword.php">Forgot password?</a>
                    </div>
                </div>


            </form>
        </div>
        <!--- JQuery library --->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
        <script>
            function checkPasswordMatch() {
                var password = $("#password1").val();
                var confirmPassword = $("#password2").val();
                if (password != confirmPassword)
                    $("#divCheckPasswordMatch").html("Passwords do not match!");
                else
                    $("#divCheckPasswordMatch").html("Passwords match.");
            }
            $(document).ready(function () {
                $("#password2").keyup(checkPasswordMatch);
            });
        </script>
</body>

</html>