extends Node
@export var quiz=preload("res://match/temas/temas.tres")
@onready var color_rect = $content/ColorRect
@export var color_cer:Color
@export var color_err:Color
var buttons :Array[Button]
var textures:Array[TextureRect]
@onready var quest:Label= $content/question/question
@onready var question = $"."
var cont:int
@onready var button = $Button
@onready var texture_rect = $content/question/PanelContainer/TextureRect
var path:String=""
var tema
var respondido=false
func _process(delta):
	if singg.plataforma and singg.mat == 0:
		question.visible=false
	if singg.plataforma and singg.mat == 1:
		question.visible=true
	
		
var index:int
func _ready():
	if singg.plataforma:
		button.visible=false
		color_rect.visible=false
	elif singg.plataforma== false:
		button.visible=true
		color_rect.visible=true
	index=singg.index
	for button in $content/buttons.get_children():
		buttons.append(button)
	for texture in $content/HBoxContainer.get_children():
		textures.append(texture)
	if singg.tema == 1:
		quiz=preload("res://match/temas/temas.tres")
	elif singg.tema==2:
		quiz= preload("res://quest/temas/tema2.tres")
	elif singg.tema==3:
		quiz=preload("res://quest/temas/tema3.tres")
	
	load_quiz()
	
func load_quiz()->void:
	index=singg.snindex
	if index >= quiz.itens.size():
		question.visible=false
		singg.level="voce acertou "+str(cont)+" perguntas"
		Transition.level()
		Transition.patch="res://menu.tscn"
		return
	quest.text = quiz.itens[index].question
	
	texture_rect.texture=quiz.itens[index].imaggens
	for i in buttons.size():
		buttons[i].text= quiz.itens[index].num_img[i]
		
		buttons[i].pressed.connect(butt_clicado.bind(buttons[i]))
	for i in textures.size():
		textures[i].texture=quiz.itens[index].imagens_SELECT[i]
func butt_clicado(button)->void:
	if quiz.itens[index].numcorr==button.text:
		button.modulate = color_cer
		cont+=1
	elif quiz.itens[index].numcorr!=button.text:
		button.modulate = color_err
	await get_tree().create_timer(1).timeout
	singg.mat=0
	for bt in buttons:
		bt.modulate = Color.WHITE
		bt.disconnect("pressed",butt_clicado)
	index+=1
	load_quiz()
func _on_button_pressed():
	question.visible=false
	Transition.anim()
	get_tree().paused=false
	Transition.patch="res://menu.tscn"
