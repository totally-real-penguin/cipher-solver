extends HBoxContainer

var alphabet : Array = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split()

func _process(delta: float) -> void:
	var a: int
	var b: int
	var key_alpha = []
	var output = ""
	
	if $VBox/A.text.is_valid_int():
		a = int($VBox/A.text)
	else:
		a = 1
	if $VBox/B.text.is_valid_int():
		b = int($VBox/B.text)
	else:
		b = 0
	
	for i in range(0,26):
		key_alpha.append(alphabet[((i*a)+b) % 26])
	
	for char in Global.input:
		if char.to_upper() in alphabet:
			output += alphabet[key_alpha.find(char.to_upper())]
		else:
			output += char
	$Output.text = output
