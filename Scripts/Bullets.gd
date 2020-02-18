extends Node2D



var ready = true
onready var default_timer = $Timer.wait_time


func fire(b):
	if ready:
		add_child(b)
		ready = false
		$Timer.start()
		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Timer_timeout():
	pass 
