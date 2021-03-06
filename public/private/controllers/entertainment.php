
<?php
	$host = 'localhost';
   	$port = '3036';
	$db   = 'triptip';
	$user = 'root';
	$pass = 'toor';
	$charset = 'utf8';

	$dsn = "mysql:host=$host;port=$port;dbname=$db;charset=$charset";
	$opt = [
		PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
	    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
	    PDO::ATTR_EMULATE_PREPARES   => false,
	];
	

	try {
	    $pdo = new PDO($dsn, $user, $pass, $opt);
	} catch(PDOException $e) {
	    echo $e->getMessage();
	}

   	$sql="SELECT pl.pl_vname, pl.pl_vlocalname, pl.pl_nlongitude, pl.pl_nlatitude, pl.pl_vdescription, pl.pl_pimg FROM tb_place pl, tb_type ty WHERE ty.ty_nid = pl.ty_nid AND ty.ty_nid = 5";
      

   	$stmt = $pdo->query($sql);
	while ($row = $stmt->fetch())
	{
/**	    echo "City :{$row['pl_vname']}  <br> ".
         "Longitude : {$row['pl_vlocalname']} <br> ".
         "Longitude : {$row['pl_nlongitude']} <br> ".
         "Latitude : {$row['pl_nlatitude']} <br> ".
         "Picture path : {$row['pl_vdescription']} <br> ".
         "Picture path : {$row['pl_pimg']} <br> ".
         "--------------------------------<br>";
*/
        echo "<a class=\"list-group-item\">
                      <div class=\"row\">
                          <div class=\"col-xs-2 hidden-xs\">
                              <img src=\"{$row['pl_pimg']}\" class=\"img-responsive img-thumbnail\">
                          </div>
                          <div class=\"col-xs-8\">
                              <h3 class=\"list-group-item-heading\">{$row['pl_vname']}<br>
                              <small>{$row['pl_vlocalname']}</small></h3>
                              <p class=\"list-group-item-text\">{$row['pl_vdescription']}</p>
                          </div>
                          <div class=\"col-xs-2\">
                              <big><strong>1/5</strong></big>
                          </div>
                      </div>
                  </a>";
	}
?>