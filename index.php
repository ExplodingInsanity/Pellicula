<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/base.css">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<title> Pellicula  </title> </head>
<body>
<center><p id="title">Pellicula</p>
<img src="./media/def.png">
<?php include('dbconnection.php');?>
</center>
<div class="descContainer">
<p class='heading'>Descopera informatii despre actori celebri cu Pellicula</p>
<img class="descImage" width="34%" src="./media/placeholder1.png">
<?php
$sql = "Select count(id) from citate";
$result = mysqli_query($connection, $sql); 
$nrCitate = mysqli_fetch_array($result)[0]; 
echo '<p class="description width="66%"> &emsp;&emsp; In acest moment, site-ul indexeaza un numar de '.$nrCitate.' actori. <br>
&emsp;&emsp; Despre fiecare actor se vor prezenta date esentiale precum numele, data nasterii, o scurta biografie, dar si o serie de filme in care acesta a jucat. <br>
&emsp;&emsp; Daca stii deja ce persoana cauti, apasa pe butonul de mai jos, si vei primi o lista cu actorii din baza de date Pellicula.
</p>';
?>
<a href="./html/actori.php"><img id="btnActori" class="button" src="./media/btnActori.png" width="33%"></a>
</div>
<div class="descContainer">
<p class='heading'>Sau alege filmul si noi iti spunem restul</p>
<img class="descImage" width="34%" src="./media/placeholder2.png">
<p class="description" width="66%">Daca vrei sa afli informatii despre un actor care a jucat intr-un anumit film, suntem aici sa te ajutam. <br> Impreuna cu informatii despre film vei gasi si o lista cu actorii care se gasesc in baza de date Pellicula, cu un link care te va duce la lista de actori.<br>
Sau daca pur si simplu ai nevoie de un film si ai nevoie de o recomandare, apasa butonul de mai jos pentru sugestii.
</p>
<a href="./html/filme.php"><img id="btnFilme" class="button" src="./media/btnFilme.png" width="33%"></a>
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

<style>
#btnActori:hover{content:url("./media/btnActori_1.png");}
#btnFilme:hover{content:url("./media/btnFilme_1.png");
</style>
</body>
</html>
