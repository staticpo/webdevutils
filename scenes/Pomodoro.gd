extends CenterContainer

@onready var timerWork = $TimerWork
@onready var timerRest = $TimerRest
@onready var label = $Control/Label


func _on_start_button_pressed():
	timerWork.start()

func _getTimeLeft() -> String:
	var timeLeft = timerWork.time_left if timerRest.is_stopped() else timerRest.time_left
	var minutes = floor(timeLeft / 60)
	var seconds = int(timeLeft) % 60
	return "%02d:%02d" % [minutes, seconds]

func _process(delta):
	if !timerRest.is_stopped() || !timerWork.is_stopped():
		label.text = _getTimeLeft()


func _on_stop_button_pressed():
	timerRest.stop()
	timerWork.stop()
	label.text = "00:00"

func _on_timer_rest_timeout():
	timerWork.start()

func _on_timer_work_timeout():
	timerRest.start()
