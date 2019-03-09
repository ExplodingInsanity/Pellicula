<?php
function writeActor($index,$id, $poza, $name, $year,$genres, $duration,&$movies){
	echo '<a name="'.$id.'"></a>';
	$hue =floor( 120*sin($index/3.5)*sin($index/3.5)+70);
	echo '<div class="film" style="background-color:rgba(35,'.$hue.',35,0.5);">';
       	echo '<div style="overflow: auto;">';	
	echo '<img src="../media/actor/'.$poza.'">';
	$tint = $hue > 125 ? 0 : 255;
	echo '<h1 class="titluFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');"><u>'.$name.'</u></h1>';
	echo '<div class="detalii" height="20">';
	echo '<img src="../media/genre.png" height="20">';
	echo '<p class="detaliuFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');">'.$genres.'</p>';
	echo '<img src="../media/clock.png" height="20">';
	echo '<p class="detaliuFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');">'.$duration.'</p>';
	echo '</div>';
	echo '</div>';
	echo '<table class="actoriContainer"> 
	<tr height="50">';
	$i=0;
	foreach($movies as $row) {
		echo '<td>
		<a href="filme.php#'.$row['id'].'"><div>
		<img src="../media/cover/'.$row['cover'].'" height="100" style="padding:0px; margin:0px;">
		<p style="color:rgb('.$tint.','.$tint.','.$tint.');">'.
		$row['titlu'] . ' - ' . $row['rol'].'</p><a href="filme.php#'.$row['id'].'">';
		if($i%2==1) echo '</tr><tr height="50">';
		$i++;
	}
	echo '</tr></div></a>
	</table>
	</div>';
}
?>
