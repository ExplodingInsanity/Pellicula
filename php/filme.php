<?php
function writeMovie($index, $img, $title, $year,$genres, $duration, $description, &$actors){
	$hue =floor( 120*sin($index/3.5)*sin($index/3.5)+70);
	echo '<div class="film" style="background-color:rgb(35,'.$hue.',35);">';
       	echo '<div style="overflow: auto;">';	
	echo '<img src="../media/cover/'.$img.'">';
	$tint = $hue > 125 ? 0 : 255;
	echo '<h1 class="titluFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');"><u>'.$title.'</u> ('.$year.')</h1>';
	echo '<div class="detalii" height="20">';
	echo '<img src="../media/genre.png" height="20">';
	echo '<p class="detaliuFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');">'.$genres.'</p>';
	echo '<img src="../media/clock.png" height="20">';
	echo '<p class="detaliuFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');">'.$duration.'</p>';
	echo '</div>';
	echo '<p class="descFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');">'.$description.'</p>';
	echo '</div>';
	echo '<table class="actoriContainer"> 
	<tr height="50">';
	$i=0;
	foreach($actors as $row) {
		echo '<td> <img src="../media/actor/'.$row['poza'].'" height="100" style="padding:0px; margin:0px;"><p style="color:rgb('.$tint.','.$tint.','.$tint.');">'.
		$row['nume'] . ' - ' . $row['rol'].'</p>';
		if($i%2==1) echo '</tr><tr height="50">';
		$i++;
	}
	echo '</tr>
	</table>
	</div>';
}
?>
