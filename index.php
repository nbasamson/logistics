<?php
session_start();
 include 'includes/header2.php'; 
 if(isset($_SESSION['UID']))
 header('location:pages/index.php');
 ?>
<style>
	#title1 {
		display: block;
		width:50%;
		height:90px;
		background-color: green;
		padding:1px;
		border-radius:5px;
		position:fixed;
		top:30%;
		z-index: 1000px;
	}
	#main-bod{
		    background-color: #393737;
		    background-repeat: no-repeat;
			background-size: cover;
			display:flex;
			height:calc(100%);
			width:calc(100%);
			align-items:center;
			justify-content:center;
			top: 0;
			margin:unset
	}


</style>
<body id="main-bod">
		<div class="col-lg-4" style="background-color:#5e5d58;">
			<h3 style="text-align: center; color:#a3abb8; padding-bottom: 50; font-weight:600; text-shadow: 5px 2px 4px #4b5f82; padding-bottom:0px">LOGISTICS MANAGEMENT SYSTEM</h3>
			<div class="panel panel-info" style="background:none; color:white;">
				<div class="panel-heading" style="text-align: center; font-size: 25px; font-weight:700; background-color: #61615f; color:white;"><i class='bx bxs-parking' style="border-style: solid"></i>
					Log-in
				</div>
				<div class="panel-body">

				<div class="col-sm-12">
										<div class="alert alert-success" id="correct"> Successfully Log in!</div>
										<div class="alert alert-danger" id="error"> Error Log in </div>
									
					 <div class="container-fluid">
					 <form class="form-horizontal" method="POST" id="login_form">
									<div class="form-group" id="form-login">
										<label for="" class="control-label">Username</label>
										<input class="form-control" id="user" name="user" type="text">
									</div>
									<div class="form-group">
										<label for="" class="control-label">Password</label>
										<input type="password" name="pass" id="pass" class="form-control">
									</div>
											<div class="form-group" id="msg">
											<div class="col-sm-8 col-sm-offset-8">
											<button type="submit" class="btn btn-info">Login</button> <br>
											</div>
										</div>
								
									</div>
								</form>
					 </div>         	
					        
				</div>
			</div>
		</div>
</body>
<script>
		jQuery(document).ready(function(){
					jQuery(document).ready(function(){
						$("#correct").hide();
						$("#error").hide();
						jQuery("#login_form").submit(function(e){
								e.preventDefault();
								var formData = jQuery(this).serialize();
								$.ajax({
									type: "POST",
									url: "includes/login.php",
									data: formData,
									success: function(html){
									if(html=='true' )
									{
										$('#error').hide();
										$("#correct").slideDown();
										var delay = 2000;
										setTimeout(function(){	window.location = 'pages/index.php?page=home';   }, delay);  
									}else{
									$('#error').slideDown();	
										var delay = 2000;
										setTimeout(function(){	$('#error').slideUp();  }, delay);  
									}
									}
								});
									return false;
						});
						});
						});
	
</script>