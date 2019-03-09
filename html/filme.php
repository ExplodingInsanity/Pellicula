<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/filme.css">
<link rel="stylesheet" type="text/css" href="../css/base.css">
<title>Filme</title> </head>
<body>
<?php   include('../dbconnection.php');
	include('../php/filme.php');?>
<center><a href="../index.php"><p id="title">Filme</p></a></center>
<?php
$result1 = mysqli_query($connection,"Select * from filme");
$i=0;
while($film = mysqli_fetch_assoc($result1)){
	$actori = mysqli_query($connection,"Select roluri.rol,actori.nume,actori.poza,roluri.id_actor,actori.id from roluri join actori on actori.id = roluri.id_actor and roluri.id_film = ".$film['id']);
	$caca = mysqli_fetch_all($actori, MYSQLI_ASSOC);
	foreach($caca as $columns){
	echo $columns['id'] . ' - ' . $columns['nume'];	
	}
	echo '<br>';
	writeMovie(++$i,$film['id'],$film['cover'],$film['titlu'],$film['an'],$film['gen'],$film['durata'],$film['descriere'],$caca);
}
?>
</body>
