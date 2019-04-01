<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	<style type="text/css">
	  body{ font: 14px sans-serif; }
	  .wrapper{ width: 350px; padding: 20px; }
	  .heading { padding: 20px; }
	  .btn_home:link { color: white; text-decoration: none; font-weight: normal }
	  .btn_home:visited { color: white; text-decoration: none; font-weight: normal }
	  .btn_home:active { color: white; text-decoration: none }
	  .btn_home:hover { color: white; text-decoration: none; font-weight: none }
	</style>
</head>
<body>
  <!--Nav Bar -->

  <nav class="navbar navbar-dark bg-dark sticky-top" >
      <div class="navbar-brand" >
        <a href="home.php" class="btn_home">
          <img src="photo/polyu.png" width="30" height="30" class="d-inline-block align-top" alt="">
          EIE3117 - Integrated Project
        </a>
      </div>
      <div class="collapse navbar-collapse">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active">
					  <a class="nav-link" href="history.php">History <span class="sr-only">(current)</span></a>
					</li>
					 <li class="nav-item active">
					  <a class="nav-link" href="profile.php">Profile <span class="sr-only">(current)</span></a>
					</li>
				</ul>
    	</div>
    	<ul class="nav justify-content-end">
      	<li class="nav-item">
      		<button onclick="window.location.href='./wallet/save-wallet.php'"type="button" class="btn btn-info">Wallet</button>


       	 <a href="logout.php" class="btn btn-danger">Sign Out</a>
      	</li>
    	</ul>
  </nav>
  <!-- Nav Bar-->


  <div class="card text-white bg-dark mb-3">
    <img class="card-img-top" src="photo/Uber-Driver-Requirements.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title"><b>Your safety is always a top priority</b></h5>
      <p class="card-text">We’re committed to helping riders and drivers get where they want to go with confidence.</p>
    </div>
  </div>

<div>
    <div class="row">
  <div class="col-sm-6">
    <div class="card border-dark text-center">
      <div class="card-body">
        <h5 class="card-title"><b>Driver</b></h5>
        <p class="card-text">Make the most of your time on the road with requests from the largest network of active riders.</p>
        <a href="./driver/driver_home.php" class="btn btn-primary">Drive</a>
      </div>
    </div>
  </div>

  <div class="col-sm-6" >
    <div class="card border-dark text-center">
      <div class="card-body">
        <h5 class="card-title"><b>Passenger</b></h5>
        <p class="card-text">Always the ride you want</p>
        <a href="./passenger/passenger_home.php" class="btn btn-primary">Ride</a>
      </div>
    </div>
  </div>
</div>
</<div>

<!-- <button type="button" onclick="window.location.href='./passenger/passenger_home.php'" class="btn btn-primary btn-lg btn-block">Passenger</button>
<button type="button" onclick="window.location.href='./driver/driver_home.php'" class="btn btn-secondary btn-lg btn-block">Driver</button> -->
</body>
</html>