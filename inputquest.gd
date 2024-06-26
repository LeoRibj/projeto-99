extends Control
var pergunta:int
@onready var label = $Label4
@onready var line_editop = $HBoxContainer2/LineEdit
@onready var line_edit_2 = $HBoxContainer2/LineEdit2
@onready var line_edit_3 = $HBoxContainer2/LineEdit3
@onready var line_edit_4 = $HBoxContainer2/LineEdit4
@onready var line_edit = $HBoxContainer/LineEdit
@onready var line_editres = $HBoxContainer3/LineEdit
var pergunta1=preload("res://quest/perguntas/pergunta1.tema1.tres")
var pergunta2=preload("res://quest/perguntas/pergunta2.tres")
var pergunta3=preload("res://quest/perguntas/pergunta3.tres")
var pergunta4=preload("res://quest/perguntas/pergunta4.tres")
var pergunta5=preload("res://quest/perguntas/pergunta5.tres")
var pergunta6=preload("res://quest/perguntas/pergunta6.tres")
var pergunta7=preload("res://quest/perguntas/pergunta7.tres")
var pergunta8=preload("res://quest/perguntas/pergunta8.tres")
var pergunta9=preload("res://quest/perguntas/pergunta9.tres")
var pergunta10=preload("res://quest/perguntas/pergunta10.tres")
var pergunta11=preload("res://quest/perguntas/pergunta11.tres")
var pergunta12=preload("res://quest/perguntas/pergunta12.tres")
var pergunta13=preload("res://quest/perguntas/pergunta13.tres")
var pergunta14=preload("res://quest/perguntas/pergunta14.tres")
var pergunta15=preload("res://quest/perguntas/pergunta15.tres")
var pergunta16=preload("res://quest/perguntas/pergunta16.tres")
var pergunta17=preload("res://quest/perguntas/pergunta17.tres")
var pergunta18=preload("res://quest/perguntas/pergunta18.tres")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if pergunta==0:
		label.text=str("Tema "+singg.tem)
	elif pergunta==6:
		label.text=str("Tema "+singg.tem2)
	elif pergunta==12:
		label.text=str("Tema "+singg.tem3)

func _on_button_pressed():
	Transition.anim()
	Transition.patch="res://menu.tscn"


func _on_button_2_pressed():
	pergunta+=1
	line_edit.clear()
	line_edit_2.clear()
	line_edit_3.clear()
	line_edit_4.clear()
	line_editop.clear()
	line_editres.clear()
	if pergunta==18:
		Transition.anim()
		Transition.patch="res://input_math.tscn"
func _on_line_edit_text_submitted(new_text):
	line_edit.release_focus()
	if pergunta==0:
		pergunta1.question_info=new_text
	if pergunta==1:
		pergunta2.question_info=new_text
	if pergunta==2:
		pergunta3.question_info=new_text
	if pergunta==3:
		pergunta4.question_info=new_text
	if pergunta==4:
		pergunta5.question_info=new_text
	if pergunta==5:
		pergunta6.question_info=new_text
	if pergunta==6:
		pergunta7.question_info=new_text
	if pergunta==7:
		pergunta8.question_info=new_text
	if pergunta==8:
		pergunta9.question_info=new_text
	if pergunta==9:
		pergunta10.question_info=new_text
	if pergunta==10:
		pergunta11.question_info=new_text
	if pergunta==11:
		pergunta12.question_info=new_text
	if pergunta==12:
		pergunta13.question_info=new_text
	if pergunta==13:
		pergunta14.question_info=new_text
	if pergunta==14:
		pergunta15.question_info=new_text
	if pergunta==15:
		pergunta16.question_info=new_text
	if pergunta==16:
		pergunta17.question_info=new_text
	if pergunta==17:
		pergunta18.question_info=new_text
		


func _on_line_editop_text_submitted(new_text):
	line_editop.release_focus()
	if pergunta==0:
		pergunta1.options[0]=(new_text)
	if pergunta==1:
		pergunta2.options[0]=(new_text)
	if pergunta==2:
		pergunta3.options[0]=(new_text)
	if pergunta==3:
		pergunta4.options[0]=(new_text)
	if pergunta==4:
		pergunta5.options[0]=(new_text)
	if pergunta==5:
		pergunta6.options[0]=(new_text)
	if pergunta==6:
		pergunta7.options[0]=(new_text)
	if pergunta==7:
		pergunta8.options[0]=(new_text)
	if pergunta==8:
		pergunta9.options[0]=(new_text)
	if pergunta==9:
		pergunta10.options[0]=(new_text)
	if pergunta==10:
		pergunta11.options[0]=(new_text)
	if pergunta==11:
		pergunta12.options[0]=(new_text)
	if pergunta==12:
		pergunta13.options[0]=(new_text)
	if pergunta==13:
		pergunta14.options[0]=(new_text)
	if pergunta==14:
		pergunta15.options[0]=(new_text)
	if pergunta==15:
		pergunta16.options[0]=(new_text)
	if pergunta==16:
		pergunta17.options[0]=(new_text)
	if pergunta==17:
		pergunta18.options[0]=(new_text)


