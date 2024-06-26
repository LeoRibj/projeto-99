extends CharacterBody2D
var speed:float = 100
var direction = -1
var distancatk:float=83
var vida:int =3
var player_ref=null
var gravity:float = 50
var morto=false
@export var atke:bool=false
@onready var texture:Sprite2D=get_node("Sprite2D")
@onready var anim:AnimationPlayer=get_node("AnimationPlayer")
@onready var paredco:RayCast2D=get_node("direction")
@onready var hit:AnimationPlayer=get_node("hit")
@onready var atkb:CollisionShape2D=get_node("atk/atkbase")
@onready var playerbody:CollisionShape2D=get_node("Area2D/CollisionShape2D")

func _physics_process(delta):
	if morto:
		return
	if player_ref==null or player_ref.morto:
		
		if atke==false:
			move()
			animation()
			return
	if player_ref:
		atk()
		atke=true
		return
	
func move()->void:
	if is_on_floor():
		velocity.x = speed*direction
	elif not is_on_floor():
		velocity.y+=gravity
	move_and_slide()
func atk()->void:
		anim.play("atk")
		
func animation() ->void:
	if velocity.x<0:
		texture.flip_h=true
		atkb.position.x=-40
		playerbody.position.x=-30
		paredco.scale.x*=-1
	if velocity.x>0:
		texture.flip_h=false
		atkb.position.x=40
		playerbody.position.x=30
		paredco.scale.x*=-1
	if velocity.x!=0:
		anim.play("run")
	if paredco.is_colliding():
		anim.play("stay")
	if velocity.y!=0:
		anim.play("cair")	


func _on_animation_player_animation_finished(anim_name):
	match anim_name:
		"stay":
			texture.flip_h
			direction*=-1
		"death":
			queue_free()
		"atk":
			atke=false




func update_health(value : int) ->void:
	vida-=value
	if vida <= 0:
		morto=true
		anim.play("death")
		
		return
	hit.play("hit")


func _on_atk_body_entered(body):
	body.update_health(1) # Replace with function body.


func _on_area_2d_body_entered(body):
	player_ref=body # Replace with function body.


func _on_area_2d_body_exited(body):
	player_ref=null


func _on_area_2d_2_body_entered(body):
	if body.velocity.y>0:
		update_health(1)
		body.velocity.y=-350
