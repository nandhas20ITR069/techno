<?php
	session_start();
	include('dbconnect.php');
	if(!isset($_SESSION['uid'])){
	header('Location:index.php');
	}
	$uid=$_SESSION['uid'];
	$sql="SELECT * FROM customer_order WHERE uid='$uid'";
	$run_query=mysqli_query($conn,$sql);
	$row=mysqli_fetch_array($run_query);
	$trid=$row['tr_id'];
 ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="icon" href="assets/images/slogo.jpeg" type="image/icon type">
	<title>Shopping Bird</title>
	<link rel="stylesheet" type="text/css" href="assets/bootstrap-3.3.6-dist/css/bootstrap.css">
	<style type="text/css">
		.content{
			display: none;
		}
	</style>
</head>
<body>
	<div class='content'>
		<div class="navbar navbar-default navbar-fixed-top" id="topnav">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="index.php" class="navbar-brand"><img src="assets/images/slogo.jpeg" style="height:70px;display:inline;width:100px;position:relative;top:-30px;content-align:center;"/></a>
			</div>

			
		</div>
	</div>
	<br><br><br><br><br>
	<div class='container-fluid'>
	<div class="panel panel-default">
  				<div class="panel-heading"><h1>payment method</h1></div>
  				<div class="panel-body">
				  <select class="form-control" style="font-style:italic;">
               <option value="cash on delivery" selected>cash on devlivery</option>
               <option value="credit cart">credit cart</option>
               <option value="paypal">paypal</option>
            </select>
			<div style="text-align:center;margin-top:50px;">
    				<div><a href="payment_method.php" class='btn btn-success btn-lg'>Payment</a></div>
			</div>
  				</div>
			</div>
	
	</div>
	</div>

	</div>
	</div>
	<!--Pre-loader -->
	<div class="preload"><img src="assets/images/loading.gif" style="width:400px;
    height: 400px;
    position: relative;
    top: 0px;
    left: 469px;"></div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="assets/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		
    	
    	$(".preload").fadeOut(5000, function(){
        $(".content").fadeIn(500);        	
		}); 

	</script>
</body>
</html>












