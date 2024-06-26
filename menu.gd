extends Control
var click1:bool=false
var tema:int=0
var tipo:int=0
var click2:bool=false
var diss:bool=false
var reset:bool=false
var coror:Color
var mater=false
var tipoesp=false
var submat=false
@onready var cont:HBoxContainer=get_node("HBoxContainer1")
@onready var cont2:HBoxContainer=get_node("HBoxContainer2")
@onready var cont3:HBoxContainer=get_node("HBoxContainer3")
@onready var lab1:Label=get_node("HBoxContainer3/facil/Label")
@onready var lab2:Label=get_node("HBoxContainer3/medio/Label")
@onready var lab3:Label=get_node("HBoxContainer3/dificil/Label")
@onready var esq:Line2D=$HBoxContainer/Line2D
@onready var dir:Line2D=$HBoxContainer/Line2D2
@onready var mei:Line2D=$HBoxContainer/Line2D3
@onready var esq2:Line2D=$HBoxContainer3/medio/Line2D
@onready var dir2:Line2D=$HBoxContainer3/medio/Line2D3
@onready var plat:Line2D=$"HBoxContainer2/2d"
@onready var puz:Line2D=$HBoxContainer2/puz
@onready var puz1:Line2D=$HBoxContainer2/puz1
@onready var mat:Line2D=$HBoxContainer2/mat
@onready var mat1:Line2D=$HBoxContainer2/mat2
@onready var lt1:Label=get_node("HBoxContainer/t1/Label")
@onready var lt2:Label=get_node("HBoxContainer/t2/Label")
@onready var lt3:Label=get_node("HBoxContainer/t3/Label")
@onready var in1:Label=get_node("PanelContainer/Label")
@onready var in2:Label=get_node("PanelContainer/Label2")
@onready var facil = $HBoxContainer3/facil

func _ready():
	coror=esq.modulate
	
func _process(delta):
	singg.tema=tema
	singg.snindex=0
	singg.sipt=0
	singg.click2=0
	click()
	estrutura()
	buttonla()
func click() -> void:
	for button in get_tree().get_nodes_in_group("b1"):
		button.pressed.connect(on_button_pressed.bind(button.name))
	for button in get_tree().get_nodes_in_group("b2"):
		button.pressed.connect(on_button_pressed.bind(button.name))
	for button in get_tree().get_nodes_in_group("b3"):
		button.pressed.connect(on_button_pressed.bind(button.name))
func on_button_pressed(button_name:String):
	match  button_name:
		"t1":
			click1=true
			tema=1
			esq.modulate=Color(0,2,1)
			dir.modulate=coror
			mei.modulate=coror
			mater=true
		"t2":
			tema=2
			click1=true
			mei.modulate=Color(0,2,1)
			esq.modulate=coror
			dir.modulate=coror
			mater=true
		"t3":
			click1=true
			tema=3
			dir.modulate=Color(0,2,1)
			esq.modulate=coror
			mei.modulate=coror
			mater=true
		"puzzle":
			click2=true
			tipo=1
			puz.modulate=Color(0,2,1)
			puz1.modulate=Color(0,2,1)
			plat.modulate=coror
			mat.modulate=coror
			mat1.modulate=coror
			tipoesp=true
			singg.tipojogo=0
		"match":
			click2=true
			tipo=2
			plat.modulate=Color(0,2,1)
			puz.modulate=coror
			puz1.modulate=coror
			mat.modulate=coror
			mat1.modulate=coror
			tipoesp=true
			singg.tipojogo=1
		"questionario":
			click2=true
			tipo=3
			mat.modulate=Color(0,2,1)
			mat1.modulate=Color(0,2,1)
			puz.modulate=coror
			puz1.modulate=coror
			plat.modulate=coror
			tipoesp=true
			singg.tipojogo=2
		"facil":
			esq2.modulate=Color(0,2,1)
			dir2.modulate=coror
			submat=true
			singg.plataforma=true
		"medio":
			dir2.modulate=Color(0,2,1)
			esq2.modulate=coror
			submat=true
			singg.plataforma=false
			
func buttonla():
	lt1.text=str(singg.tem)
	lt2.text=str(singg.tem2)
	lt3.text=str(singg.tem3)
func estrutura():
	if click1==false:
		cont2.hide()
	elif click1:
		cont2.show()
	if click2==false:
		cont3.hide()
	elif click2:
		cont3.show()


func _on_button_pressed():
	Transition.quit=true	
	Transition.anim()
	

func _on_button_2_pressed():
	if mater and tipoesp and submat:
		if singg.plataforma:
			if singg.tipojogo!=0:
				singg.level="Start level 1!!"
				Transition.level()
				Transition.patch="res://level.tscn"
		elif singg.plataforma==false:
			if singg.tipojogo==0:
				singg.level="LightBot"
				Transition.level()
				Transition.patch="res://puzzle/level1.tscn"
			elif singg.tipojogo==1:
				singg.level="Relacione!!"
				Transition.level()
				Transition.patch="res://match.tscn"
			elif singg.tipojogo==2:
				singg.level="Questionario!!"
				Transition.level()
				Transition.patch="res://quest.tscn"
		




func _on_button_3_pressed():
	Transition.anim()
	Transition.patch="res://inputquest.tscn"
