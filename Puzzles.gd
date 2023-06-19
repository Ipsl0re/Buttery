extends Node

var puznum = -1
var puzzez = []

var puz1 = []
var grid_width = 5
var grid_height = 6

var puz2 = []
var puz3 = []
var puz4 = []
var puz5 = []
var puz6 = []
var puz7 = []
var puz8 = []
var puz9 = []
var puz10 = []

func _ready():
	for i in grid_height:
		puz1.append([])
		for j in grid_width:
			puz1[i].append(1) # Set a starter value for each position
	for i in grid_height:
		puz2.append([])
		for j in grid_width:
			puz2[i].append(4)
	for i in range(3):
		puz3.append([])
		for j in grid_width:
			puz3[i].append(2)
	for i in range(3):
		puz3.append([])
		for j in grid_width:
			puz3[i+3].append(3)
	puzzez.append(puz1)
	puzzez.append(puz2)
	puzzez.append(puz3)
	puzzez.append(puz4)
	puzzez.append(puz5)
	puzzez.append(puz6)
	puzzez.append(puz7)
	puzzez.append(puz8)
	puzzez.append(puz9)
	puzzez.append(puz10)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _getpattern():
	puznum += 1
	return puzzez[puznum]
