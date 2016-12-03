<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/metisMenu.min.css">
    <link rel="stylesheet" href="css/sb-admin-2.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/metisMenu.min.js"></script>
    <script src="js/sb-admin-2.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDX1UwGQD4HC6zd2Kt1GU1IoiYW9DOBie0&callback=initMap" async defer/></script>
    <script src="js/googleMaps.js"></script>
    <!-- Custom JS -->
    <script src="js/script.js"></script>
</head>
<body>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="user-main.php">
                  <div class="logo-container">
                      <img class="logo-header" src="img/logo_crn.png"> TripTip
                  </div>
                </a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> Ziga <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="">Edit profile</a> </li>
                        <li role="separator" class="divider"></li>
                        <li><a href="index.php">Log out</a></li>
                    </ul>
                </li>
            </ul>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <?php include("private/controllers/country-menu.php"); ?>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Content goes here -->
        <div id="page-wrapper">
            <div class="container">
                <h1>Landmarks in Ljubljana</h1>
                <hr>
                <div class="list-group">

                  <?php include("private/controllers/landmark.php"); ?>

                </div>
                <a class="btn btn-default btn-back" href="user-places.php"><i class="fa fa-arrow-left"></i> Go back</a>
            </div>
        </div>


    </div>

    <!-- Maps Modal -->
    <div class="modal fade" id="mapsModal" tabindex="-1" role="dialog" aria-labelledby="mapsModal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
          </div>
          <div class="modal-body" style="height: 500px;">
            <div id="map" style="height: 500px;">

            </div>
        </div>
      </div>
    </div>
</body>
</html>
