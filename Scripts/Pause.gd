 extends Control

onready var _transition_rect := $"../SceneTransitionRect"

func _input(event):
	if event.is_action_pressed("pause") :
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state


func _on_Resume_pressed():
	var new_pause_state = not get_tree().paused
	get_tree().paused = new_pause_state
	visible = new_pause_state


func _on_Menu_pressed():
	_transition_rect.transition_to("res://Scenes/MainMenu.tscn")
	var new_pause_state = not get_tree().paused
	get_tree().paused = new_pause_state
	visible = new_pause_state
