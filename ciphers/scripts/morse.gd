extends TextEdit

var alpha_to_morse = {
".-": "A", "-...": "B", "-.-.": "C", "-..": "D", ".": "E", "..-.": "F",
"--.": "G", "....": "H", "..": "I", ".---": "J", "-.-": "K",
".-..": "L", "--": "M", "-.": "N", "---": "O", ".--.": "P",
"--.-": "Q", ".-.": "R", "...": "S", "-": "T", "..-": "U",
"...-": "V", ".--": "W", "-..-": "X", "-.--": "Y", "--..": "Z",
"-----": "0", ".----": "1", "..---": "2", "...--": "3", "....-": "4",
".....": "5", "-....": "6", "--...": "7", "---..": "8", "----.": "9"
}

func _process(_delta: float) -> void:
	var input = Global.input.split(" ",false)
	var output = ""
	for morse in input:
		if alpha_to_morse.has(morse):
			output += alpha_to_morse.get(morse)
		else:
			output += morse
	self.text = output
