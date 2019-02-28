<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/filme.css">
<link rel="stylesheet" type="text/css" href="../css/base.css">
<title>Filme</title> </head>
<body>
<?php   include('../dbconnection.php');
	include('../php/filme.php');?>
<center><p id="title">Filme</p>
<?php
for($i = 1; $i <= 100; $i++) writeMovie($i,"alita.jpg","Alita: Battle Angel",2019);
?>
</center></body>
