extends CharacterBody2D
@onready var anim:AnimationPlayer=get_node("AnimationPlayer")
@onready var text:Sprite2D=get_node("Sprite2D")
@onready var paredco:RayCast2D=get_node("RayCast2D")

var speed=200
var direction=1
func _physics_process(delta):
	movie()
	anima()
func movie():
	velocity.x = speed*direction
	move_and_slide()
func anima():
	if velocity.x<0:
		
		text.flip_h=true
		paredco.scale.x*=-1
	if velocity.x>0:
		text.flip_h=false
		paredco.scale.x*=-1
	if velocity.x!=0:
		anim.play("ativo")
	if paredco.is_colliding():
		anim.play("stay")
		


func _on_animation_player_animation_finished(anim_name):
	match anim_name:
		"stay":
			text.flip_h
			direction*=-1


func _on_area_2d_body_entered(body):
	body.update_health(10)
