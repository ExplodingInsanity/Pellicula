<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/filme.css">
<link rel="stylesheet" type="text/css" href="../css/base.css">
<title>Filme</title> </head>
<body>
<?php   include('../dbconnection.php');
	include('../php/actori.php');?>
<center><a href="../index.php"><p id="title">Actori</p></a></center>
<?php
$result1 = mysqli_query($connection,"Select * from actori");
$i=0;
while($actor = mysqli_fetch_assoc($result1)){
	$filme = mysqli_query($connection,"select * from roluri join filme on filme.id = roluri.id_film and roluri.id_actor = ".$actor['id']);
	$caca = mysqli_fetch_all($filme, MYSQLI_ASSOC);
	writeActor(++$i,$actor['id'],$actor['poza'],$actor['nume'],null,null,null,$caca);
}
?>
</body>
