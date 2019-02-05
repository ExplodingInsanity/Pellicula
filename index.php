<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/index.css">
<title> Pellicula  </title> </head>
<body bgcolor="#991f1f">
<center><p id="title">Pellicula</p>
<img src="def.png">
<?php include('dbconnection.php');?>
</center>
<div class="descContainer">
<p class='heading'>Descopera informatii despre actori celebri cu Pellicula</p>
<img class="descImage" src="placeholder1.png">
<?php
$sql = "Select count(id) from citate";
$result = mysqli_query($connection, $sql); 
$nrCitate = mysqli_fetch_array($result)[0]; 
echo '<p class="description"> In acest moment, site-ul indexeaza un numar de '.$nrCitate.' actori. <br>
Despre fiecare actor se vor prezenta date esentiale precum numele, data nasterii, o scurta biografie, dar si o serie de filme in care acesta a jucat. <br>
Daca stii deja ce persoana cauti, apasa pe butonul de mai jos, si vei primi o lista cu actorii din baza de date Pellicula.
</p>
<a href=""><img src="placeholderbutton.png" width="1000" height="200"></a>';
?>
</div>
<div class="descContainer">
<p class='heading'>Sau alege filmul si noi iti spunem restul</p>
<img class="descImage" src="placeholder2.png">
<p class="description">Daca vrei sa afli informatii despre un actor care a jucat intr-un anumit film, suntem aici sa te ajutam. Impreuna cu informatii despre film vei gasi si o lista cu actorii care se gasesc in baza de date Pellicula, cu un link care te va duce la lista de actori.<br>
Sau daca pur si simplu ai nevoie de un film si ai nevoie de o recomandare, apasa butonul de mai jos pentru sugestii.
</p>
<a href=""><img class="button" src="placeholderbutton.png" width="1000" height="200"></a>
</div>
<?php
# iau numarul de citate
$sql = "Select count(id) from citate";
$result = mysqli_query($connection, $sql);
$nrCitate = mysqli_fetch_array($result)[0];

# aleg un citat random
$nrRandom = rand(1,$nrCitate);
$sql = "Select * from citate limit 2 offset " . ($nrRandom-1);
$result = mysqli_query($connection, $sql);
$citat = mysqli_fetch_assoc($result);
echo '<p id="citat">'.$citat['text'].'</p>';
?>
</body>
</html>
