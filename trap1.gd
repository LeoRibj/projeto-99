extends CharacterBody2D
@onready var anim:AnimationPlayer=get_node("AnimationPlayer")

func _ready():
	anim.play("ativo")

func _on_area_2d_body_entered(body):
	body.update_health(10)
