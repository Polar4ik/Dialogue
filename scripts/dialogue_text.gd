extends RichTextLabel

func _ready() -> void:
	Events.update_dialogue_text.connect(update_text)


func update_text(new_text: String) -> void:
	text = new_text
