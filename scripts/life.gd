extends Control

func _on_Timer_timeout():
	$ProgressBar.value += -10
