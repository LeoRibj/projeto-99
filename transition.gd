extends CanvasLayer
@onready var anima:AnimationPlayer=get_node("AnimationPlayer")
@onready var lvl:Label=get_node("ColorRect/CenterContainer/level")
var patch:String=""
var quit:bool=false
func _process(delta):
	pass
func anim():
	anima.play("inicio")
func init():
	anima.play("abrir")
func level():
	lvl.text=singg.level
	anima.play("level")
	

func _on_animation_player_animation_finished(anim_name):
	match anim_name:
		"inicio":
			get_tree().change_scene_to_file(patch)
			anima.play("final")
			if quit:
				get_tree().quit()
		"level":
			get_tree().change_scene_to_file(patch)
			anima.play("level_2")
		"abrir":
			get_tree().change_scene_to_file("res://inputmenu.tscn")
			anima.play("fechar")
