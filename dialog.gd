extends CanvasLayer
var click=0
@onready var lab:Label=get_node("ColorRect3/dialogo")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	labl()
	if singg.dialog==1:
		visible=true
	elif  singg.dialog==0:
		visible=false	
		
func labl():
	if singg.click2==0:
		lab.text="Ola!! eu sou o ancião!"
	elif singg.click2==1:
		lab.text="Eu estou aqui para te ajudar ou atrapalhar!"
	elif singg.click2==2:
		lab.text="Sempre que me ver trarei comigo desafios!"
	elif singg.click2==3:
		lab.text="Se passar ganhara recompensas!"
	elif singg.click2==4:
		lab.text="Mas se errar coisas ruins acontecerão!"
	elif singg.click2==5:
		singg.dialog=0
		if singg.tipojogo==2:
			singg.question=1
		if singg.tipojogo==1:
			singg.mat=1
		singg.click2+=1
	elif singg.click2==6:
		lab.text="boa sorte nessa tentativa"
	elif singg.click2==7:
		singg.dialog=0
		if singg.tipojogo==2:
			singg.question=1
		if singg.tipojogo==1:
			singg.mat=1
		singg.click2+=1
	elif singg.click2==8:
		lab.text="boa sorte nessa tentativa"
	elif singg.click2==9:
		singg.dialog=0
		if singg.tipojogo==2:
			singg.question=1
		if singg.tipojogo==1:
			singg.mat=1
		singg.click2+=1
	elif singg.click2==10:
		lab.text="boa sorte nessa tentativa"
	elif singg.click2==11:
		singg.dialog=0
		if singg.tipojogo==2:
			singg.question=1
		if singg.tipojogo==1:
			singg.mat=1
		singg.click2+=1
func _on_button_pressed():
	singg.click2+=1
