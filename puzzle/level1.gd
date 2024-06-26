extends Node2D

@onready var area_2d = $Area2D
@onready var tile_map_2 = $map/TileMap2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	get_tree().reload_current_scene()




