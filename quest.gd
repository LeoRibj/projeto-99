extends Node
@export var quiz=preload("res://quest/temas/temavariado.tres")
@onready var color_rect = $content/ColorRect
@export var color_cer:Color
@export var color_err:Color
var buttons :Array[Button]
@onready var quest:Label= $content/question/PanelContainer/question
@onready var question = $"."
var cont:int
@onready var button = $Button
var tema
var respondido=false
func _process(delta):
	if singg.plataforma and singg.question == 0:
		question.visible=false
	if singg.plataforma and singg.question == 1:
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
	if singg.tema == 1:
		quiz=preload("res://quest/temas/temavariado.tres")
	elif singg.tema==2:
		quiz= preload("res://quest/temas/tema2.tres")
	elif singg.tema==3:
		quiz=preload("res://quest/temas/tema3.tres")
	
	load_quiz()
	
	
func load_quiz()->void:
	index=singg.snindex
	if index >= quiz.theme.size():
		question.visible=false
		singg.level="voce acertou "+str(cont)+" perguntas"
		Transition.level()
		Transition.patch="res://menu.tscn"
		return
	quest.text = quiz.theme[index].question_info
	for i in buttons.size():
		buttons[i].text= quiz.theme[index].options[i]
		buttons[i].pressed.connect(butt_clicado.bind(buttons[i]))

func butt_clicado(button)->void:
	if quiz.theme[index].correct==button.text:
		button.modulate = color_cer
		cont+=1
		singg.mana+=10
	elif quiz.theme[index].correct!=button.text:
		button.modulate = color_err
	await get_tree().create_timer(1).timeout
	singg.question=0
	singg.points+=10
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
