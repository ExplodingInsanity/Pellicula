<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/filme.css">
<link rel="stylesheet" type="text/css" href="../css/base.css">
<title>Filme</title> </head>
<body bgcolor="#991f1f">
<center><p id="title">Filme</p>
<?php
for($i = 1; $i <= 10; $i++){
	if($i%2 == 0) echo '<div class="film rowEven">';
	else echo '<div class="film rowOdd">';
if($i%2==0) echo '<img src="../media/cover/alita.jpg" height="100%">';
else echo '<img src="../media/cover/split.jpg" height="100%">';
if($i%2==0)echo '<h1>Alita: Battle Angel(2019)</h1>';
else echo '<h1>Split(2016)</h1>';
echo '</div>';
}
?>
</center></body>
