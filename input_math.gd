extends Control
var cont: int
var pergunta=preload("res://match/pergunta/pergunta1.tres")
var pergunta2=preload("res://match/pergunta/pergunta2.tres")
var pergunta3=preload("res://match/pergunta/pergunta3.tres")
var pergunta4=preload("res://match/pergunta/pergunta4.tres")
var pergunta5=preload("res://match/pergunta/pergunta5.tres")
var pergunta6=preload("res://match/pergunta/pergunta6.tres")
var pergunta7=preload("res://match/pergunta/pergunta7.tres")
var pergunta8=preload("res://match/pergunta/pergunta8.tres")
var pergunta9=preload("res://match/pergunta/pergunta9.tres")
var pergunta10=preload("res://match/pergunta/pergunta10.tres")
var pergunta11=preload("res://match/pergunta/pergunta11.tres")
var pergunta12=preload("res://match/pergunta/pergunta12.tres")
@onready var line_edit_3 = $VBoxContainer/LineEdit3
@onready var line_edit_2 = $VBoxContainer/LineEdit2
@onready var file_dialog = $FileDialog
var imagennum:int
func _on_line_edit_3_text_submitted(new_text):
	line_edit_3.release_focus()
	if cont==0:
		pergunta.question=new_text
	if cont==1:
		pergunta2.question=new_text
	if cont==2:
		pergunta3.question=new_text
	if cont==3:
		pergunta4.question=new_text
	if cont==4:
		pergunta5.question=new_text
	if cont==5:
		pergunta6.question=new_text
	if cont==6:
		pergunta7.question=new_text
	if cont==7:
		pergunta8.question=new_text
	if cont==8:
		pergunta9.question=new_text
	if cont==9:
		pergunta10.question=new_text
	if cont==10:
		pergunta11.question=new_text
	if cont==11:
		pergunta12.question=new_text

func _on_button_pressed():
	line_edit_3.clear()
	cont+=1
	if cont==12:
		Transition.anim()
		Transition.patch="res://menu.tscn"

func _on_file_dialog_file_selected(path):
	var image = Image.new()
	image.load(path)
	var texture=ImageTexture.new()
	texture.set_image(image)
	if cont==0:
		if imagennum==1:
			pergunta.imaggens=texture
		if imagennum==2:
			pergunta.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta.imagens_SELECT[3]=texture
	elif cont==1:
		if imagennum==1:
			pergunta2.imaggens=texture
		if imagennum==2:
			pergunta2.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta2.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta2.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta2.imagens_SELECT[3]=texture
	elif cont==2:
		if imagennum==1:
			pergunta3.imaggens=texture
		if imagennum==2:
			pergunta3.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta3.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta3.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta3.imagens_SELECT[3]=texture
	elif cont==3:
		if imagennum==1:
			pergunta4.imaggens=texture
		if imagennum==2:
			pergunta4.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta4.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta4.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta4.imagens_SELECT[3]=texture
	elif cont==4:
		if imagennum==1:
			pergunta5.imaggens=texture
		if imagennum==2:
			pergunta5.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta5.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta5.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta5.imagens_SELECT[3]=texture
	elif cont==5:
		if imagennum==1:
			pergunta6.imaggens=texture
		if imagennum==2:
			pergunta6.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta6.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta6.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta6.imagens_SELECT[3]=texture
	elif cont==6:
		if imagennum==1:
			pergunta7.imaggens=texture
		if imagennum==2:
			pergunta7.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta7.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta7.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta7.imagens_SELECT[3]=texture
	elif cont==7:
		if imagennum==1:
			pergunta8.imaggens=texture
		if imagennum==2:
			pergunta8.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta8.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta8.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta8.imagens_SELECT[3]=texture
	elif cont==8:
		if imagennum==1:
			pergunta9.imaggens=texture
		if imagennum==2:
			pergunta9.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta9.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta9.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta9.imagens_SELECT[3]=texture
	elif cont==9:
		if imagennum==1:
			pergunta10.imaggens=texture
		if imagennum==2:
			pergunta10.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta10.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta10.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta10.imagens_SELECT[3]=texture
	elif cont==10:
		if imagennum==1:
			pergunta11.imaggens=texture
		if imagennum==2:
			pergunta11.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta11.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta11.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta11.imagens_SELECT[3]=texture
	elif cont==11:
		if imagennum==1:
			pergunta12.imaggens=texture
		if imagennum==2:
			pergunta12.imagens_SELECT[0]=texture
		if imagennum==3:
			pergunta12.imagens_SELECT[1]=texture
		if imagennum==4:
			pergunta12.imagens_SELECT[2]=texture
		if imagennum==5:
			pergunta12.imagens_SELECT[3]=texture

func _on_line_edit_pressed():
	file_dialog.popup_centered()
	imagennum=1
	file_dialog.current_dir="/"


func _on_imagens_pressed():
	file_dialog.popup_centered()
	imagennum=2
	file_dialog.current_dir="/"


func _on_imagens_2_pressed():
	file_dialog.popup_centered()
	imagennum=3
	file_dialog.current_dir="/"

func _on_imagens_3_pressed():
	file_dialog.popup_centered()
	imagennum=4
	file_dialog.current_dir="/"

func _on_imagens_4_pressed():
	file_dialog.popup_centered()
	imagennum=5
	file_dialog.current_dir="/"

func _on_line_edit_2_text_submitted(new_text):
	line_edit_2.release_focus()
	if cont==0:
		pergunta.numcorr=new_text
	if cont==1:
		pergunta2.numcorr=new_text
	if cont==2:
		pergunta3.numcorr=new_text
	if cont==3:
		pergunta4.numcorr=new_text
	if cont==4:
		pergunta5.numcorr=new_text
	if cont==5:
		pergunta6.numcorr=new_text
	if cont==6:
		pergunta7.numcorr=new_text
	if cont==7:
		pergunta8.numcorr=new_text
	if cont==8:
		pergunta9.numcorr=new_text
	if cont==9:
		pergunta10.numcorr=new_text
	if cont==10:
		pergunta11.question=new_text
	if cont==11:
		pergunta12.numcorr=new_text
