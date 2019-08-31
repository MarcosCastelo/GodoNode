extends Node2D

export var vel = -400

var cena

func _ready():
	cena = get_tree().get_current_scene()
	set_process(true)
	
func _process(delta):
	if cena.estado == cena.JOGANDO:
		position = position + Vector2(vel * delta, 0)
	
	if position.x < -100:
		print("Destruido!")
		queue_free()



func _on_Ponto_body_entered( body ):
	print("Passou")
	print("pontuamos")
	cena.pontuar()


func _on_Area2D_body_entered(body):
	print("Bateu")
	if body.get_name() == "Felpudo":
		cena.kill()