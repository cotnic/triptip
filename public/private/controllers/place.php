
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

   	$sql="SELECT ci.ci_vname, pl.pl_vname, pl.pl_nlongitude, pl.pl_nlatitude FROM tb_place pl, tb_city ci WHERE ci.ci_nid = pl.ci_nid";
      

   	$stmt = $pdo->query($sql);
	while ($row = $stmt->fetch())
	{
	    echo "City :{$row['ci_vname']}  <br> ".
         "Place : {$row['pl_vname']} <br> ".
         "Longitude : {$row['pl_nlongitude']} <br> ".
         "Latitude : {$row['pl_nlatitude']} <br> ".
         "--------------------------------<br>";
	}
?>