extends CenterContainer

@onready var timer = $Timer
@onready var label = $Control/Label


func _on_button_pressed():
	timer.start()

func _getTimeLeft() -> String:
	var timeLeft = timer.time_left
	var minutes = floor(timeLeft / 60)
	var seconds = int(timeLeft) % 60
	return "%02d:%02d" % [minutes, seconds]

func _process(delta):
	label.text = _getTimeLeft()
