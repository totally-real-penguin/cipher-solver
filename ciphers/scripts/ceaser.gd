extends Control

var alphabet: Array = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split()


func _process(_delta: float) -> void:
	var shift: int
	if %Shift.text.is_valid_int():
		shift = int(%Shift.text)
	else:
		shift = 0
	
	var output = ""
	for char in Global.input:
		if char.to_upper() in alphabet:
			var new_index = alphabet.find(char.to_upper()) + shift
			new_index = new_index % 26
			output += alphabet[new_index]
		else:
			output += char
	$Output.text = output

func _on_minus_pressed() -> void:
	if %Shift.text.is_valid_int() == true:
		%Shift.text = str(int(%Shift.text)-1)
	else:
		%Shift.text = "-1"

func _on_plus_pressed() -> void:
	if %Shift.text.is_valid_int() == true:
		%Shift.text = str(int(%Shift.text)+1)
	else:
		%Shift.text = "1"
