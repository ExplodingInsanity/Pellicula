<?php
function writeMovie($index, $img, $title, $year){
	$hue = 120*sin($index/3.5)*sin($index/3.5)+70;
	echo '<div class="film" style="background-color:rgb(35,'.$hue.',35);">'; 
	echo '<img src="../media/cover/'.$img.'" height="100%">';
	$tint = $hue > 125 ? 0 : 255;
	echo '<h1 style="color:rgb('.$tint.','.$tint.','.$tint.');">'.$title.'('.$year.')</h1>';

	echo '</div>';
}
?>
