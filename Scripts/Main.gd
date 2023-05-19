extends Node

@export var mob_scene: PackedScene
var score


func game_over():
	$"Score Timer".stop()


func new_game():
	score = 0
	$Fish.start($"Start Position".position)
	$"Start Timer".start()
