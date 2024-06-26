extends Control
@onready var line_edit = $Label/HBoxContainer/LineEdit
@onready var line_edit_3 = $Label/HBoxContainer/LineEdit3
@onready var line_edit_2 = $Label/HBoxContainer/LineEdit2



func _on_line_edit_text_submitted(new_text):
	singg.tem=new_text
	line_edit.release_focus()
func _on_line_edit_2_text_submitted(new_text):
	singg.tem3=new_text
	line_edit_2.release_focus()
		
func _on_line_edit_3_text_submitted(new_text):
	singg.tem2=new_text
	line_edit_3.release_focus()
func _on_button_pressed():
	Transition.anim()
	Transition.patch="res://menu.tscn"
