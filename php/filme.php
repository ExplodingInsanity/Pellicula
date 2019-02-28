<?php
function writeMovie($index, $img, $title, $year){
	$hue = 120*sin($index/3.5)*sin($index/3.5)+70;
	echo '<div class="film" style="background-color:rgb(35,'.$hue.',35);">'; 
	echo '<img src="../media/cover/'.$img.'">';
	$tint = $hue > 125 ? 0 : 255;
	echo '<h1 class="titluFilm" style="color:rgb('.$tint.','.$tint.','.$tint.');">'.$title.'('.$year.')</h1>';

	echo '<div class="detalii" height="20">';
	echo '<img src="../media/cover/'.$img.'" height="20">';
	echo '<p class="detaliuFilm">Action, Adventure, Romance</p>';
	echo '<img src="../media/cover/'.$img.'" height="20">';
	echo '</div>';
	echo '<p class="descFilm">A deactivated female cyborg is revived, but cannot remember anything of her past life and goes on a quest to find out who she is.</p>';
	echo '<table class="actoriContainer"> 
	<tr height="100">
	<td> <img src="../media/cover/'.$img.'"> </td>
	<td> <img src="../media/cover/'.$img.'"> </td>
	</tr>
	<tr>	
	<td> <img src="../media/cover/'.$img.'"> </td>
	<td> <img src="../media/cover/'.$img.'"> </td>
	</tr>
	</table>';
	echo '</div>';
}
?>
