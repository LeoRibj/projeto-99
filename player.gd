extends CharacterBody2D
var gravity:float = 500
var speed:float= 200
var morto:bool=false
var coins=0
var vida:int
var mana:int
@onready var animation: AnimationPlayer = get_node("animate")
@onready var texture: Sprite2D = get_node("texture")
var jumpt:bool = true
@onready var atkbase:CollisionShape2D = get_node("Area2D/atkbase")
@onready var atkesp:CollisionShape2D = get_node("Area2D2/especial")
@onready var stun:CollisionShape2D = get_node("Area2D3/stun")
@onready var hit:AnimationPlayer=get_node("hit")
@onready var coll:CollisionShape2D=get_node("colision")
@onready var mod:Label=get_node("CanvasLayer/Sprite2D3/moedas")
@onready var viii:ProgressBar=get_node("CanvasLayer/ProgressBar")
@onready var manabar:ProgressBar=get_node("CanvasLayer/ProgressBar2")
var parado:bool=true
var posso_atk:bool = true
var pular:bool=false
var especial:bool=true
var stunn:bool=true

func _process(delta):
	UI()
	vida=singg.vida
	mana=singg.mana
	if singg.mana>=10:
		singg.mana=10
	if singg.vida>=10:
		singg.vida=10
func _physics_process(delta) -> void:
	if morto or stunn==false or especial==false or posso_atk==false:
		return
	if not is_on_floor():
		velocity.y+=gravity*delta
		pular=true
	else:
		pular=false
		
	movie()
	animate()
	attack()
	
func movie() ->void:
	var direction = Input.get_axis("left","right")
	
	if Input.is_action_just_pressed("jump") and is_on_floor() :
		velocity.y=(-350)
			
		
	if direction:
		velocity.x=direction*speed
		
	else:
		velocity.x = move_toward(velocity.x,0,speed)
	move_and_slide()
	
func animate() ->void:
	if velocity.x < 0:
		texture.flip_h = true
		atkbase.position.x=-40
		atkesp.position.x=-72
		stun.position.x=-40
	elif velocity.x>0:
		texture.flip_h = false
		atkbase.position.x=40
		atkesp.position.x=72
		stun.position.x=40
	
	if velocity.x!=0 and velocity.y==0:
		animation.play("run")
		return
	if velocity.y>0:
		animation.play("cair")
		return
	if velocity.y<0:
		animation.play("jump")
		return
	animation.play("stop")
	
func attack()->void:
	if Input.is_action_just_pressed("atacar") and posso_atk and pular==false and especial and stunn:
		parado=false
		posso_atk = false
		pular=true
		animation.play("atabases")
	if Input.is_action_just_pressed("especial")and especial and pular==false and posso_atk and stunn and mana>=10:
		singg.mana-=10
		animation.play("especial")
		parado=false
		especial=false
		pular=true
	if Input.is_action_just_pressed("stun")and stunn and pular==false and posso_atk and especial and mana>=5:
		singg.mana-=5
		parado=false
		stunn=false
		pular=true
		animation.play("stun")
func _on_animate_animation_finished(anim_name):
	match anim_name:
		"atabases":
			posso_atk=true
			parado=true
			
		"especial":
			parado=true
			especial=true
			
		"stun":
			parado=true
			stunn=true
		"death":
			get_tree().reload_current_scene()
		

func UI():
	mod.text=str(singg.points)
	manabar.value=mana
	viii.value=vida
	
func update_health(value : int) ->void:
	singg.vida-=value
	if singg.vida <= 0:
		morto=true
		animation.play("death")
		atkbase.set_deferred("disabled",true)
		stun.set_deferred("disabled",true)
		atkesp.set_deferred("disabled",true)
		coll.set_deferred("disabled",true)
		return
	hit.play("hit")
func addcoin():
	singg.points+=1
func _on_area_2d_body_entered(body):
	body.update_health(1)
	
func _on_area_2d_2_body_entered(body):
	body.update_health(10)


func _on_area_2d_3_body_entered(body):
	body.update_health(2)
