<!DOCTYPE html>
<html>
<body>

 <form action="index.php" method="post">
            <input type="text" name="dir" placeholder="Enter folder" />
            <input type="submit" value="submit"/>
</form>
	
<?php
if(isset($_POST['dir'])){
	$dir = $_POST['dir'];
	$tmp = explode('+',$dir);
	if(isset($tmp[1])){
		$a=scandir(trim($tmp[0]));
		$b=scandir(trim($tmp[1]));
		$result = array_intersect($a, $b);
		array_splice($result,0,2);
		foreach($result as $img){
			echo '<img src = '.trim($tmp[0]).'/'.$img.'><br>';
		}
	}else{
	$dir = 'C:/wamp64/www/ise/'.$dir;
	$a = scandir($dir);
	array_splice($a,0,2);
	foreach($a as $img){
			echo '<img src = "'.trim($_POST['dir']).'/'.$img.'"><br>';
		}
	}	
}


?>


</body>
</html>
