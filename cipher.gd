extends Control

const ceaser = preload("res://ciphers/scenes/ceaser.tscn")
const tapcode = preload("res://ciphers/scenes/tap_code.tscn")
const substitution = preload("res://ciphers/scenes/substitution.tscn")
const vigenere = preload("res://ciphers/scenes/vigenere.tscn")
const morse = preload("res://ciphers/scenes/morse.tscn")
const affine = preload("res://ciphers/scenes/affine.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	Global.input = $Center/VBox/Input.text

func _on_cipher_options_item_selected(index: int) -> void:
	if %Cipher.get_child_count() != 0:
		%Cipher.get_child(0).queue_free()
		
	match  $CipherOptions.get_item_text(index):
		"Ceaser": %Cipher.add_child(ceaser.instantiate())
		"Tap code": %Cipher.add_child(tapcode.instantiate())
		"Substitution": %Cipher.add_child(substitution.instantiate())
		"Vigenere": %Cipher.add_child(vigenere.instantiate())
		"Morse": %Cipher.add_child(morse.instantiate())
		"Affine": %Cipher.add_child(affine.instantiate())
