
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

   	$sql="SELECT ci_vname, ci_vlocalname, ci_nlongitude, ci_nlatitude, ci_pcity FROM tb_city";
      

   	$stmt = $pdo->query($sql);
	while ($row = $stmt->fetch())
	{
/**	    echo "City :{$row['ci_vname']}  <br> ".
         "Localname : {$row['ci_vlocalname']} <br> ".
         "Longitude : {$row['ci_nlongitude']} <br> ".
         "Latitude : {$row['ci_nlatitude']} <br> ".
         "Picture path : {$row['ci_pcity']} <br> ".
         "--------------------------------<br>";
*/
        echo "<hr>
                <div class=\"image-container\">
                    <a href=\"user-places.php\">
                        <img class=\"img-fluid img-center img-thumbnail rounded\" src=\"{$row['ci_pcity']}\" alt=\"\">
                        <h3 class=\"image-container-title\">{$row['ci_vname']}</h3>
                    </a>
                </div>";
	}
?>