extends RichTextLabel

func _ready() -> void:
	Events.update_dialogue_text.connect(update_text)
	Events.open_dialogue.connect(func(): show())
	Events.close_dialogue.connect(func(): hide())

func update_text(new_text: String) -> void:
	text = new_text
