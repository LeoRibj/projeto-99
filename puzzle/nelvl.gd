extends CharacterBody2D
@onready var sprite_2d = $Sprite2D


# Called when the node enters the scene tree for the first time.
func nextlevel():
	sprite_2d.modulate=Color.DARK_GREEN
	singg.level="voce conseguiu"
	Transition.level()
	Transition.patch="res://menu.tscn"
