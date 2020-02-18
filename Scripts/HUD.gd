extends Node2D

signal health_changed
signal score_changed

func _on_Player_health_changed():
	var h = get_node("/root/Game/Player").health
	$Health.text = "Health: " + str(h)


func _on_Player_score_changed():
	var s = get_node("/root/Game/Player").score
	$Score.text = "Score: " + str(s) 

#func _ready():
	#emit_signal("health_changed")
	#emit_signal("score_changed") 





