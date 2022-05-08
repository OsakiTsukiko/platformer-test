extends Node

var player = preload("res://src/actors/Player.tscn")
var lvl = preload("res://src/levels/Level_1.tscn")

onready var cont = $Cont

func _ready():
	cont.add_child(lvl.instance())
	var player_instance = player.instance()
	player_instance.translate(Vector2(50, 50))
	cont.add_child(player_instance)
	pass

#func _input(event):
#	if event is InputEventMouseButton:
#		print("Mouse Click/Unclick at: ", event.position)
#		var player_instance = player.instance()
#		player_instance.translate(Vector2(event.position))
#		cont.add_child(player_instance)
