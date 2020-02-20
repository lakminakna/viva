<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <title>ParKing</title>

  <link rel="shortcut icon" href="images/icon/logo.png" type="image/x-icon">
  <link rel="icon" href="images/icon/logo.png" type="image/x-icon" >

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/a0408e60a8.js" crossorigin="anonymous"></script>

  @include('login.style_1')
  @include('login.style_2')

</head>
<body>
  <div class="flex-center position-ref full-height">
    <div class="top-right links">
      <i class="fas fa-arrow-left"></i><a href="{{ url('/') }}">BACK</a>
    </div>
    <div class="container">
      <!-- <a href="driverpage"> -->
      <div onclick="window.location='http://localhost:1000/ld';">
      <div class="items">
        <div class="icon-wrapper">
          <i class="fas fa-car"></i>
          <!-- <i class="fa fa-th-list"></i> -->
        </div>
        <div class="project-name">
          <p>Driver</p>
        </div>
      </div></div>
      <!-- <a href="landownerpage"> -->
      <div onclick="window.location='http://localhost:1000/ll';">
      <div class="items">
        <div class="icon-wrapper">
          <i class="fas fa-landmark"></i>
          <!-- <i class="fa fa-th-large"></i> -->
        </div>
        <div class="project-name">
          <p>Landowner</p>
        </div>
      </div></div>
      <!-- <a href="adminpage"> -->
      <div onclick="window.location='http://localhost:1000/la';">
      <div class="items">
        <div class="icon-wrapper">
          <i class="fas fa-user"></i>
          <!-- <i class="fa fa-th-list"></i> -->
        </div>
        <div class="project-name">
          <p>Admin</p>
        </div>
      </div></div>
    </div>
  </div>
</body>
</html>
