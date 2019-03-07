<?php
function writeMovie($index, $img, $title, $year, &$actori, &$roluri, $count){
	$hue =floor( 120*sin($index/3.5)*sin($index/3.5)+70);
	echo '<div class="film" style="background-color:rgb(35,'.$hue.',35);">';
       	echo '<div style="overflow: auto;">';	
	echo '<img src="../media/cover/'.$img.'">';
	$tint = $hue > 125 ? 0 : 255;
	echo '<h1 class="titluFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');">'.$title.'('.$year.')</h1>';

	echo '<div class="detalii" height="20">';
	echo '<img src="../media/cover/'.$img.'" height="20">';
	echo '<p class="detaliuFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');">Action, Adventure, Romance</p>';
	echo '<img src="../media/cover/'.$img.'" height="20">';
	echo '</div>';
	echo '<p class="descFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');"> A deactivated female cyborg is revived, but cannot remember anything of her past life and goes on a quest to find out who she is.</p>';
	echo '</div>';
	echo '<table class="actoriContainer"> 
	<tr height="50">';
	for($i=0; $i<$count;$i++) {
		echo '<td> <img src="../media/cover/'.$img.'" height="100" style="padding:0px; margin:0px;"><p style="color:rgb('.$tint.','.$tint.','.$tint.');">'.
		$actori[$i] . ' - ' . $roluri[$i].'</p>';
		if($i%2==1) echo '</tr><tr height="50">';
	}
	echo '</tr>
	</table>
	</div>';
}
?>
