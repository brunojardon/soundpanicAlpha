extends Control



func _on_Timer_timeout():
	$ProgressBar.value += 30
	$TextureProgress.value += 30