func _on_line_edit_2_text_submitted(new_text):
	line_edit_2.release_focus()
	if pergunta==0:
		pergunta1.options[1]=(new_text)
	if pergunta==1:
		pergunta2.options[1]=(new_text)
	if pergunta==2:
		pergunta3.options[1]=(new_text)
	if pergunta==3:
		pergunta4.options[1]=(new_text)
	if pergunta==4:
		pergunta5.options[1]=(new_text)
	if pergunta==5:
		pergunta6.options[1]=(new_text)
	if pergunta==6:
		pergunta7.options[1]=(new_text)
	if pergunta==7:
		pergunta8.options[1]=(new_text)
	if pergunta==8:
		pergunta9.options[1]=(new_text)
	if pergunta==9:
		pergunta10.options[1]=(new_text)
	if pergunta==10:
		pergunta11.options[1]=(new_text)
	if pergunta==11:
		pergunta12.options[1]=(new_text)
	if pergunta==12:
		pergunta13.options[1]=(new_text)
	if pergunta==13:
		pergunta14.options[1]=(new_text)
	if pergunta==14:
		pergunta15.options[1]=(new_text)
	if pergunta==15:
		pergunta16.options[1]=(new_text)
	if pergunta==16:
		pergunta17.options[1]=(new_text)
	if pergunta==17:
		pergunta18.options[1]=(new_text)


func _on_line_edit_3_text_submitted(new_text):
	line_edit_3.release_focus()
	if pergunta==0:
		pergunta1.options[2]=(new_text)
	if pergunta==1:
		pergunta2.options[2]=(new_text)
	if pergunta==2:
		pergunta3.options[2]=(new_text)
	if pergunta==3:
		pergunta4.options[2]=(new_text)
	if pergunta==4:
		pergunta5.options[2]=(new_text)
	if pergunta==5:
		pergunta6.options[2]=(new_text)
	if pergunta==6:
		pergunta7.options[2]=(new_text)
	if pergunta==7:
		pergunta8.options[2]=(new_text)
	if pergunta==8:
		pergunta9.options[2]=(new_text)
	if pergunta==9:
		pergunta10.options[2]=(new_text)
	if pergunta==10:
		pergunta11.options[2]=(new_text)
	if pergunta==11:
		pergunta12.options[2]=(new_text)
	if pergunta==12:
		pergunta13.options[2]=(new_text)
	if pergunta==13:
		pergunta14.options[2]=(new_text)
	if pergunta==14:
		pergunta15.options[2]=(new_text)
	if pergunta==15:
		pergunta16.options[2]=(new_text)
	if pergunta==16:
		pergunta17.options[2]=(new_text)
	if pergunta==17:
		pergunta18.options[2]=(new_text)


func pergunta_certa_text_submitted(new_text):
	line_editres.release_focus()
	if pergunta==0:
		pergunta1.correct=new_text
	if pergunta==1:
		pergunta2.correct=new_text
	if pergunta==2:
		pergunta3.correct=new_text
	if pergunta==3:
		pergunta4.correct=new_text
	if pergunta==4:
		pergunta5.correct=new_text
	if pergunta==5:
		pergunta6.correct=new_text
	if pergunta==6:
		pergunta7.correct=new_text
	if pergunta==7:
		pergunta8.correct=new_text
	if pergunta==8:
		pergunta9.correct=new_text
	if pergunta==9:
		pergunta10.correct=new_text
	if pergunta==10:
		pergunta11.correct=new_text
	if pergunta==11:
		pergunta12.correct=new_text
	if pergunta==12:
		pergunta13.correct=new_text
	if pergunta==13:
		pergunta14.correct=new_text
	if pergunta==14:
		pergunta15.correct=new_text
	if pergunta==15:
		pergunta16.correct=new_text
	if pergunta==16:
		pergunta17.correct=new_text
	if pergunta==17:
		pergunta18.correct=new_text


func _on_line_edit_4_text_submitted(new_text):
	line_edit_4.release_focus()
	if pergunta==0:
		pergunta1.options[3]=(new_text)
	if pergunta==1:
		pergunta2.options[3]=(new_text)
	if pergunta==2:
		pergunta3.options[3]=(new_text)
	if pergunta==3:
		pergunta4.options[3]=(new_text)
	if pergunta==4:
		pergunta5.options[3]=(new_text)
	if pergunta==5:
		pergunta6.options[3]=(new_text)
	if pergunta==6:
		pergunta7.options[3]=(new_text)
	if pergunta==7:
		pergunta8.options[3]=(new_text)
	if pergunta==8:
		pergunta9.options[3]=(new_text)
	if pergunta==9:
		pergunta10.options[3]=(new_text)
	if pergunta==10:
		pergunta11.options[3]=(new_text)
	if pergunta==11:
		pergunta12.options[3]=(new_text)
	if pergunta==12:
		pergunta13.options[3]=(new_text)
	if pergunta==13:
		pergunta14.options[3]=(new_text)
	if pergunta==14:
		pergunta15.options[3]=(new_text)
	if pergunta==15:
		pergunta16.options[3]=(new_text)
	if pergunta==16:
		pergunta17.options[3]=(new_text)
	if pergunta==17:
		pergunta18.options[3]=(new_text)
