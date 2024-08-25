extends Area2D

var dialogue = {
	1: "Какой-то текст",
	2: "Второй текст",
	3: "[b]Жирный текст[/b]"
}

var dialogur_idx := 1

func _on_body_entered(_body: Node2D) -> void:
	Events.open_dialogue.emit()
	var text = dialogue.get(dialogur_idx)
	Events.update_dialogue_text.emit(text)

func _unhandled_key_input(_event: InputEvent) -> void:
	if !Input.is_action_just_pressed("continue_text"):
		return
	if dialogue.size() > dialogur_idx:
		dialogur_idx += 1
		var text = dialogue.get(dialogur_idx)
		Events.update_dialogue_text.emit(text)
	elif dialogue.size() == dialogur_idx:
		Events.close_dialogue.emit()
