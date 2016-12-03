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
                <h1>Language</h1>
                <hr>
                <div class="well">
                    Slovene (Listeni/ˈsloʊviːn/ or /sloʊˈviːn, slə-/[6]) or Slovenian (Listeni/sloʊˈviːniən, slə-/;[7][8] slovenski jezik or slovenščina), belongs to the group of South Slavic languages. It is spoken by approximately 2.5 million speakers worldwide, the majority of whom live in Slovenia. It is the first language of about 2.1 million[citation needed] Slovenian people and is one of the 24 official and working languages of the European Union.
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <?php include("private/controllers/language.php"); ?>
                    </div>
                </div>
            </div>
        </div>


    </div>
</body>
</html>
