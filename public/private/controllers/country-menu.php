
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

   	$sql="SELECT co_vid, co_vname, co_vlocalname, co_pflag FROM tb_country";
      

   	$stmt = $pdo->query($sql);
	while ($row = $stmt->fetch())
	{
/**	    echo "ID :{$row['co_vid']}  <br> ".
         "name : {$row['co_vname']} <br> ".
         "Local name : {$row['co_vlocalname']} <br> ".
         "Flag : {$row['co_pflag']} <br> ".
         "--------------------------------<br>";
*/
        echo "<li>
                <a href=\"tables.html\">{$row['co_vname']} <img class=\"navbar-flag\" class=\"navbar-flag\" height=\"14\" width=\"24\" src=\"{$row['co_pflag']}\"><span class=\"fa arrow\"></span></a>
                <ul class=\"nav nav-second-level\">
                    <li>
                        <a href=\"user-cities.php\">Cities</a>
                    </li>
                    <li>
                        <a href=\"user-language.php\">Language</a>
                    </li>
                </ul>
            </li>";
	}
?>