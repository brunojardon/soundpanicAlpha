extends Control

func _on_musicTimer_timeout():
	$ProgressBar.value += 1
