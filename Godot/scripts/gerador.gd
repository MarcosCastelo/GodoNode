extends Position2D

onready var cano = preload("res://scenes/cano.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	var novocano = cano.instance()
	novocano.position = position + Vector2(0, rand_range(-500, 500))
	get_owner().add_child(novocano)