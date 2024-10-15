extends VBoxContainer

var ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split()

func _process(_delta: float) -> void:
	var output = ""
	for char in Global.input:
		if char.to_upper() in ALPHABET:
			if $Substitution.get_child(ALPHABET.find(char.to_upper())).text != "":
				output += $Substitution.get_child(ALPHABET.find(char.to_upper())).text.to_lower()
			else:
				output += char.to_upper()
		else:
			output += char.to_upper()
	$Output.text = output
