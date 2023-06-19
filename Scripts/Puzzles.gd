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

func _ready():
	for i in grid_height: #puzzle1
		puz1.append([])
		for j in grid_width:
			puz1[i].append(1) # Set a starter value for each position
	for i in grid_height:  #puzzle2
		puz2.append([])
		for j in grid_width:
			puz2[i].append(4)
	for i in range(3):   #puzzle3
		puz3.append([])
		for j in grid_width:
			puz3[i].append(2)
	for i in range(3):
		puz3.append([])
		for j in grid_width:
			puz3[i+3].append(3)
	for i in grid_height:   #puzzle4
		puz4.append([])
		for j in range(2):
			puz4[i].append(2)
		for j in range(3):
			puz4[i].append(4)
	for i in grid_height:  #puzzle5
		puz5.append([])
		for j in range(2):
			puz5[i].append(3)
		puz5[i].append(1)
		for j in range(2):
			puz5[i].append(3)
	for i in range(2):  #puzzle6
		puz6.append([])
		for j in grid_width:
			puz6[i].append(1)
	for i in range(2):
		puz6.append([])
		for j in grid_width:
			puz6[i+2].append(2)
	for i in range(2):
		puz6.append([])
		for j in grid_width:
			puz6[i+4].append(4)
	for i in range(3):    #puzzle7
		puz7.append([])
		for j in grid_width:
			puz7[i].append(2)
	puz7.append([])
	for j in range(2):
		puz7[3].append(2)
	puz7[3].append(3)
	for j in range(2):
		puz7[3].append(2)
	for i in range(2):
		puz7.append([])
		for j in grid_width:
			puz7[i+4].append(2)
	for i in range(4):   #puzzle8
		puz8.append([])
		for j in grid_width:
			puz8[i].append(i+1)
	for i in range(2):
		puz8.append([])
		for j in grid_width:
			puz8[i+4].append(i+1)
	
	puzzez.append(puz1)
	puzzez.append(puz2)
	puzzez.append(puz3)
	puzzez.append(puz4)
	puzzez.append(puz5)
	puzzez.append(puz6)
	puzzez.append(puz7)
	puzzez.append(puz8)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _getpattern():
	puznum += 1
	return puzzez[puznum]
