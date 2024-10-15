extends VBoxContainer

var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:

	var output = ""
	var keyword = $HBox/Keyword.text
	var key_index = 0

	if keyword != "":
		for char in Global.input:
			if key_index == len(keyword):
				key_index = 0
			var is_lower = false
			if char.to_upper() in alphabet and char not in alphabet:
				is_lower = true
			if char.to_upper() in alphabet:
				var num = alphabet.find(char.to_upper()) + alphabet.find(Array(keyword.split())[key_index].to_upper())
				if num >= 26:
					num = num % 26
				if is_lower == true:
					output += alphabet[num].to_lower()
				else:
					output += alphabet[num]
				key_index += 1
			else:
				output += char
	$Output.text = output
