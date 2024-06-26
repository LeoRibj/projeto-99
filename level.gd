extends Node2D
@onready var quest = $quest

@onready var dialog:CanvasLayer=get_node("dialog")
# Called when the node enters the scene tree for the first time.
func _ready():
	singg.vida=10
	singg.mana=0
	singg.points=0
	singg.click2=0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	singg.level="Start level 2!!"
	Transition.level()
	Transition.patch="res://level2.tscn"
	singg.vidalocal=singg.vida
	singg.sipt=singg.points
	singg.snindex=2

func _on_area_2d_2_body_entered(body):
	
	get_tree().reload_current_scene()


func _on_area_2d_3_body_entered(body):
	body.update_health(10)
