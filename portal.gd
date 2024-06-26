extends CharacterBody2D

@onready var anim:AnimationPlayer=get_node("AnimationPlayer")
func _process(delta):
	anim.play("portal")
