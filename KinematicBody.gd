extends KinematicBody
var velocidade = Vector3.ZERO
var gravidade = 2

func _ready():
	pass 
	
func _physics_process(delta):
	velocidade.z = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocidade.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocidade.y -= gravidade*delta
	move_and_slide(velocidade*25)
