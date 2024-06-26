extends CharacterBody2D
@onready var animation_player = $AnimationPlayer
const speed = 100
var lista:Array[String]
var directional = ""
var acender=false
var passou=false
@onready var label =$comands/PanelContainer/lol
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text()
	
func movie():
	for i in range(lista.size()):
		if lista[i]=="cima":
				position.y -= 15
				animation_player.play("up")
		elif lista[i]=="direita":
			position.x += 15
			animation_player.play("direita")
		elif lista[i]=="esquerda":
			position.x -= 15
			animation_player.play("esquerda")
		elif lista[i]=="baixo":
			position.y += 15
			animation_player.play("down")
		await get_tree().create_timer(1).timeout
func text():
	var texto=""
	for i in lista:
		texto+=i+" "
	label.text=texto
func _on_cima_pressed():
	lista.append("cima")
	
func _on_direita_pressed():
	lista.append("direita")
	

func _on_esquerda_pressed():
	lista.append("esquerda")
	

func _on_baixo_pressed():
	lista.append("baixo")


func _on_texture_button_pressed():
	lista.clear()


func _on_texture_button_2_pressed():
	movie()


func _on_area_2d_body_entered(body):
	body.nextlevel()


func _on_area_2d_body_exited(body):
	passou= false
