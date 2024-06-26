extends CharacterBody2D
@onready var colii:CollisionShape2D=get_node("Area2D/CollisionShape2D")
@onready var anim:AnimationPlayer=get_node("AnimationPlayer")
var player =false
func _physics_process(delta):
	if player==false:
		anim.play("stay2")

func _on_area_2d_body_entered(body):
	player=true
	anim.play("stay")
	colii.disabled=true
func _on_animation_player_animation_finished(anim_name):
	match anim_name:
		"stay":
			anim.play("stay2")
			singg.dialog=1
			singg.click=0
