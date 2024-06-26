extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	singg.points=singg.sipt
	singg.vida=singg.vidalocal
	singg.click2=8

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_body_entered(body):
	body.update_health(10)


func _on_portal_body_entered(body):
	singg.level=str(singg.points)
	Transition.level()
	Transition.patch="res://menu.tscn"
