
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

   	$sql="SELECT fr_vname, fr_vlocalname, fr_psound FROM tb_fraze";
      

   	$stmt = $pdo->query($sql);
	while ($row = $stmt->fetch())
	{
/**	    echo "Word :{$row['fr_vname']}  <br> ".
         "Local language : {$row['fr_vlocalname']} <br> ".
         "Sound : {$row['fr_psound']} <br> ";
*/
        echo "<div class=\"audio-container\">
                <h3 class=\"phrase-english\">{$row['fr_vname']}</h3>
                <hr>
                <h3 class=\"phrase-translated\">{$row['fr_vlocalname']}</h3>
                <audio class=\"audio-translation\" controls>
                  <source src=\"{$row['fr_psound']}\" type=\"audio/mpeg\">
                </audio>
            </div>";
	}
?>