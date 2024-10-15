extends HBoxContainer


func _process(_delta: float) -> void:
	var input = Global.input
	var keyed = []
	var output = ""
	var double: bool = false
	for i in range(0,len(input)):
		if double == true:
			double = false
			continue
		if i != len(input)-1:
			if input[i].is_valid_int() == true and input[i+1].is_valid_int() == true:
				keyed.append(input[i]+input[i+1])
				double = true
			else:
				keyed.append(input[i])
		else:
			keyed.append(input[i])
	for key in keyed:
		if len(key) == 2:
			output += $Background/TapCode.get_child((int(key[1])-1) + (int(key[0])-1)*5).text
		else:
			output += key
	$Output.text = output
