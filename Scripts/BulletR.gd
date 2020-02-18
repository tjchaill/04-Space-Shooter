extends RigidBody2D

export var speed = 500
onready var Explosion = load("res://Scenes/Explosion.tscn")
onready var Player = get_node("/root/Game/Player")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	contact_monitor = true
	set_max_contacts_reported(4)
	
func _physicas_process(delta):
	var colliding = get_colliding_bodies()
	for c in colliding:
		 
		if c.get_parent().name == "Enemies":
			Player.change_score(c.score)
		queue_free()
	if position.y < -10:
		queue_free()

func _integrate_forces(state):
	state.set_linear_velocity(Vector2(0,-speed))
	state.set_angular_velocity(0)# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
