extends CharacterBody2D
var collected:bool=false
@onready var anim:AnimationPlayer=get_node("animation")
func _physics_process(delta):
	
	
	mov()

func _on_area_2d_body_entered(body):
	body.addcoin()
	collected=true

func mov():
	if collected:
		anim.play("coletado")
		
	elif  collected==false:
		anim.play("spin")

func _on_animation_animation_finished(anim_name:String)->void:
	match anim_name:
		"coletado":
			queue_free()
